#ifndef _MEDTRONICRF_H_
#define _MEDTRONICRF_H_

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

void sendMedtronicMessage (uint8_t const * const message, size_t const length, uint8_t const repeat_count );

// receiveMedtronicMessage and put it into message with length length.  Returns true on crc error
bool receiveMedtronicMessage (uint8_t message[], size_t * const length);
void usbReceiveData (void);

#endif
