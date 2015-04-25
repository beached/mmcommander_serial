#include "common.h"
#include "hw/ioCCxx10_bitdef.h"
#include "hw/cc1110.h"
#include "medtronicRF.h"
#include "crc_4b6b.h"
#include "constants.h"
#include "globals.h"
#include "hw/hal_uart.h"
#include "txFilter.h"
#include "configuration.h"
#include "interrupts.h"
#include <stdint.h>

// Globals
static uint8_t __xdata rfMessage[512];
static uint16_t __xdata rfLength;
static int16_t __xdata txCalcCRC;
static int16_t __xdata txCalcCRC16;
static uint8_t __xdata txLength;
static int16_t __xdata txTimes;
static uint8_t __xdata lastData;

void sendMedtronicMessage( uint8_t *message, uint16_t length, int16_t times ) {
	int16_t i = 0;
	int16_t j = 0;

	encode4b6b( message, length, rfMessage, &rfLength );
	PKTLEN = rfLength;

	RFST = RFST_SIDLE;

	for( j = 0; j < times; j++ ) {
		RFST = RFST_STX;
		for( i = 0; i < rfLength; i++ ) {
			while( !RFTXRXIF ) { };
			TCON &= 0xFD;
			RFD = rfMessage[i];
		}

		i = 4096;
		/* Add NOP to avoid that the loop is optimized away */
		while( --i ) {
				Nop( );
		}
	}

	PKTLEN = 0xFF;
	RFST = RFST_SIDLE;
	RFST = RFST_SRX;
}

uint8_t receiveMedtronicMessage( uint8_t *message, uint16_t *length ) {
	uint16_t i = 0;
	uint8_t calcCRC = 0;
	uint16_t calcCRC16 = 0;

	RFST = RFST_SIDLE;
	RFST = RFST_SRX;

	PKTLEN = 0xFF;
	lastData = 0xFF;
	for( i = 0; i < 500 && lastData != 0x00; i++ ) {
		while( !RFTXRXIF ) {
			// TODO Add generic rx/tx uart code
			//usbUartProcess( );
			//usbReceiveData( );
		}
		rfMessage[i] = RFD;
		lastData = rfMessage[i];
		TCON &= ~0x02;
	}
	rfLength = i - 1;
	RFST = RFST_SIDLE;

	decode4b6b( rfMessage, rfLength, message, length );
	calcCRC = crc8( message, (*length) - 1 );

	if( calcCRC == message[(*length) - 1] ) {
		return 0;
	}

	calcCRC16 = crc16( message, (*length) - 2 );
	if( ((uint8_t)(calcCRC16 & 0x00FFu) == message[(*length) - 1]) &&
		((uint8_t)((calcCRC16 >> 8) & 0x00FFu) == message[(*length) - 2]) ) {
		return 0;
	}

	calcCRC = crc8( message, (*length) - 2 );

	if( calcCRC == message[(*length) - 2] ) {
		(*length) = (*length) - 1;
		return 0;
	}

	calcCRC16 = crc16( message, (*length) - 3 );
	if( ((uint8_t)(calcCRC16 & 0x00FFu) == message[(*length) - 2]) &&
		((uint8_t)((calcCRC16 >> 8) & 0x00FFu) == message[(*length) - 3]) ) {
		(*length) = (*length) - 1;
		return 0;
	}

	crc16Init( );
	return 1;
}
