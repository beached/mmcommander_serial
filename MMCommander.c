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
	uint8_t data_packet[256];
	uint8_t rep_packet[3];
	uint8_t data_error = 0;
	uint8_t i = 0;
	uint8_t repeated_message = 0;
	uint16_t data_length = 0;

	/* Configure system */
	init_globals( );
	configure_io( );
	configure_osc( );
	crc16_init( );
	configure_medtronic_rf_mode( );
	enable_push_button_int( );
	// DAW TODO
	// hal_uart_init( HAL_UART_BAUDRATE_57600, 0 );

	/* Reception loop */
	while( TRUE ) {
		data_error = receive_medtronic_message( data_packet, &data_length );
		if( data_length > 0 ) {
			repeated_message = 0;
			if( (_REPEATED_COMMAND_ENABLED_ == 1) &&
				(data_error == ((uart_tx_buffer[0] >> 7) & 0x01)) &&
				(data_length == (uart_tx_length - 2)) ) {
				repeated_message = 1;
				for( i = 0; i < data_length; i++ ) {
					if( data_packet[i] != uart_tx_buffer[i + 2] ) {
						repeated_message = 0;
						break;
					}
				}
			}

			if( repeated_message == 1 ) {
				rep_packet[0] = 0x04;
				// DAW TODO
				// hal_uart_write( (uint8_t const *)rep_packet, 1 );
				// TODO
				//usbUartProcess( );
				//usb_receive_data( );
			} else {
				if( data_error == 0 ) {
					uart_tx_buffer[0] = 0x02;
				} else {
					uart_tx_buffer[0] = 0x82;
				}
				uart_tx_buffer[1] = data_length;
				for( i = 0; i < data_length; i++ ) uart_tx_buffer[i + 2] = data_packet[i];
				uart_tx_length = data_length + 2;
				for( i = 0; i < uart_tx_length; i = i + 48 ) {
					if( uart_tx_length - i > 48 ) {
						// DAW TODO
						// hal_uart_write( (uint8_t const *)&uart_tx_buffer[i], 48 );
						// TODO
						//usbUartProcess( );
						//usb_receive_data( );
					} else {
						// DAW TODO
						// hal_uart_write( (uint8_t const *)&uart_tx_buffer[i], uart_tx_length - i );
					}
				}
			}
		}
	}
}
