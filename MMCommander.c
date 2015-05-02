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
#include "hw/hal_board.h"
#include "hw/hal_uart.h"
#include "configuration.h"

/******************************************************************************
* GLOBAL VARIABLES
*/

uint8_t __xdata uart_rx_buffer[SIZE_OF_UART_RX_BUFFER];
uint8_t __xdata uart_tx_buffer[SIZE_OF_UART_TX_BUFFER];
uint16_t __xdata uart_tx_length;
int16_t __xdata uart_tx_index;
int16_t __xdata uart_rx_index;

/******************************************************************************
* MAIN FUNCTION
*/

int main( void ) {
	uint8_t dataPacket[256];
	uint8_t repPacket[3];
	uint8_t dataErr = 0;
	uint16_t dataLength = 0;
	uint8_t i = 0;
	uint8_t repeatedMessage = 0;

	/* Configure system */
	init_globals( );
	configure_io( );
	configure_osc( );
	crc16Init( );
	configure_medtronic_rf_mode( );
	enable_push_button_int( );
	hal_uart_init( HAL_UART_BAUDRATE_57600, 0 );

	/* Reception loop */
	while( TRUE ) {
		dataErr = receive_medtronic_message( dataPacket, &dataLength );
		if( dataLength > 0 ) {
			repeatedMessage = 0;
			if( (_REPEATED_COMMAND_ENABLED_ == 1) &&
				(dataErr == ((uart_tx_buffer[0] >> 7) & 0x01)) &&
				(dataLength == (uart_tx_length - 2)) ) {
				repeatedMessage = 1;
				for( i = 0; i < dataLength; i++ ) {
					if( dataPacket[i] != uart_tx_buffer[i + 2] ) {
						repeatedMessage = 0;
						break;
					}
				}
			}

			if( repeatedMessage == 1 ) {
				repPacket[0] = 0x04;
				hal_uart_write( (uint8_t const *)repPacket, 1 );
				// TODO
				//usbUartProcess( );
				//usb_receive_data( );
			} else {
				if( dataErr == 0 ) {
					uart_tx_buffer[0] = 0x02;
				} else {
					uart_tx_buffer[0] = 0x82;
				}
				uart_tx_buffer[1] = dataLength;
				for( i = 0; i < dataLength; i++ ) uart_tx_buffer[i + 2] = dataPacket[i];
				uart_tx_length = dataLength + 2;
				for( i = 0; i < uart_tx_length; i = i + 48 ) {
					if( uart_tx_length - i > 48 ) {
						hal_uart_write( (uint8_t const *)&uart_tx_buffer[i], 48 );
						// TODO
						//usbUartProcess( );
						//usb_receive_data( );
					} else {
						hal_uart_write( (uint8_t const *)&uart_tx_buffer[i], uart_tx_length - i );
					}
				}
			}
		}
	}
}
