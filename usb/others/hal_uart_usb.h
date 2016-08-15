#pragma once

#include <stdint.h>
#include <stddef.h>

void halUartInit(uint8_t baudrate );
uint16_t halUartBufferedWrite(uint8_t const * const buf, uint16_t length);
uint16_t halUartWrite(uint8_t * buf, uint16_t length);
uint16_t halUartRead( uint8_t * buf, uint16_t length);
uint16_t halUartGetNumRxBytes( void );
void halUartEnableRxFlow(uint8_t enable);
