#include <stddef.h>
#include <stdint.h>
#include "crc_4b6b.h"
#include "queues.h"
#include <string.h>

uint8_t crc8( uint8_t const msg[], size_t const msg_size ) {
  static uint8_t const crc8_table[256] = { 0x0, 0x9B, 0xAD, 0x36, 0xC1, 0x5A, 0x6C, 0xF7, 0x19, 0x82, 0xB4, 0x2F, 0xD8, 0x43, 0x75, 0xEE, 0x32, 0xA9, 0x9F, 0x4, 0xF3, 0x68, 0x5E, 0xC5, 0x2B, 0xB0, 0x86, 0x1D, 0xEA, 0x71, 0x47, 0xDC, 0x64, 0xFF, 0xC9, 0x52, 0xA5, 0x3E, 0x8, 0x93, 0x7D, 0xE6, 0xD0, 0x4B, 0xBC, 0x27, 0x11, 0x8A, 0x56, 0xCD, 0xFB, 0x60, 0x97, 0xC, 0x3A, 0xA1, 0x4F, 0xD4, 0xE2, 0x79, 0x8E, 0x15, 0x23, 0xB8, 0xC8, 0x53, 0x65, 0xFE, 0x9, 0x92, 0xA4, 0x3F, 0xD1, 0x4A, 0x7C, 0xE7, 0x10, 0x8B, 0xBD, 0x26, 0xFA, 0x61, 0x57, 0xCC, 0x3B, 0xA0, 0x96, 0xD, 0xE3, 0x78, 0x4E, 0xD5, 0x22, 0xB9, 0x8F, 0x14, 0xAC, 0x37, 0x1, 0x9A, 0x6D, 0xF6, 0xC0, 0x5B, 0xB5, 0x2E, 0x18, 0x83, 0x74, 0xEF, 0xD9, 0x42, 0x9E, 0x5, 0x33, 0xA8, 0x5F, 0xC4, 0xF2, 0x69, 0x87, 0x1C, 0x2A, 0xB1, 0x46, 0xDD, 0xEB, 0x70, 0xB, 0x90, 0xA6, 0x3D, 0xCA, 0x51, 0x67, 0xFC, 0x12, 0x89, 0xBF, 0x24, 0xD3, 0x48, 0x7E, 0xE5, 0x39, 0xA2, 0x94, 0xF, 0xF8, 0x63, 0x55, 0xCE, 0x20, 0xBB, 0x8D, 0x16, 0xE1, 0x7A, 0x4C, 0xD7, 0x6F, 0xF4, 0xC2, 0x59, 0xAE, 0x35, 0x3, 0x98, 0x76, 0xED, 0xDB, 0x40, 0xB7, 0x2C, 0x1A, 0x81, 0x5D, 0xC6, 0xF0, 0x6B, 0x9C, 0x7, 0x31, 0xAA, 0x44, 0xDF, 0xE9, 0x72, 0x85, 0x1E, 0x28, 0xB3, 0xC3, 0x58, 0x6E, 0xF5, 0x2, 0x99, 0xAF, 0x34, 0xDA, 0x41, 0x77, 0xEC, 0x1B, 0x80, 0xB6, 0x2D, 0xF1, 0x6A, 0x5C, 0xC7, 0x30, 0xAB, 0x9D, 0x6, 0xE8, 0x73, 0x45, 0xDE, 0x29, 0xB2, 0x84, 0x1F, 0xA7, 0x3C, 0xA, 0x91, 0x66, 0xFD, 0xCB, 0x50, 0xBE, 0x25, 0x13, 0x88, 0x7F, 0xE4, 0xD2, 0x49, 0x95, 0xE, 0x38, 0xA3, 0x54, 0xCF, 0xF9, 0x62, 0x8C, 0x17, 0x21, 0xBA, 0x4D, 0xD6, 0xE0, 0x7B };

  uint8_t crc = 0;
  {
	uint8_t const * it = msg;
	for( ; it != msg + msg_size; ++it ) {
		crc = crc8_table[crc ^ *it];
	}
  }
  return crc;
}

