#pragma once
/***********************************************************************************
  Filename:     hal_uart.h

  Description:  hal UART library header file

  ***********************************************************************************/

#ifdef __cplusplus
extern "C" {
#endif

	/***********************************************************************************
	* INCLUDES
	*/
#include "hal_types.h"

	/***********************************************************************************
	 * CONSTANTS AND DEFINES
	 */
	/* Serial Port Baudrate Settings */
#define HAL_UART_BAUDRATE_4800        0x01
#define HAL_UART_BAUDRATE_9600        0x02
#define HAL_UART_BAUDRATE_19200       0x03
#define HAL_UART_BAUDRATE_38400       0x04
#define HAL_UART_BAUDRATE_57600       0x05
#define HAL_UART_BAUDRATE_115200      0x06

	/* Stop Bits */
#define HAL_UART_ONE_STOP_BIT         0x01
#define HAL_UART_TWO_STOP_BITS        0x02

	/* Parity settings */
#define HAL_UART_NO_PARITY            0x04
#define HAL_UART_EVEN_PARITY          0x08
#define HAL_UART_ODD_PARITY           0x10

	/* Number of bits in data field */
#define HAL_UART_7_BIT_DATA           0x20
#define HAL_UART_8_BIT_DATA           0x40

	/***********************************************************************************
	 * GLOBAL FUNCTIONS
	 */
//	void hal_uart_init( uint8_t baudrate, uint8_t options );
//	uint16_t hal_uart_write( const uint8_t* buf, uint16_t length );
//	uint16_t hal_uart_read( uint8_t* buf, uint16_t length );
//	uint16_t hal_uart_get_num_rx_bytes( void );
//	void hal_uart_enable_rx_flow( uint8_t enable );

	void uart0_send(uint8_t const * const tx_buffer, uint16_t tx_buffer_len );
	void uart1_send(uint8_t const * const tx_buffer, uint16_t tx_buffer_len );
	void uart_map_port( uint8_t uart_port_alt, uint8_t uart_num );
	void uart0_init_bitrate( uint8_t uart_baud_m, uint8_t uart_baud_e );
	void uart1_init_bitrate( uint8_t uart_baud_m, uint8_t uart_baud_e );

	typedef struct {
		 uint8_t uartNum : 1; // UART peripheral number (0 or 1)
		 uint8_t START : 1; // Start bit level (low/high)
		 uint8_t STOP : 1; // Stop bit level (low/high)
		 uint8_t SPB : 1; // Stop bits (0 => 1, 1 => 2)
		 uint8_t PARITY : 1; // Parity control (enable/disable)
		 uint8_t BIT9 : 1; // 9 bit enable (8bit / 9bit)
		 uint8_t D9 : 1; // 9th bit level or Parity type
		 uint8_t FLOW : 1; // HW Flow Control (enable/disable)
		 uint8_t ORDER : 1; // Data bit order(LSB/MSB first)
	} UART_PROT_CONFIG;

	void uart_init_protocol( UART_PROT_CONFIG* uart_prot_config );
#ifdef  __cplusplus
}
#endif

/**********************************************************************************/



/***********************************************************************************
  Copyright 2007 Texas Instruments Incorporated. All rights reserved.

  IMPORTANT: Your use of this Software is limited to those specific rights
  granted under the terms of a software license agreement between the user
  who downloaded the software, his/her employer (which must be your employer)
  and Texas Instruments Incorporated (the "License").  You may not use this
  Software unless you agree to abide by the terms of the License. The License
  limits your use, and you acknowledge, that the Software may not be modified,
  copied or distributed unless embedded on a Texas Instruments microcontroller
  or used solely and exclusively in conjunction with a Texas Instruments radio
  frequency transceiver, which is integrated into your product.  Other than for
  the foregoing purpose, you may not use, reproduce, copy, prepare derivative
  works of, modify, distribute, perform, display or sell this Software and/or
  its documentation for any purpose.

  YOU FURTHER ACKNOWLEDGE AND AGREE THAT THE SOFTWARE AND DOCUMENTATION ARE
  PROVIDED “AS IS” WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
  INCLUDING WITHOUT LIMITATION, ANY WARRANTY OF MERCHANTABILITY, TITLE,
  NON-INFRINGEMENT AND FITNESS FOR A PARTICULAR PURPOSE. IN NO EVENT SHALL
  TEXAS INSTRUMENTS OR ITS LICENSORS BE LIABLE OR OBLIGATED UNDER CONTRACT,
  NEGLIGENCE, STRICT LIABILITY, CONTRIBUTION, BREACH OF WARRANTY, OR OTHER
  LEGAL EQUITABLE THEORY ANY DIRECT OR INDIRECT DAMAGES OR EXPENSES
  INCLUDING BUT NOT LIMITED TO ANY INCIDENTAL, SPECIAL, INDIRECT, PUNITIVE
  OR CONSEQUENTIAL DAMAGES, LOST PROFITS OR LOST DATA, COST OF PROCUREMENT
  OF SUBSTITUTE GOODS, TECHNOLOGY, SERVICES, OR ANY CLAIMS BY THIRD PARTIES
  (INCLUDING BUT NOT LIMITED TO ANY DEFENSE THEREOF), OR OTHER SIMILAR COSTS.

  Should you have any questions regarding your right to use this Software,
  contact Texas Instruments Incorporated at www.TI.com.
  ***********************************************************************************/
