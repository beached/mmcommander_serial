#pragma once

#include <stddef.h>
#include <stdint.h>
#include <stdbool.h>

struct bit_queue_t {
  uint16_t m_queue;
  size_t m_size;
};
typedef struct bit_queue_t bit_queue;

void bit_queue_init( bit_queue * const bq );
void bit_queue_push_back( bit_queue * const bq, uint8_t value, size_t const bits );
uint8_t bit_queue_pop_front( bit_queue * const bq, size_t const bits );
bool bit_queue_can_pop( bit_queue const * const bq, size_t const bits );
uint8_t bit_queue_pop_all( bit_queue * const bq );
size_t bit_queue_size( bit_queue const * const bq );
bool bit_queue_empty( bit_queue const * const bq );
size_t bit_queue_capacity( bit_queue const * const bq );


struct nibble_queue_t {
  bit_queue m_queue;
};

typedef struct nibble_queue_t nibble_queue;

void nibble_queue_init( nibble_queue * const nq );  
size_t nibble_queue_capacity( nibble_queue const * const nq );
size_t nibble_queue_size( nibble_queue const * const nq );
bool nibble_queue_empty( nibble_queue const * const nq );
void nibble_queue_push_back( nibble_queue * const nq, uint8_t value, size_t const num_nibbles );
bool nibble_queue_can_pop( nibble_queue const * const nq, size_t num_nibbles );
uint8_t nibble_queue_pop_front( nibble_queue * const nq, size_t num_nibbles );
uint8_t nibble_queue_pop_all( nibble_queue * const nq );
