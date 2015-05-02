#include "hal_uart.h"
#include "hal_defs.h"
#include "cc1110.h"

void hal_uart_init( uint8_t baudrate, uint8_t options ) {
	// TODO
}

uint16_t hal_uart_write( const uint8_t* buf, uint16_t length ) {
	// TODO
	return 0;
}

uint16_t hal_uart_read( uint8_t* buf, uint16_t length ) {
	// TODO
	return 0;
}

uint16_t hal_uart_get_num_rx_bytes( void ) {
	// TODO
	return 0;
}

void hal_uart_enable_rx_flow( uint8_t enable ) {
	// TODO
}

void uart0_send( uint8_t* tx_buffer, uint16_t tx_buffer_len ) {
	uint16_t tx_buffer_idx = 0;
	UTX0IF = FALSE;
	for( tx_buffer_idx = 0; tx_buffer_idx < tx_buffer_len; tx_buffer_idx++ ) {
		U0DBUF = tx_buffer[tx_buffer_idx];
		while( !UTX0IF ) { }
		UTX0IF = FALSE;
	}
}

void uart1_send( uint8_t* tx_buffer, uint16_t tx_buffer_len ) {
	uint16_t tx_buffer_idx = 0;
	UTX1IF = FALSE;
	for( tx_buffer_idx = 0; tx_buffer_idx < tx_buffer_len; tx_buffer_idx++ ) {
		U1DBUF = tx_buffer[tx_buffer_idx];
		while( !UTX1IF ) { }
		UTX1IF = FALSE;
	}
}

// This function maps/connects the UART to the desired SoC I/O port.
// The application should call this function with "uartPortAlt" = 1 or 2,
// and "uartNum" = 0 or 1.
void uart_map_port( uint8_t uart_port_alt, uint8_t uart_num ) {
	// If UART Port Alternative 1 desired
	if( uart_port_alt == 1 ) {
		// If UART0 desired
		if( uart_num == 0 ) {
			// Configure UART0 for Alternative 1 => Port P0 (PERCFG.U0CFG = 0)
			PERCFG &= ~0x01;
			// Configure relevant Port P0 pins for peripheral function:
			// P0SEL.SELP0_2/3/4/5 = 1 => RX = P0_2, TX = P0_3, CT = P0_4, RT = P0_5
			P0SEL |= 0x3C;
			// Configure relevant Port P1 pins back to GPIO function
			P1SEL &= ~0x3C;
			// Else (UART1 desired)
		} else {
			// Configure UART1 for Alternative 1 => Port P0 (PERCFG.U1CFG = 0)
			PERCFG &= ~0x02;
			// Configure relevant Port P0 pins for peripheral function:
			// P0SEL.SELP0_2/3/4/5 = 1 => CT = P0_2, RT = P0_3, TX = P0_4, RX = P0_5
			P0SEL |= 0x3C;
			// Configure relevant Port P1 pins back to GPIO function
			P1SEL &= ~0xF0;
		}
		// Else (UART Port Alternative 2 desired)
	} else {
		// If UART0 desired
		if( uart_num == 0 ) {
			// Configure UART0 for Alternative 2 => Port P1 (PERCFG.U0CFG = 1)
			PERCFG |= 0x01;
			// P1SEL.SELP1_2/3/4/5 = 1 => CT = P1_2, RT = P1_3, RX = P1_4, TX = P1_5
			P1SEL |= 0x3C;
			// Configure relevant Port P0 pins back to GPIO function
			P0SEL &= ~0x3C;
			// Else (UART1 desired)
		} else {
			// Configure UART1 for Alternative 2 => Port P1 (PERCFG.U1CFG = 1)
			PERCFG |= 0x02;
			// P1SEL.SELP1_4/5/6/7 = 1 => CT = P1_4, RT = P1_5, TX = P1_6, RX = P1_7
			P1SEL |= 0xF0;
			// Configure relevant Port P0 pins back to GPIO function
			P0SEL &= ~0x3C;
		}
	}
}

// This function initializes the UART bit rate.
void uart0_init_bitrate( uint8_t uart_baud_m, uint8_t uart_baud_e ) {
	///////////////////////////////////////////////////////////////
	// This initial code section ensures that the SoC system clock is driven
	// by the HS XOSC:
	// Clear CLKCON.OSC to make the SoC operate on the HS XOSC.
	// Set CLKCON.TICKSPD/CLKSPD = 000 => system clock speed = HS RCOSC speed.
	CLKCON &= 0x80;
	// Monitor CLKCON.OSC to ensure that the HS XOSC is stable and actually
	// applied as system clock source before continuing code execution
	while( CLKCON & 0x40 ) { }
	// Set SLEEP.OSC_PD to power down the HS RCOSC.
	SLEEP |= 0x04;
	///////////////////////////////////////////////////////////////
	// Initialize bitrate (U0BAUD.BAUD_M, U0GCR.BAUD_E)
	U0BAUD = uart_baud_m;
	U0GCR = (U0GCR&~0x1F) | uart_baud_e;
}

