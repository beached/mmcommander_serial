
/***********************************************************************************
Filename:     MMCommander.c

Description:  Medtronic-enabled USB interface

Version:      1
Revision:     86
Date:         Dec 24th, 2014

***********************************************************************************/

/***********************************************************************************
* INCLUDE
*/
#include "crc_4b6b.h"
#include "init.h"
#include "constants.h"
#include "interrupts.h"
#include "medtronicRF.h"
#include "usb/others/hal_board.h"
#include "usb/others/hal_uart.h"
#include "usb/class_cdc/usb_uart.h"
#include "configuration.h"
#include "algorithm.h"
#include <stdbool.h>
#include <string.h>

/******************************************************************************
* GLOBAL VARIABLES
*/


/******************************************************************************
* MAIN FUNCTION
*/

int main(void)
{
  static __xdata uint8_t  uartTxBuffer[SIZE_OF_UART_TX_BUFFER] = { 0 };
  static uint8_t dataPacket[256] = { 0 };
  static uint8_t repPacket[3] = { 0 };
  bool dataErr = false;
  //char i;
  bool repeatedMessage = false;
  size_t uartTxLength = 0;
  /* Configure system */
  configureIO();
  configureOsc();
  configureMedtronicRFMode();
  enablePushButtonInt();
  //halUartInit( HAL_UART_BAUDRATE_57600 );
  halUartInit( );

  /* Reception loop */
  while (true) {
    size_t dataLength = 0;
    dataErr = receiveMedtronicMessage(dataPacket, &dataLength);
    if (dataLength > 0) {
      repeatedMessage = false;
#if defined(_REPEATED_COMMAND_ENABLED_) && _REPEATED_COMMAND_ENABLED_ == 1
      if ((dataErr == ((uartTxBuffer[0]>>7) == 0x01)) && (dataLength == (uartTxLength-2)) ) {
        repeatedMessage = true;
        {
			size_t i=0;
			for (; i<dataLength; i++) {
			  if (dataPacket[i] != uartTxBuffer[i+2]) {
				repeatedMessage = false;
				break;
			  }
			}
        }
      }
#endif
      if (repeatedMessage ) {
        repPacket[0] = 0x04;
        halUartWrite(repPacket,1);
        usbUartProcess();
        usbReceiveData();
      } else {
        if(dataErr) {
          uartTxBuffer[0] = 0x82;
        } else {
          uartTxBuffer[0] = 0x02;
        }
        uartTxBuffer[1] = dataLength;
        memcpy( dataPacket, uartTxBuffer + 2, dataLength - 2 );

        uartTxLength = dataLength+2;
        {
        	size_t i=0;
			for (; i<uartTxLength; i=i+48) {
			  if (uartTxLength-i > 48) {
				halUartWrite( &uartTxBuffer[i], 48 );
				usbUartProcess();
				usbReceiveData();
			  } else {
				halUartWrite( &uartTxBuffer[i], uartTxLength-i );
			  }
			}
        }
      }
    }
  }
}

