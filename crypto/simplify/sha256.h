#ifndef HEADER_SHA256_H
#define HEADER_SHA256_H

#include <stdint.h>

#ifdef  __cplusplus
extern "C" {
#endif

#define SHA256_BLOCK_SIZE 32

typedef struct {
    uint8_t data[64];
    uint32_t datalen;
    unsigned long long bitlen;
    uint32_t state[8];
} SHA256_CTX;

void sha256_init(SHA256_CTX *ctx);
void sha256_update(SHA256_CTX *ctx, const uint8_t data[], uint32_t len);
void sha256_final(SHA256_CTX *ctx, uint8_t hash[]);
void sha256(const uint8_t data[], uint32_t len, uint8_t hash[]);
# ifdef  __cplusplus
}
# endif
# endif

