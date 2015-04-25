#pragma once

void sendMedtronicMessage( char *message, unsigned int length, int times );
char receiveMedtronicMessage( char *message, unsigned int *length );
void usbReceiveData( void );

#pragma once
