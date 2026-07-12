// scanner8: AES-256-CBC key scanner using the REAL KDF from libengine.so
// Structure: z[48] = IV(16) + ct(32), version byte stripped
// Key = SHA256(PRNG(seed1_u32, seed2_u64))
// For each candidate 12 bytes in memory (4+8), derive key, try CBC decrypt, check PKCS7 padding
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/sha.h>
#include <openssl/evp.h>

typedef struct { uint8_t iv[16]; uint8_t ct[32]; int ctlen; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=4, g_nthreads=8; static volatile int g_found=0;

// Reproduce FUN_00161788 PRNG exactly
static void kdf_prng(uint32_t seed1, uint64_t seed2, uint8_t out[32]) {
    uint64_t uVar6 = (uint64_t)seed1 * 0x9e3779b1ULL;
    uint64_t uVar5 = seed2 * 0x5f356495ULL;
    memset(out, 0, 32);
    for (int i = 0; i < 16; i++) {
        int sh_lo = i & 7;
        uVar5 = (uVar5 ^ (uVar5 << 17)) * 0x9e3779b1ULL;
        uint64_t uVar7 = uVar5 + ((uVar6 ^ (uVar6 >> 13)) * 0x5f356495ULL);
        uVar6 = (uVar7 == 0xFFFFFFFFFFFFFFFFULL) ? 0 : uVar7;
        uint64_t mix = uVar6 ^ uVar5;
        out[i]      = (uint8_t)(mix >> sh_lo);
        out[i + 16] = (uint8_t)(mix >> ((i + 4) & 7));
    }
}

static void derive_key(uint32_t seed1, uint64_t seed2, uint8_t key[32]) {
    uint8_t prng_out[32];
    kdf_prng(seed1, seed2, prng_out);
    SHA256(prng_out, 32, key);
}

// Check PKCS7 padding validity
static int check_pkcs7(const uint8_t *pt, int len) {
    if (len < 16) return 0;
    uint8_t pad = pt[len-1];
    if (pad < 1 || pad > 16) return 0;
    for (int i = 0; i < pad; i++) {
        if (pt[len-1-i] != pad) return 0;
    }
    return 1;
}

// Try AES-256-CBC decrypt and check padding
static int try_cbc(const uint8_t *key, const uint8_t *iv, const uint8_t *ct, int ctlen) {
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    uint8_t pt[48];
    int len = 0, flen = 0;
    EVP_DecryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv);
    EVP_CIPHER_CTX_set_padding(ctx, 0); // manual padding check
    EVP_DecryptUpdate(ctx, pt, &len, ct, ctlen);
    EVP_DecryptFinal_ex(ctx, pt + len, &flen);
    EVP_CIPHER_CTX_free(ctx);
    int total = len + flen;
    return check_pkcs7(pt, total);
}

typedef struct { size_t start, end; } Job;
static void *worker(void *arg) {
    Job *j = (Job*)arg;
    size_t end = j->end;
    if (end > buflen - 12) end = buflen - 12;
    size_t start = j->start;
    if (g_align > 1 && start % g_align) start += g_align - (start % g_align);
    
    uint8_t key[32];
    
    for (size_t i = start; i < end && !g_found; i += g_align) {
        // Interpret 12 bytes as seed1(4, LE) + seed2(8, LE)
        uint32_t seed1;
        uint64_t seed2;
        memcpy(&seed1, buf + i, 4);
        memcpy(&seed2, buf + i + 4, 8);
        
        if (seed1 == 0 && seed2 == 0) continue; // skip null
        
        derive_key(seed1, seed2, key);
        
        for (int s = 0; s < nsamples; s++) {
            if (try_cbc(key, samples[s].iv, samples[s].ct, samples[s].ctlen)) {
                // Double-check with second sample if available
                int confirmed = 1;
                if (nsamples > 1) {
                    for (int s2 = 0; s2 < nsamples; s2++) {
                        if (s2 == s) continue;
                        if (!try_cbc(key, samples[s2].iv, samples[s2].ct, samples[s2].ctlen)) {
                            confirmed = 0;
                            break;
                        }
                    }
                }
                if (confirmed) {
                    fprintf(stderr, "\n*** CBC-KDF MATCH! seed1=0x%08x seed2=0x%016lx offset=%zu ***\n",
                            seed1, (unsigned long)seed2, i);
                    fprintf(stderr, "KEY=");
                    for (int k = 0; k < 32; k++) fprintf(stderr, "%02x", key[k]);
                    fprintf(stderr, "\n");
                    g_found = 1;
                    return NULL;
                }
            }
        }
        if ((i & 0x3ffffff) == 0) fprintf(stderr, "progress %zu/%zu\r", i, end);
    }
    return NULL;
}

