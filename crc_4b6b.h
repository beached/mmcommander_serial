#pragma once

char crc8( char *message, unsigned int nBytes );
void crc16Init( void );
short crc16( char *message, unsigned int nBytes );
char get4b6bsymbol( char inSymbol );
char decode4b6bsymbol( char inSymbol, char *outSymbol );
void encode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut );
void decode4b6b( char *messageIn, unsigned int bytesIn, char *messageOut, unsigned int *bytesOut );
void sleep( int time );
