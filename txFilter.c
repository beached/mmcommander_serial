#include "configuration.h"

char   __xdata txFilterEnabled;
#if _TX_ENABLE_ == 0
char txFilter( char *message, int length ) {
	message;
	length;
	return 1;
}
#elif _TX_FILTER_ENABLE_ == 0
char txFilter( char *message, int length ) {
	message;
	length;
	return 0;
}
#else
char txFilter( char *message, int length ) {
	if( length < 1 ) return 0;

	if( txFilterEnabled == 1 ) {
		// We won't allow glucometer readings
		if( (int)message[0] == 0xA5 ) return 1;

		// We won't allow enlite sensors readings
		if( (int)message[0] == 0xAA ) return 1;
		if( (int)message[0] == 0xAB ) return 1;

		// When talking to a pump...
		if( (int)message[0] == 0xA7 ) {
			// ... ACK messages are allowed
			if( (int)message[4] == 0x06 ) return 0;
			// ... reading data is allowed
			if( (int)message[4] >= 0x70 ) return 0;
			// ... waking up the pump is allowed
			if( (int)message[4] == 0x5D ) return 0;
			// ... we will allow suspend commands if we configured the
			//   MedtronicCommander for that purpose.
			if( (_SUPPORT_SUSPEND_WHEN_FILTERED_ == 1) &&
				((int)message[4] == 0x4D) ) return 0;
			// ... and any other command will be filtered (by now)
			return 1;
		}

		// Other unknown commands will be allowed.
		return 0;
	}

	return 0;
}
#endif
