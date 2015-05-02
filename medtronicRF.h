#pragma once

#include <stdint.h>

void send_medtronic_message( uint8_t *message, uint16_t length, int16_t times );
uint8_t receive_medtronic_message( uint8_t *message, uint16_t *length );
void usb_receive_data( void );

#pragma once