void uart1_init_bitrate( uint8_t uart_baud_m, uint8_t uart_baud_e ) {
	///////////////////////////////////////////////////////////////
	// This initial code section ensures that the SoC system clock is driven
	// by the HS XOSC:
	// Clear CLKCON.OSC to make the SoC operate on the HS XOSC.
	// Set CLKCON.TICKSPD/CLKSPD = 000 => system clock speed = HS RCOSC speed.
	CLKCON &= 0x80;
	// Monitor CLKCON.OSC to ensure that the HS XOSC is stable and actually
	// applied as system clock source before continuing code execution
	while( CLKCON & 0x40 ) { }
	// Set SLEEP.OSC_PD to power down the HS RCOSC.
	SLEEP |= 0x04;
	///////////////////////////////////////////////////////////////
	// Initialize bitrate (U0BAUD.BAUD_M, U0GCR.BAUD_E)
	U1BAUD = uart_baud_m;
	U1GCR = (U1GCR&~0x1F) | uart_baud_e;
}

// This function initializes the UART protocol (start/stop bit, data bits,
// parity, etc.). The application must call this function with an initialized
// data structure according to the code in Figure 12.
void uart_init_protocol( UART_PROT_CONFIG* uart_prot_config ) {
	// Initialize UART protocol for desired UART (0 or 1)
	if( uart_prot_config->uartNum == 0 ) {
		// USART mode = UART (U0CSR.MODE = 1)
		U0CSR |= 0x80;
		// Start bit level = low => Idle level = high (U0UCR.START = 0)
		// Start bit level = high => Idle level = low (U0UCR.START = 1)
		U0UCR = (U0UCR&~0x01) | uart_prot_config->START;
		// Stop bit level = high (U0UCR.STOP = 1)
		// Stop bit level = low (U0UCR.STOP = 0)
		U0UCR = (U0UCR&~0x02) | (uart_prot_config->STOP << 1);
		// Number of stop bits = 1 (U0UCR.SPB = 0)
		// Number of stop bits = 2 (U0UCR.SPB = 1)
		U0UCR = (U0UCR&~0x04) | (uart_prot_config->SPB << 2);
		// Parity = disabled (U0UCR.PARITY = 0)
		// Parity = enabled (U0UCR.PARITY = 1)
		U0UCR = (U0UCR&~0x08) | (uart_prot_config->PARITY << 3);
		// 9-bit data disable = 8 bits transfer (U0UCR.BIT9 = 0)
		// 9-bit data enable = 9 bits transfer (U0UCR.BIT9 = 1)
		U0UCR = (U0UCR&~0x10) | (uart_prot_config->BIT9 << 4);
		// Level of bit 9 = 0 (U0UCR.D9 = 0), used when U0UCR.BIT9 = 1
		// Level of bit 9 = 1 (U0UCR.D9 = 1), used when U0UCR.BIT9 = 1
		// Parity = Even (U0UCR.D9 = 0), used when U0UCR.PARITY = 1
		// Parity = Odd (U0UCR.D9 = 1), used when U0UCR.PARITY = 1
		U0UCR = (U0UCR&~0x20) | (uart_prot_config->D9 << 5);
		// Flow control = disabled (U0UCR.FLOW = 0)
		// Flow control = enabled (U0UCR.FLOW = 1)
		U0UCR = (U0UCR&~0x40) | (uart_prot_config->FLOW << 6);
		// Bit order = MSB first (U0GCR.ORDER = 1)
		// Bit order = LSB first (U0GCR.ORDER = 0) => For PC/Hyperterminal
		U0GCR = (U0GCR&~0x20) | (uart_prot_config->ORDER << 5);
	} else {
		// USART mode = UART (U1CSR.MODE = 1)
		U1CSR |= 0x80;
		// Start bit level = low => Idle level = high (U1UCR.START = 0)
		// Start bit level = high => Idle level = low (U1UCR.START = 1)
		U1UCR = (U1UCR&~0x01) | uart_prot_config->START;
		// Stop bit level = high (U1UCR.STOP = 1)
		// Stop bit level = low (U1UCR.STOP = 0)
		U1UCR = (U1UCR&~0x02) | (uart_prot_config->STOP << 1);
		// Number of stop bits = 1 (U1UCR.SPB = 0)
		// Number of stop bits = 2 (U1UCR.SPB = 1)
		U1UCR = (U1UCR&~0x04) | (uart_prot_config->SPB << 2);
		// Parity = disabled (U1UCR.PARITY = 0)
		// Parity = enabled (U1UCR.PARITY = 1)
		U1UCR = (U1UCR&~0x08) | (uart_prot_config->PARITY << 3);
		// 9-bit data enable = 8 bits transfer (U1UCR.BIT9 = 0)
		// 9-bit data enable = 8 bits transfer (U1UCR.BIT9 = 1)
		U1UCR = (U1UCR&~0x10) | (uart_prot_config->BIT9 << 4);
		// Level of bit 9 = 0 (U1UCR.D9 = 0), used when U1UCR.BIT9 = 1
		// Level of bit 9 = 1 (U1UCR.D9 = 1), used when U1UCR.BIT9 = 1
		// Parity = Even (U1UCR.D9 = 0), used when U1UCR.PARITY = 1
		// Parity = Odd (U1UCR.D9 = 1), used when U1UCR.PARITY = 1
		U1UCR = (U1UCR&~0x20) | (uart_prot_config->D9 << 5);
		// Flow control = disabled (U1UCR.FLOW = 0)
		// Flow control = enabled (U1UCR.FLOW = 1)
		U1UCR = (U1UCR&~0x40) | (uart_prot_config->FLOW << 6);
		// Bit order = MSB first (U1GCR.ORDER = 1)
		// Bit order = LSB first (U1GCR.ORDER = 0) => For PC/Hyperterminal
		U1GCR = (U1GCR&~0x20) | (uart_prot_config->ORDER << 5);
	}
}
