#include "configuration.h"
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>

__xdata uint8_t txFilterEnabled = true;

#if _TX_ENABLE_ == 0
bool txFilter (uint8_t const * const, size_t const ) {
  return true;
}
#elif _TX_FILTER_ENABLE_ == 0
bool txFilter (uint8_t const * const, size_t const ) {
  return false;
}
#else
bool txFilter (uint8_t const * const message, size_t const length ) {
  if( 0 == length ) {
    return false;
  }

  if( txFilterEnabled ) {
    switch( message[0] ) {      // Packet Type
    case 0xA5:  // Glucometre
    case 0xAA:  // Sensor Warmup - We won't allow enlite sensors readings
    case 0xAB:  // Sensor Normal
      return true;
    case 0xA7:  // Sending message to pump
      switch( message[4] ) {
      case 0x06:        // ACK message
      case 0x70:        // Read Data
      case 0x5D:        // Wakeup Pump
#if defined(_SUPPORT_SUSPEND_WHEN_FILTERED_) && _SUPPORT_SUSPEND_WHEN_FILTERED_ == 1
      case 0x4D:        // Suspend pump, if explicitly configured at compile time
#endif
        return false;
      default:
        return true;    // Filter all other types
      }
    default:
      return false;     // Allow unknwon packet types through
    }
  } else {    // txtFilterEnabled == false
    return false;
  }
}
#endif
