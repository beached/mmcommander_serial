/***********************************************************************************

  Filename:     util_buffer.h

  Description:  Ringbuffer interface

  ***********************************************************************************/
#ifndef UTIL_BUFFER_H
#define UTIL_BUFFER_H

/***********************************************************************************
* INCLUDES
*/
#include "hal_types.h"

/***********************************************************************************
* CONSTANTS AND DEFINES
*/
#ifndef BUF_SIZE
#ifdef WIN32
#define BUF_SIZE	256
#else
#define BUF_SIZE   128
#endif
#endif

#if (BUF_SIZE > 256)
#error "Buffer size too big"
#endif

/***********************************************************************************
* TYPEDEFS
*/
typedef struct {
	volatile uint8_t pData[BUF_SIZE];
	volatile uint8_t nBytes;
	volatile uint8_t iHead;
	volatile uint8_t iTail;
} ringBuf_t;

/***********************************************************************************
* MACROS
*/
#define bufFlush(pBuf)  bufInit(pBuf)

/***********************************************************************************
* GLOBAL FUNCTIONS
*/
void  bufInit( ringBuf_t *pBuf );
uint8_t bufPut( ringBuf_t *pBuf, const uint8_t *pData, uint8_t n );
uint8_t bufGet( ringBuf_t *pBuf, uint8_t *pData, uint8_t n );
uint8_t bufPeek( ringBuf_t *pBuf, uint8_t *pData, uint8_t nBytes );
uint8_t bufNumBytes( ringBuf_t *pBuf );

#endif


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
