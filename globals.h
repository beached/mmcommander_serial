#pragma once

#include "hw/hal_types.h"
#include "constants.h"

extern int16_t __xdata uart_tx_length;
extern int16_t __xdata uart_tx_index;
extern int16_t __xdata uart_rx_index;
extern uint8_t __xdata uart_rx_buffer[SIZE_OF_UART_RX_BUFFER];
extern uint8_t __xdata uart_tx_buffer[SIZE_OF_UART_RX_BUFFER];
extern uint8_t __xdata tx_filter_enabled;
//extern int16_t __xdata tx_calc_crc;
//extern int16_t __xdata tx_calc_crc16;
//extern int16_t __xdata tx_times;
//extern uint8_t __xdata tx_length;