static int hex2bin(const char *h, uint8_t *o, int max) {
    int n = 0;
    while (h[0] && h[1] && n < max) {
        unsigned v; sscanf(h, "%2x", &v); o[n++] = (uint8_t)v; h += 2;
    }
    return n;
}

static void add_sample(const char *z) {
    uint8_t r[64];
    int n = hex2bin(z, r, 64);
    if (n < 49) return;
    Sample *s = &samples[nsamples++];
    // Skip version byte, take IV(16) + ct(32)
    memcpy(s->iv, r + 1, 16);
    memcpy(s->ct, r + 17, 32);
    s->ctlen = 32;
}

int main(int argc, char **argv) {
    if (argc < 4) { fprintf(stderr, "usage: %s dump align z1 [z2..]\n", argv[0]); return 1; }
    g_align = atoi(argv[2]); if (g_align < 1) g_align = 1;
    for (int i = 3; i < argc; i++) add_sample(argv[i]);
    fprintf(stderr, "AES-256-CBC + KDF scanner: samples=%d align=%d\n", nsamples, g_align);
    
    // Self-test: encrypt with known seeds, verify we can detect it
    {
        uint8_t key[32], iv[16] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16};
        uint8_t pt[32] = "Hello World!!!!!"; // 16 bytes + PKCS7 pad of 16
        memset(pt + 16, 16, 16); // full pad block
        derive_key(0x12345678, 0xdeadbeefcafe1234ULL, key);
        uint8_t ct[32];
        EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
        int len, flen;
        EVP_EncryptInit_ex(ctx, EVP_aes_256_cbc(), NULL, key, iv);
        EVP_CIPHER_CTX_set_padding(ctx, 0);
        EVP_EncryptUpdate(ctx, ct, &len, pt, 32);
        EVP_EncryptFinal_ex(ctx, ct + len, &flen);
        EVP_CIPHER_CTX_free(ctx);
        int ok = try_cbc(key, iv, ct, 32);
        fprintf(stderr, "SELFTEST: %s\n", ok ? "PASS" : "FAIL");
        if (!ok) return 2;
    }
    
    FILE *f = fopen(argv[1], "rb");
    if (!f) { perror("open"); return 1; }
    fseek(f, 0, SEEK_END); buflen = ftell(f); fseek(f, 0, SEEK_SET);
    buf = malloc(buflen);
    if (fread(buf, 1, buflen, f) != buflen) { perror("read"); return 1; }
    fclose(f);
    fprintf(stderr, "dump %.0f MB\n", buflen / 1048576.0);
    
    pthread_t th[64]; Job jb[64];
    size_t ch = buflen / g_nthreads;
    for (int t = 0; t < g_nthreads; t++) {
        jb[t].start = t * ch;
        jb[t].end = (t == g_nthreads - 1) ? buflen : (t + 1) * ch + 12;
        pthread_create(&th[t], NULL, worker, &jb[t]);
    }
    for (int t = 0; t < g_nthreads; t++) pthread_join(th[t], NULL);
    if (!g_found) fprintf(stderr, "\nNO CBC-KDF MATCH\n");
    return g_found ? 0 : 1;
}