uint16_t crc16( uint8_t const msg[], size_t const msg_size ) {
  // Uses CRC16-CCIT algorithms
  static uint16_t const crc16_table[256] = { 0x0, 0x1021, 0x2042, 0x3063, 0x4084, 0x50A5, 0x60C6, 0x70E7, 0x8108, 0x9129, 0xA14A, 0xB16B, 0xC18C, 0xD1AD, 0xE1CE, 0xF1EF, 0x1231, 0x210, 0x3273, 0x2252, 0x52B5, 0x4294, 0x72F7, 0x62D6, 0x9339, 0x8318, 0xB37B, 0xA35A, 0xD3BD, 0xC39C, 0xF3FF, 0xE3DE, 0x2462, 0x3443, 0x420, 0x1401, 0x64E6, 0x74C7, 0x44A4, 0x5485, 0xA56A, 0xB54B, 0x8528, 0x9509, 0xE5EE, 0xF5CF, 0xC5AC, 0xD58D, 0x3653, 0x2672, 0x1611, 0x630, 0x76D7, 0x66F6, 0x5695, 0x46B4, 0xB75B, 0xA77A, 0x9719, 0x8738, 0xF7DF, 0xE7FE, 0xD79D, 0xC7BC, 0x48C4, 0x58E5, 0x6886, 0x78A7, 0x840, 0x1861, 0x2802, 0x3823, 0xC9CC, 0xD9ED, 0xE98E, 0xF9AF, 0x8948, 0x9969, 0xA90A, 0xB92B, 0x5AF5, 0x4AD4, 0x7AB7, 0x6A96, 0x1A71, 0xA50, 0x3A33, 0x2A12, 0xDBFD, 0xCBDC, 0xFBBF, 0xEB9E, 0x9B79, 0x8B58, 0xBB3B, 0xAB1A, 0x6CA6, 0x7C87, 0x4CE4, 0x5CC5, 0x2C22, 0x3C03, 0xC60, 0x1C41, 0xEDAE, 0xFD8F, 0xCDEC, 0xDDCD, 0xAD2A, 0xBD0B, 0x8D68, 0x9D49, 0x7E97, 0x6EB6, 0x5ED5, 0x4EF4, 0x3E13, 0x2E32, 0x1E51, 0xE70, 0xFF9F, 0xEFBE, 0xDFDD, 0xCFFC, 0xBF1B, 0xAF3A, 0x9F59, 0x8F78, 0x9188, 0x81A9, 0xB1CA, 0xA1EB, 0xD10C, 0xC12D, 0xF14E, 0xE16F, 0x1080, 0xA1, 0x30C2, 0x20E3, 0x5004, 0x4025, 0x7046, 0x6067, 0x83B9, 0x9398, 0xA3FB, 0xB3DA, 0xC33D, 0xD31C, 0xE37F, 0xF35E, 0x2B1, 0x1290, 0x22F3, 0x32D2, 0x4235, 0x5214, 0x6277, 0x7256, 0xB5EA, 0xA5CB, 0x95A8, 0x8589, 0xF56E, 0xE54F, 0xD52C, 0xC50D, 0x34E2, 0x24C3, 0x14A0, 0x481, 0x7466, 0x6447, 0x5424, 0x4405, 0xA7DB, 0xB7FA, 0x8799, 0x97B8, 0xE75F, 0xF77E, 0xC71D, 0xD73C, 0x26D3, 0x36F2, 0x691, 0x16B0, 0x6657, 0x7676, 0x4615, 0x5634, 0xD94C, 0xC96D, 0xF90E, 0xE92F, 0x99C8, 0x89E9, 0xB98A, 0xA9AB, 0x5844, 0x4865, 0x7806, 0x6827, 0x18C0, 0x8E1, 0x3882, 0x28A3, 0xCB7D, 0xDB5C, 0xEB3F, 0xFB1E, 0x8BF9, 0x9BD8, 0xABBB, 0xBB9A, 0x4A75, 0x5A54, 0x6A37, 0x7A16, 0xAF1, 0x1AD0, 0x2AB3, 0x3A92, 0xFD2E, 0xED0F, 0xDD6C, 0xCD4D, 0xBDAA, 0xAD8B, 0x9DE8, 0x8DC9, 0x7C26, 0x6C07, 0x5C64, 0x4C45, 0x3CA2, 0x2C83, 0x1CE0, 0xCC1, 0xEF1F, 0xFF3E, 0xCF5D, 0xDF7C, 0xAF9B, 0xBFBA, 0x8FD9, 0x9FF8, 0x6E17, 0x7E36, 0x4E55, 0x5E74, 0x2E93, 0x3EB2, 0xED1, 0x1EF0 };

  uint16_t crc = 0xFFFF;
  {
		uint8_t const *it = msg;
		for( ; it != msg + msg_size; ++it ) {
			size_t const idx = (uint8_t)(crc >> 8) ^ *it;
			crc = (uint16_t)(crc << 8) ^ crc16_table[idx];
		}
  }
  return crc;
}

