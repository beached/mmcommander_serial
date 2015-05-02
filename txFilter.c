#include "configuration.h"
#include <stdint.h>

uint8_t __xdata tx_filter_enabled;
#if _TX_ENABLE_ == 0
uint8_t tx_filter( uint8_t *message, uint16_t length ) {
	message;
	length;
	return 1;
}
#elif _TX_FILTER_ENABLE_ == 0
uint8_t tx_filter( uint8_t *message, uint16_t length ) {
	message;
	length;
	return 0;
}
#else

uint8_t tx_filter( uint8_t *message, uint16_t length ) {
	if( length < 1 ) return 0;

	if( tx_filter_enabled == 1 ) {
		// We won't allow glucometer readings
		if( message[0] == 0xA5u ) return 1;

		// We won't allow enlite sensors readings
		if( message[0] == 0xAAu ) return 1;
		if( message[0] == 0xABu ) return 1;

		// When talking to a pump...
		if( message[0] == 0xA7u ) {
			// ... ACK messages are allowed
			if( message[4] == 0x06u ) return 0;
			// ... reading data is allowed
			if( message[4] >= 0x70u ) return 0;
			// ... waking up the pump is allowed
			if( message[4] == 0x5Du ) return 0;
			// ... we will allow suspend commands if we configured the
			//   MedtronicCommander for that purpose.
			if( (_SUPPORT_SUSPEND_WHEN_FILTERED_ == 1) &&
				(message[4] == 0x4Du) ) return 0;
			// ... and any other command will be filtered (by now)
			return 1;
		}

		// Other unknown commands will be allowed.
		return 0;
	}

	return 0;
}
#endif
