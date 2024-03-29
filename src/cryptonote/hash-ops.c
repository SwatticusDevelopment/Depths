#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include <cryptonote/hash-ops.h>
#include <cryptonote/c_keccak.h>

void hash_permutation(union hash_state *state) {
#if BYTE_ORDER == LITTLE_ENDIAN
  keccakf((uint64_t*)state, 24);
#else
  uint64_t le_state[25];
  memcpy_swap64le(le_state, state, 25);
  keccakf(le_state, 24);
  memcpy_swap64le(state, le_state, 25);
#endif
}


void hash_process(union hash_state *state, const uint8_t *buf, size_t count) {
  keccak1600(buf, count, (uint8_t*)state);
}
