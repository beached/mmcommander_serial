#include "common.h"
#include "hw/ioCCxx10_bitdef.h"
#include "hw/cc1110.h"
#include "medtronicRF.h"
#include "crc_4b6b.h"
#include "constants.h"
#include "globals.h"
#include "hw/hal_uart.h"
#include "txfilter.h"
#include "configuration.h"
#include "interrupts.h"
#include <stdint.h>

// Globals
static uint16_t __xdata rf_length;
static int16_t __xdata tx_calc_crc;
static int16_t __xdata tx_calc_crc16;
static int16_t __xdata tx_times;
static uint8_t __xdata tx_length;
static uint8_t __xdata rf_message[512];
static uint8_t __xdata last_data;

void send_medtronic_message( uint8_t *message, uint16_t length, int16_t times ) {
	int16_t i = 0;
	int16_t j = 0;

	encode_4b6b( message, length, rf_message, &rf_length );
	PKTLEN = rf_length;

	RFST = RFST_SIDLE;

	for( j = 0; j < times; j++ ) {
		RFST = RFST_STX;
		for( i = 0; i < rf_length; i++ ) {
			while( !RFTXRXIF ) { };
			TCON &= 0xFD;
			RFD = rf_message[i];
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

uint8_t receive_medtronic_message( uint8_t *message, uint16_t *length ) {
	uint16_t i = 0;
	uint16_t calc_crc16 = 0;
	uint8_t calc_crc = 0;

	RFST = RFST_SIDLE;
	RFST = RFST_SRX;

	PKTLEN = 0xFF;
	last_data = 0xFF;
	for( i = 0; i < 500 && last_data != 0; i++ ) {
		while( !RFTXRXIF ) {
			// TODO Add generic rx/tx uart code
			//usbUartProcess( );
			//usb_receive_data( );
		}
		rf_message[i] = RFD;
		last_data = rf_message[i];
		TCON &= ~0x02;
	}
	rf_length = i - 1;
	RFST = RFST_SIDLE;

	decode_4b6b( rf_message, rf_length, message, length );
	calc_crc = crc8( message, (*length) - 1 );

	if( calc_crc == message[(*length) - 1] ) {
		return 0;
	}

	calc_crc16 = crc16( message, (*length) - 2 );
	if( ((uint8_t)(calc_crc16 & 0x00FFu) == message[(*length) - 1]) &&
		((uint8_t)((calc_crc16 >> 8) & 0x00FFu) == message[(*length) - 2]) ) {
		return 0;
	}

	calc_crc = crc8( message, (*length) - 2 );

	if( calc_crc == message[(*length) - 2] ) {
		(*length) = (*length) - 1;
		return 0;
	}

	calc_crc16 = crc16( message, (*length) - 3 );
	if( ((uint8_t)(calc_crc16 & 0x00FFu) == message[(*length) - 2]) &&
		((uint8_t)((calc_crc16 >> 8) & 0x00FFu) == message[(*length) - 3]) ) {
		(*length) = (*length) - 1;
		return 0;
	}

	crc16_init( );
	return 1;
}