static uint8_t get_4b6b_symbol( uint8_t const in_symbol ) {
  static uint8_t s_symbols[16] = { 0x15, 0x31, 0x32, 0x23, 0x34, 0x25, 0x26, 0x16, 0x1A, 0x19, 0x2A, 0x0B, 0x2C, 0x0D, 0x0E, 0x1C };
  return s_symbols[in_symbol];
}

void encode_4b6b( uint8_t const in_message[], size_t const in_length, uint8_t out_message[], size_t * const out_length ) {
  nibble_queue nq;
  bit_queue bq;
  nibble_queue_init( &nq );
  bit_queue_init( &bq );

  memset( out_message, 0, *out_length );
  *out_length = 0;

	{
		uint8_t const * it = in_message;
		for( ; it != in_message + in_length; ++it ) {
			nibble_queue_push_back( &nq, *it, 2 );
			bit_queue_push_back( &bq, get_4b6b_symbol( nibble_queue_pop_front( &nq, 1 ) ), 6 );
			bit_queue_push_back( &bq, get_4b6b_symbol( nibble_queue_pop_front( &nq, 1 ) ), 6 );

			while( bit_queue_can_pop( &bq, 8 ) ) {
				out_message[(*out_length)++] = bit_queue_pop_front( &bq, 8 );
			}
		}

	}
  if( !bit_queue_empty( &bq ) ) {
    out_message[(*out_length)++] = bit_queue_pop_all( &bq );
  }
}

static uint8_t decode_symbol( uint8_t symbol ) {
  static uint8_t const s_radio_symbol_table[53] = {
    0,  0,  0,  0,  0,  0,  0,  0,  0,  0,  0, 11,  0, 13, 14,  0,
    0,  0,  0,  0,  0,  0,  7,  0,  0,  9,  8,  0, 15,  0,  0,  0,
    0,  0,  0,  3,  0,  5,  6,  0,  0,  0, 10,  0, 12,  0,  0,  0,
    0,  1,  2,  0,  4 };
  if( symbol >= 53 ) {
    return 0;
  }
  return s_radio_symbol_table[symbol];	// If symbol is wrong, crc will pick it up
}


void decode_4b6b( uint8_t const message_in[], size_t const message_in_sz, uint8_t message_out[], size_t * const out_length ) {
	nibble_queue nq;
	bit_queue bq;
	nibble_queue_init( &nq );
	bit_queue_init( &bq );

	memset( message_out, 0, *out_length );
	*out_length = 0;
	{
		uint8_t const * it = message_in;
		for( ; it != message_in + message_in_sz; ++it ) {
			bit_queue_push_back( &bq, *it, 8 );
			while( bit_queue_can_pop( &bq, 6 ) ) {
				uint8_t symbol = bit_queue_pop_front( &bq, 6 );
				nibble_queue_push_back( &nq, decode_symbol( symbol ), 8 );
				while( nibble_queue_can_pop( &nq, 2 ) ) {
					message_out[(*out_length)++] = nibble_queue_pop_front( &nq, 2 );
				}
			}
		}
	}
}

void sleep(size_t const time) {
	size_t j=0;
	size_t i=0;
	for( ; j<time*4; j++) {
		for (i=0; i<0xFFFF; i++) {
			__asm__("nop");
		}
	}
}
