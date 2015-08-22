#include "ioCCxx10_bitdef.h"
#include <cc1110.h>
#include "medtronicRF.h"
#include "crc_4b6b.h"
#include "constants.h"
#include "globals.h"
#include "usb/class_cdc/usb_uart.h"
#include "usb/others/hal_uart.h"
#include "txFilter.h"
#include "configuration.h"
#include "interrupts.h"
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>

// Globals
static __xdata uint8_t  rfMessage[128] = {0};
static __xdata size_t  rfLength = 0;

inline static void delay( uint16_t count ) {
    for( ; count>0; --count ) {
      /* Add NOP to avoid that the loop is optimized away */
      __asm__( "NOP" );
    }
}

void sendMedtronicMessage (uint8_t const * const message, size_t const length, uint8_t const repeat_count ) {
  encode_4b6b(message, length, rfMessage, &rfLength);
  PKTLEN = rfLength;

  stopTimerInt ();

  RFST = RFST_SIDLE;
	{
	  size_t j=0;
	  for (; j<repeat_count; j++) {
		RFST = RFST_STX;
		{
			size_t i=0;
			for(; i<rfLength; i++) {
			  while (!RFTXRXIF);
			  TCON &= 0xFD;
			  RFD = rfMessage[i];
			}
		}
		delay( 4096 );
	  }
	}
  PKTLEN = 0xFF;
  RFST = RFST_SIDLE;
  RFST = RFST_SRX;

  enableTimerInt ();
}

static bool check_crc8( uint8_t const message[], size_t crc_pos ) {
  return crc8( message, crc_pos ) == message[crc_pos];
}

static bool check_crc16( uint8_t const message[], size_t crc_pos ) {
  uint16_t const calcCRC16 = crc16(message,crc_pos);
  return ((uint8_t)(calcCRC16 & 0x00FF) == message[crc_pos+1]) && ((uint8_t)(calcCRC16 >> 8) == message[crc_pos]);
}


bool receiveMedtronicMessage (uint8_t message[], size_t * const length) {
    size_t i = 0;
	uint8_t lastData = 0xFF;

  RFST = RFST_SIDLE;
  RFST = RFST_SRX;
  PKTLEN = 0xFF;

  enableTimerInt();

	for( ; i<128 && lastData != 0x00; ++i ) {
	  while (!RFTXRXIF) {
		usbUartProcess();
		usbReceiveData();
		if (RFIF & 0x40) {
		  RFIF &= 0xBF;
		  lastData = 0xFF;
		  i = 0;
		  RFST = RFST_SIDLE;
		  RFST = RFST_SRX;
		  resetTimerCounter();
		}
	  }
	  stopTimerInt ();
	  rfMessage[i] = RFD;
	  lastData = rfMessage[i];
	  TCON &= ~0x02;
	}
  rfLength = i-1;
  RFST = RFST_SIDLE;

  //P1_1 = ~P1_1;

  decode_4b6b( rfMessage, rfLength, message, length );

  if( check_crc8( message, *length - 1 ) ) {
    return false;
  }

  if( check_crc16( message, *length -2 ) ) {
    return false;
  }

  if( check_crc8( message, *length - 2 ) ) {
    return false;
  }

  if( check_crc16( message, *length - 3 ) ) {
    return false;
  }

  return true;
}

void usbReceiveData (void) {
  uint8_t tempData[128] = { 0 };
  size_t uartRxIndex = 0;
  bool txCalcCRC8 = false;
  bool txCalcCRC16 = false;
  uint8_t txLength = 0;
  static uint8_t uartRxBuffer[SIZE_OF_UART_RX_BUFFER] = { 0 };
  uint8_t txTimes = 0;
  uint16_t nBytes = halUartGetNumRxBytes();
  size_t i = 0;

  for( i=0; i<nBytes; i=i+48) {
    uint16_t readBytes;
    if (nBytes-i > 48) {
      readBytes = 48;
    } else {
      readBytes = nBytes-i;
    }
    halUartRead( &tempData[i], readBytes);
    usbUartProcess();
  }



  for( i=0; i<nBytes; i++) {

    // Read Rx buffer
    uartRxBuffer[uartRxIndex] = tempData[i];

    switch( uartRxIndex ) {
    case 0: {
      switch( uartRxBuffer[0] ) {
      case 0x01:
        uartRxIndex++;
        txCalcCRC8   = false;
        txCalcCRC16 = false;
        enableTimerInt();
        break;
      case 0x81:
        uartRxIndex++;
        txCalcCRC8   = true;
        txCalcCRC16 = false;
        enableTimerInt();
        break;
      case 0xC1:
        uartRxIndex++;
        txCalcCRC8   = false;
        txCalcCRC16 = true;
        enableTimerInt();
        break;
      case 0x03:
      case 0x13:
        txFilterEnabled = true;
        P1_1 = 0;
        uartRxBuffer[0] = 0x03;
        halUartWrite(uartRxBuffer,1);
        break;
      case 0x00:
        uartRxBuffer[0] = _MMCOMMANDER_VERSION_ ;
        halUartWrite(uartRxBuffer,1);
        break;
      }
      break;
    }
    case 1: {
      txLength = uartRxBuffer[1];
      uartRxIndex++;
      resetTimerCounter();
      break;
    }
    case 2: {
      txTimes = uartRxBuffer[2];
      uartRxIndex++;
      resetTimerCounter();
      break;
    }
    default: {
      resetTimerCounter();
      if (uartRxIndex == (txLength + 2)) {
        stopTimerInt();
        if (txCalcCRC8 ) {
          uartRxBuffer[++uartRxIndex] = crc8(&uartRxBuffer[3], (size_t)(txLength));
          txLength++;
        }
        if (txCalcCRC16 ) {
          uint16_t const tmpCRC16 = crc16 (&uartRxBuffer[3],(size_t)(txLength));
          uartRxBuffer[++uartRxIndex] = (uint8_t)((tmpCRC16 >> 8) & 0x00FF);
          uartRxBuffer[++uartRxIndex] = (uint8_t)(tmpCRC16 & 0x00FF);
          txLength += 2;
        }

        if (txFilter(&uartRxBuffer[3],txLength) == 0) {
          sendMedtronicMessage(&uartRxBuffer[3],txLength,txTimes);
          halUartWrite( uartRxBuffer, 3 );
          uartRxIndex=0;
        } else {
          uartRxBuffer[1]=0x00;
          uartRxBuffer[2]=0x00;
          halUartWrite( uartRxBuffer, 3 );
          uartRxIndex=0;
        }
      } else {
        uartRxIndex++;
      }
      break;
    }
    }

  }
}

