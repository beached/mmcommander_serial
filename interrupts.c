#include "globals.h"
#include "ioCCxx10_bitdef.h"
#include <cc1110.h>
#include "crc_4b6b.h"
#include "interrupts.h"
#include "medtronicRF.h"
#include "usb/class_cdc/usb_uart.h"
#include "usb/others/hal_uart.h"
#include "txFilter.h"
#include <stdbool.h>
// Globals
unsigned long timeCounter;

void PORT1_ISR(void) __interrupt P1INT_VECTOR {
	uint8_t txString[2] = { 0 };
	bool modeChange = true;
	// Clear Port 1 Interrupt Flag
	P1IFG = 0;
	IRCON2 &= 0xF7;

	{
		size_t j=0;
		size_t i=0;
		for (; j<0x20; j++) {
			for (i=0; i<0xFFFF; i++) {
				__asm__("nop");
			}
			if (P1_2 == 1) {
				modeChange = false;
				j=0x20;
			}
		}
	}
	if (modeChange ) {
		if (txFilterEnabled ) {
			txFilterEnabled = false;
			P1_1 = 1;
			txString[0] = 0x13;
		} else {
			txFilterEnabled = true;
			P1_1 = 0;
			txString[0] = 0x03;
		}
		halUartWrite( txString, 1 );
	}

	// Clear Port 1 Interrupt Flag
	P1IFG = 0;
	IRCON2 &= ~0x04;
}

void enablePushButtonInt( void ) {
  // Initialize Filter to enabled.
  P1_0 = 0;
  txFilterEnabled = true;

  // Clear any pending Port 1 Interrupt Flag (IRCON2.P1IF = 0)
  P1IFG = 0;
  IRCON2 &= 0xF7;

  // Enable interrupt on falling edges
  PICTL |= 0x02;

  // Enable global interrupt (IEN0.EA = 1) and Port 1 Interrupt (IEN2.P1IE = 1)
  P1IEN = 0x04;
  EA = 1; IEN2 |= IEN2_P1IE;
}

void TIMER1_ISR( void ) __interrupt T1_VECTOR {

  // Stop Timer 1
  T1CTL &= 0xFC;

  // Clear Timer 1 Interrupt Flag
  P1IFG = 0;
  IRCON &= ~0x02;

  // Re-calibrate;
  timeCounter++;

  if (timeCounter >= 0x0005D00) {
    RFST = RFST_SIDLE;
    RFST = RFST_SRX;
    timeCounter = 0;
  }

  // Clean interrupts and start Timer 1 in Free Run mode
  T1CTL = 0x01;
}

void stopTimerInt (void)
{
  // Stop Timer 1
  T1CTL &= 0xFC;

   // Reset Timer 1 Counter
  T1CNTL = 0x00;

  // Disable Timer 1 interrupt
  IEN1 &= ~0x02;
}

void resetTimerCounter (void)
{
  timeCounter = 0;
  T1CNTL = 0x00;
}

void enableTimerInt (void)
{

  // Stop Timer 1
  T1CTL = 0x0C;

  // Set Timer 1 timeout value
  T1CC0H = 0xFF;
  T1CC0L = 0xFF;

  // Reset Timer 1 Counter
  T1CNTL = 0x00;
  timeCounter = 0;

  // Set Timer 1 mode
  T1CCTL0 = 0x44;

  // Clear any pending Timer 1 Interrupt Flag
  IRCON &= ~0x02;

  // Enable global interrupt (IEN0.EA = 1) and Timer 1 Interrupt (IEN1.1 = 1)
  EA = 1; IEN1 |= 0x02;

  // Start Timer 1
  T1CTL = 0x0E;
}
