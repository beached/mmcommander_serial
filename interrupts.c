#include "interrupts.h"
#include "common.h"
#include "globals.h"
#include "hw/ioCCxx10_bitdef.h"
#include "hw/cc1110.h"
#include "crc_4b6b.h"
#include "interrupts.h"
#include "medtronicRF.h"
#include "hw/hal_uart.h"
#include "txfilter.h"

// Globals
void PORT1_ISR( void ) __interrupt( P1INT_VECTOR ) {
	int i = 0;
	int j = 0;
	int modeChange = 0;
	char txString[2] = { 0 };

	// Clear Port 1 Interrupt Flag
	P1IFG = 0;
	IRCON2 &= 0xF7;

	modeChange = 1;
	for( j = 0; j < 0x20; j++ ) {
		for( i = 0; i < 0xFFFF; i++ ) Nop( );
		if( P1_2 == 1 ) {
			modeChange = 0;
			j = 0x20;
		}
	}

	if( modeChange == 1 ) {
		if( tx_filter_enabled == 1 ) {
			tx_filter_enabled = 0;
			P1_1 = 1;
			txString[0] = 0x13;
		} else {
			tx_filter_enabled = 1;
			P1_1 = 0;
			txString[0] = 0x03;
		}
		hal_uart_write( (uint8_t const *)txString, 1 );
	}

	// Clear Port 1 Interrupt Flag
	P1IFG = 0;
	IRCON2 &= ~0x04;
}

void enable_push_button_int( void ) {
	// Initialize Filter to enabled.
	P1_0 = 0;
	tx_filter_enabled = 1;

	// Clear any pending Port 1 Interrupt Flag (IRCON2.P1IF = 0)
	P1IFG = 0;
	IRCON2 &= 0xF7;

	// Enable interrupt on falling edges
	PICTL |= 0x02;

	// Enable global interrupt (IEN0.EA = 1) and Port 1 Interrupt (IEN2.P1IE = 1)
	P1IEN = 0x04;
	EA = 1; IEN2 |= IEN2_P1IE;
}

void TIMER1_ISR( void ) __interrupt( T1_VECTOR ) {
	// Stop Timer 1
	T1CTL &= 0xFC;

	// Clear Timer 1 Interrupt Flag
	P1IFG = 0;
	IRCON &= ~0x02;

	// Reset state;
	uart_rx_index = 0;

	// Clean interrupts and start Timer 1 in Free Run mode
	//T1CTL = 0x01;
}

void stop_timer_int( void ) {
	// Stop Timer 1
	T1CTL &= 0xFC;

	// Reset Timer 1 Counter
	T1CNTL = 0x00;

	// Disable Timer 1 interrupt
	IEN1 &= ~0x02;
}

void reset_timer_counter( void ) {
	T1CNTL = 0x00;
}

void enable_timer_int( void ) {
	// Stop Timer 1
	T1CTL &= 0xFC;

	// Set Timer 1 timeout value
	T1CC0H = 0x7F;
	T1CC0L = 0xFF;

	// Reset Timer 1 Counter
	T1CNTL = 0x00;

	// Set Timer 1 mode
	T1CCTL0 = 0x44;

	// Clear any pending Timer 1 Interrupt Flag
	IRCON &= ~0x02;

	// Enable global interrupt (IEN0.EA = 1) and Timer 1 Interrupt (IEN1.1 = 1)
	EA = 1; IEN1 |= 0x02;
}
