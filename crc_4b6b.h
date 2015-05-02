#pragma once

#include <stdint.h>

uint8_t crc8( uint8_t *message, uint16_t nBytes );
void crc16Init( void );
int16_t crc16( uint8_t *message, uint16_t nBytes );
uint8_t get_4b6b_symbol( uint8_t inSymbol );
uint8_t decode_4b6b_symbol( uint8_t inSymbol, uint8_t *outSymbol );
void encode_4b6b( uint8_t *messageIn, uint16_t bytesIn, uint8_t *messageOut, uint16_t *bytesOut );
void decode_4b6b( uint8_t *messageIn, uint16_t bytesIn, uint8_t *messageOut, uint16_t *bytesOut );

void sleep( int16_t time );
