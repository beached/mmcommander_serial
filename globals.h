#pragma once

#include "hw/hal_types.h"
#include "constants.h"

extern uint8_t   __xdata uartRxBuffer[SIZE_OF_UART_RX_BUFFER];
extern uint8_t   __xdata uartTxBuffer[SIZE_OF_UART_RX_BUFFER];
extern int16_t    __xdata uartTxLength;
extern int16_t    __xdata uartTxIndex;
extern int16_t    __xdata uartRxIndex;
extern uint8_t   __xdata txFilterEnabled;
//extern int    __xdata txCalcCRC;
//extern int    __xdata txCalcCRC16;
//extern char   __xdata txLength;
//extern int    __xdata txTimes;
