/***********************************************************************************

  Filename:     hal_uart_usb.c

  Description:  UART interface for USB virtual COMPORT. Supports hardware flow control.

***********************************************************************************/

/***********************************************************************************
* INCLUDES
*/
//#include "hal_types.h"
#include "hal_uart.h"
#include "hal_board.h"
#include "util_buffer.h"
#include "hal_int.h"
#include "hal_mcu.h"
#include "../class_cdc/usb_uart.h"
#include <stdint.h>
#include <stddef.h>
#include "hal_uart_usb.h"

/***********************************************************************************
* LOCAL CONSTANTS and DEFINITIONS
*/



/************************************************************************************
* GLOBAL VARIABLES
*/
ringBuf_t rbRxBuf = { .pData = {0}, .nBytes = 0, .iHead = 0, .iTail = 0 };
ringBuf_t rbTxBuf = { .pData = {0}, .nBytes = 0, .iHead = 0, .iTail = 0 };


extern uint8_t cdcCTS;

/************************************************************************************
* LOCAL VARIABLES
*/


/************************************************************************************
* @fn      halUartInit
*
* @brief   Initalise UART. Supported baudrates are: 38400, 57600 and 115200
*
* @param   uint8_t baudrate
*          uint8_t options - this parameter is ignored
*
* @return  none
*/
//void halUartInit(uint8_t baudrate ) {
void halUartInit( void ) {
   // uint32 baud = 115200;

    // Initialize the buffers
    bufInit(&rbRxBuf);
    bufInit(&rbTxBuf);

//    switch (baudrate) {
//    case HAL_UART_BAUDRATE_38400:
//        baud= 38400;
//        break;
//    case HAL_UART_BAUDRATE_57600:
//        baud= 57600;
//        break;
//    }
   // usbUartInit(baud);
    usbUartInit( );

}


/***********************************************************************************
* @fn      halUartBufferedWrite
*
* @brief   Write data buffered to UART. Data is written into a buffer, and the
*          buffer is emptied by UART TX interrupt ISR
*
* @param   uint8* buf - buffer with data to write
*          uint16_t length - number of bytes to write
*
* @return  number of bytes written
*/
uint16_t halUartBufferedWrite(uint8_t const * const buf, uint16_t length) {
    uint16_t n;

    n= 0;
    while ( n < length ) {
        uint8_t i;

        i= bufPut(&rbTxBuf,buf+n,length-n);
        if (i==0) {
            halMcuWaitMs(5);
            i+= bufPut(&rbTxBuf,buf+n,length-n);
            if (i==0)       // Assuming that there is no connection; give up
                break;
        }
        n+= i;
    }

    return n; // (bufPut(&rbTxBuf,buf,length));
}


/************************************************************************************
* @fn      halUartWrite
*
* @brief   Write data buffer to UART
*
* @param   uint8* buf - buffer with data to write
*          uint16_t length - number of bytes to write
*
* @return  uint16_t - number of bytes written
*/
uint16_t halUartWrite(uint8_t * buf, uint16_t length) {
    return halUartBufferedWrite(buf, length);
}


/************************************************************************************
* @fn      halUartRead
*
* @brief   Read data from UART Rx buffer
*
* @param   uint8* buf - buffer with data to read in to
*          uint16_t length - number of bytes to read
*
* @return  none
*/
uint16_t halUartRead( uint8_t * buf, uint16_t length) {
    return bufGet(&rbRxBuf, buf, length);
}


/************************************************************************************
* @fn      halUartGetNumRxBytes
*
* @brief   Returns number of bytes in RX buffer
*
* @param   none
*
* @return  uint8
*/
uint16_t halUartGetNumRxBytes(void) {
    return bufNumBytes(&rbRxBuf);
}


/***********************************************************************************
* @fn      halUartEnableRxFlow
*
* @brief   Signal ready/not ready to receive characters on UART
*
* @param   uint8_t enable - TRUE to signal ready to receive on UART
*                         FALSE to signal not ready to receive on UART
*
* @return  none
*/
void halUartEnableRxFlow(uint8_t enable) {
    cdcCTS= enable;
}



/************************************************************************************
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
  PROVIDED �AS IS� WITHOUT WARRANTY OF ANY KIND, EITHER EXPRESS OR IMPLIED,
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
