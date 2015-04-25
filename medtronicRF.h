#pragma once

#include <stdint.h>

void sendMedtronicMessage( uint8_t *message, uint16_t length, int16_t times );
uint8_t receiveMedtronicMessage( uint8_t *message, uint16_t *length );
void usbReceiveData( void );

#pragma once
