#include "crc_4b6b.h"
#include "common.h"

static int16_t __xdata crc16_table[256];

uint8_t crc8( uint8_t *message, uint16_t nBytes ) {
	uint8_t remainder = 0;
	uint8_t bit = 0;
	uint16_t byte = 0;

	for( byte = 0; byte < nBytes; ++byte ) {
		remainder ^= message[byte];
		for( bit = 8; bit > 0; --bit ) {
			if( remainder & 0x80 ) {
				remainder = (remainder << 1) ^ 0x9B;
			} else {
				remainder = (remainder << 1);
			}
		}
	}
	return remainder;
}

void crc16_init( void ) {
	uint16_t i = 0;
	uint16_t j = 0;
	uint16_t crc = 0;
	uint16_t c = 0;

	for( i = 0; i < 256; i++ ) {
		crc = 0;
		c = ((uint16_t)i) << 8;
		for( j = 0; j < 8; j++ ) {
			if( (crc^c) & 0x8000 ) {
				crc = (crc << 1) ^ 0x1021;
			} else {
				crc = crc << 1;
			}
			c = c << 1;
		}
		crc16_table[i] = crc;
	}
}

int16_t crc16( uint8_t *message, uint16_t nBytes ) {
	uint16_t i = 0;
	uint16_t crc = 0xffff;
	uint16_t short_c = 0;
	uint16_t tmp = 0;

	for( i = 0; i < nBytes; i++ ) {
		short_c = 0x00ff & (uint16_t)message[i];
		tmp = (crc >> 8) ^ short_c;
		crc = (crc << 8) ^ crc16_table[tmp];
	}
	return crc;
}

uint8_t get_4b6b_symbol( uint8_t inSymbol ) {
	switch( inSymbol ) {
	case 0x00:
		return 0x15;
	case 0x01:
		return 0x31;
	case 0x02:
		return 0x32;
	case 0x03:
		return 0x23;
	case 0x04:
		return 0x34;
	case 0x05:
		return 0x25;
	case 0x06:
		return 0x26;
	case 0x07:
		return 0x16;
	case 0x08:
		return 0x1A;
	case 0x09:
		return 0x19;
	case 0x0A:
		return 0x2A;
	case 0x0B:
		return 0x0B;
	case 0x0C:
		return 0x2C;
	case 0x0D:
		return 0x0D;
	case 0x0E:
		return 0x0E;
	case 0x0F:
		return 0x1C;
	default:
		return 0x00;
	}
}

uint8_t decode_4b6b_symbol( uint8_t inSymbol, uint8_t *outSymbol ) {
	switch( inSymbol ) {
	case 0x15: {
		*outSymbol = 0x00;
		return 0;
	}
	case 0x31: {
		*outSymbol = 0x01;
		return 0;
	}
	case 0x32: {
		*outSymbol = 0x02;
		return 0;
	}
	case 0x23: {
		*outSymbol = 0x03;
		return 0;
	}
	case 0x34: {
		*outSymbol = 0x04;
		return 0;
	}
	case 0x25: {
		*outSymbol = 0x05;
		return 0;
	}
	case 0x26: {
		*outSymbol = 0x06;
		return 0;
	}
	case 0x16: {
		*outSymbol = 0x07;
		return 0;
	}
	case 0x1A: {
		*outSymbol = 0x08;
		return 0;
	}
	case 0x19: {
		*outSymbol = 0x09;
		return 0;
	}
	case 0x2A: {
		*outSymbol = 0x0A;
		return 0;
	}
	case 0x0B: {
		*outSymbol = 0x0B;
		return 0;
	}
	case 0x2C: {
		*outSymbol = 0x0C;
		return 0;
	}
	case 0x0D: {
		*outSymbol = 0x0D;
		return 0;
	}
	case 0x0E: {
		*outSymbol = 0x0E;
		return 0;
	}
	case 0x1C: {
		*outSymbol = 0x0F;
		return 0;
	}
	default:   {
		*outSymbol = 0x00;
		return 1;
	}
	}
}

void encode_4b6b( uint8_t *messageIn, uint16_t bytesIn, uint8_t *messageOut, uint16_t *bytesOut ) {
	uint16_t i = 0;
	uint16_t j = 0;
	int16_t intBuffer = 0;
	int16_t mask = 0;
	int16_t intBitsAvailable = 0;
	uint8_t symbol = 0;

	*bytesOut = 0;

	for( i = 0; i < bytesIn * 2; i++ ) {
		j = i >> 1;
		if( j * 2 == i ) {
			symbol = (messageIn[j] >> 4) & 0x0F;
		} else {
			symbol = messageIn[j] & 0x0F;
		}
		symbol = get_4b6b_symbol( symbol );
		intBuffer = (intBuffer << 6) & 0xFFC0;
		intBuffer = intBuffer | symbol;
		intBitsAvailable += 6;
		if( intBitsAvailable >= 8 ) {
			symbol = intBuffer >> (intBitsAvailable - 8);
			messageOut[*bytesOut] = symbol;
			(*bytesOut)++;
			intBitsAvailable -= 8;
			mask = (1 << intBitsAvailable) - 1;
			intBuffer = intBuffer & mask;
		}
	}

	if( intBitsAvailable != 0 ) {
		mask = (1 << intBitsAvailable) - 1;
		intBuffer = intBuffer & mask;
		intBuffer = intBuffer << (8 - intBitsAvailable);
		symbol = intBuffer & 0x00FF;
		messageOut[*bytesOut] = symbol;
		(*bytesOut)++;
	}
}

void decode_4b6b( uint8_t *messageIn, uint16_t bytesIn, uint8_t *messageOut, uint16_t *bytesOut ) {
	uint16_t i = 0;
	int16_t intBuffer = 0;
	int16_t intBitsAvailable = 0;
	uint8_t symbol = 0;
	uint8_t recByte = 0;
	uint8_t nibbleFlag = 0;
	uint8_t outBytes = 0;

	for( i = 0; i < bytesIn; i++ ) {
		intBuffer = intBuffer << 8;
		intBuffer |= messageIn[i];
		intBitsAvailable += 8;

		while( intBitsAvailable >= 6 ) {
			symbol = intBuffer >> (intBitsAvailable - 6);
			symbol &= 0x3F;
			decode_4b6b_symbol( symbol, &symbol );
			recByte = recByte << 4;
			recByte &= 0xF0;
			recByte |= symbol;
			nibbleFlag ^= 1;
			if( nibbleFlag == 0 ) {
				messageOut[outBytes] = recByte;
				outBytes++;
			}
			intBitsAvailable -= 6;
		}
	}

	*bytesOut = outBytes;
}

void sleep( int16_t time ) {
	int16_t j = 0;
	int16_t i = 0;
	for( j = 0; j < time * 4; j++ ) {
		for( i = 0; i < 0xFFFF; i++ ) {
			Nop( );
		}
	}
}
