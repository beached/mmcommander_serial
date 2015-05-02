#pragma once

#include "hw/hal_types.h"
#include "constants.h"

extern uint8_t __xdata uart_rx_buffer[SIZE_OF_UART_RX_BUFFER];
extern uint8_t __xdata uart_tx_buffer[SIZE_OF_UART_RX_BUFFER];
extern int16_t __xdata uart_tx_length;
extern int16_t __xdata uart_tx_index;
extern int16_t __xdata uart_rx_index;
extern uint8_t __xdata tx_filter_enabled;
//extern int __xdata tx_calc_crc;
//extern int __xdata tx_calc_crc16;
//extern char __xdata tx_length;
//extern int __xdata tx_times;
