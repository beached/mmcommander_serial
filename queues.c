#include "queues.h"

static uint8_t get_mask8( size_t const right_zero_bits ) {
  uint8_t result = 0;
  result |= (1 << right_zero_bits);     // set bit
  result |= (result - 1);
  return result;
}

static uint16_t get_mask16( size_t const right_zero_bits ) {
  uint16_t result = 0;
  result |= (1 << right_zero_bits);     // set bit
  result |= (result - 1);
  return result;
}

void bit_queue_init( bit_queue * const bq ) {
  bq->m_queue = 0;
  bq->m_size = 0;
}

void bit_queue_push_back( bit_queue * const bq, uint8_t value, size_t const bits ) {
  bq->m_queue <<= bits;
  value &= get_mask8( bits );
  bq->m_queue |= value;
  bq->m_size += bits;
}

uint8_t bit_queue_pop_front( bit_queue * const bq, size_t const bits ) {
  uint16_t const mask_pos = bq->m_size - (bits - 1);
  uint8_t result = (uint8_t)(bq->m_queue >> (mask_pos - 1)); // right shift so that all but the left most 6bits are gone
  uint16_t const mask = ~(get_mask16( bits - 1 ) << (bq->m_size - bits));
  bq->m_queue &= mask;
  bq->m_size -= bits;
  return result;
}

bool bit_queue_can_pop( bit_queue const * const bq, size_t const bits ) {
  return bq->m_size >= bits;
}

uint8_t bit_queue_pop_all( bit_queue * const bq ) {
  uint8_t result = (uint8_t)(bq->m_queue);
  bit_queue_init( bq );
  return result;
}

size_t bit_queue_size( bit_queue const * const bq ) {
  return bq->m_size;
}

bool bit_queue_empty( bit_queue const * const bq ) {
  return 0 == bit_queue_size( bq );
}

size_t bit_queue_capacity( bit_queue const * const bq ) {
  return sizeof( bq->m_queue ) * 8;
}

void nibble_queue_init( nibble_queue * const nq ) {
  bit_queue_init( &(nq->m_queue) );
}

size_t nibble_queue_capacity( nibble_queue const * const nq ) {
  return bit_queue_capacity( &(nq->m_queue) );
}

size_t nibble_queue_size( nibble_queue const * const nq ) {
  return bit_queue_size( &(nq->m_queue) )/4;
}

bool nibble_queue_empty( nibble_queue const * const nq ) {
  return bit_queue_empty( &(nq->m_queue) );
}

void nibble_queue_push_back( nibble_queue * const nq, uint8_t value, size_t const num_nibbles ) {
  bit_queue_push_back( &(nq->m_queue), value, num_nibbles * 4 );
}

bool nibble_queue_can_pop( nibble_queue const * const nq, size_t num_nibbles ) {
  return bit_queue_can_pop( &(nq->m_queue), num_nibbles * 4 );
}

uint8_t nibble_queue_pop_front( nibble_queue * const nq, size_t num_nibbles ) {
  return bit_queue_pop_front( &(nq->m_queue), num_nibbles * 4 );
}

uint8_t nibble_queue_pop_all( nibble_queue * const nq ) {
  return bit_queue_pop_all( &(nq->m_queue) );
}

