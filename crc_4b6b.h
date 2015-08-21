#pragma once

#include <stddef.h>
#include <stdint.h>

uint8_t crc8( uint8_t const msg[], size_t const msg_size );
uint16_t crc16( uint8_t const msg[], size_t const msg_size );
void encode_4b6b( uint8_t const in_message[], size_t const in_length, uint8_t out_message[], size_t * const out_length );
void decode_4b6b( uint8_t const in_message[], size_t const in_length, uint8_t out_message[], size_t * const out_length );
void sleep (size_t const time);
