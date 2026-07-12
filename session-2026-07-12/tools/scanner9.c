// scanner9: Pure AES-256-CBC key scan (no KDF) — scan for the raw 32-byte key
// that decrypts ALL z samples with valid PKCS7 padding.
// Structure: version(1) + IV(16) + ct(32) = 49 bytes
// A match on ALL 7 samples is cryptographic proof (P ≈ (1/256)^7 per candidate)
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/evp.h>

typedef struct { uint8_t iv[16]; uint8_t ct[32]; } Sample;
static Sample samples[16]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=8, g_nthreads=8; static volatile int g_found=0;

static int try_cbc(const uint8_t *key, int keylen, const Sample *s) {
    uint8_t pt[48]; int len=0, flen=0;
    EVP_CIPHER_CTX *ctx = EVP_CIPHER_CTX_new();
    const EVP_CIPHER *c = (keylen==16) ? EVP_aes_128_cbc() : EVP_aes_256_cbc();
    EVP_DecryptInit_ex(ctx, c, NULL, key, s->iv);
    EVP_CIPHER_CTX_set_padding(ctx, 0);
    EVP_DecryptUpdate(ctx, pt, &len, s->ct, 32);
    EVP_DecryptFinal_ex(ctx, pt+len, &flen);
    EVP_CIPHER_CTX_free(ctx);
    int total = len + flen;
    if (total < 16) return 0;
    uint8_t pad = pt[total-1];
    if (pad < 1 || pad > 16) return 0;
    for (int i = 0; i < pad; i++) if (pt[total-1-i] != pad) return 0;
    return 1;
}

typedef struct { size_t start, end; int keylen; } Job;
static void *worker(void *arg) {
    Job *j = (Job*)arg;
    int keylen = j->keylen;
    size_t end = j->end; if (end > buflen - keylen) end = buflen - keylen;
    size_t start = j->start;
    if (g_align > 1 && start % g_align) start += g_align - (start % g_align);
    
    for (size_t i = start; i < end && !g_found; i += g_align) {
        const uint8_t *key = buf + i;
        // Quick check first sample
        if (!try_cbc(key, keylen, &samples[0])) continue;
        // Check ALL remaining
        int all_ok = 1;
        for (int s = 1; s < nsamples; s++) {
            if (!try_cbc(key, keylen, &samples[s])) { all_ok = 0; break; }
        }
        if (all_ok) {
            fprintf(stderr, "\n*** ALL-SAMPLE CBC MATCH keylen=%d offset=%zu ***\nKEY=", keylen, i);
            for (int k = 0; k < keylen; k++) fprintf(stderr, "%02x", key[k]);
            fprintf(stderr, "\n");
            g_found = 1; return NULL;
        }
        if ((i & 0x3ffffff) == 0) fprintf(stderr, "progress %zu/%zu\r", i, end);
    }
    return NULL;
}

static void add_sample(const char *z) {
    uint8_t r[64]; int n=0;
    while (z[0] && z[1] && n < 64) { unsigned v; sscanf(z, "%2x", &v); r[n++]=(uint8_t)v; z+=2; }
    if (n < 49) return;
    Sample *s = &samples[nsamples++];
    memcpy(s->iv, r+1, 16);
    memcpy(s->ct, r+17, 32);
}

int main(int argc, char **argv) {
    if (argc < 5) { fprintf(stderr, "usage: %s dump keylen(16|32) align z1 z2 [z3..]\n", argv[0]); return 1; }
    int keylen = atoi(argv[2]);
    g_align = atoi(argv[3]); if (g_align < 1) g_align = 1;
    for (int i = 4; i < argc; i++) add_sample(argv[i]);
    fprintf(stderr, "AES-%d-CBC direct key scan: samples=%d align=%d (require ALL valid)\n", keylen*8, nsamples, g_align);
    
    FILE *f = fopen(argv[1], "rb"); if (!f) { perror("open"); return 1; }
    fseek(f, 0, SEEK_END); buflen = ftell(f); fseek(f, 0, SEEK_SET);
    buf = malloc(buflen); fread(buf, 1, buflen, f); fclose(f);
    fprintf(stderr, "dump %.0f MB\n", buflen/1048576.0);
    
    pthread_t th[64]; Job jb[64]; size_t ch = buflen / g_nthreads;
    for (int t = 0; t < g_nthreads; t++) {
        jb[t].start = t*ch; jb[t].end = (t==g_nthreads-1) ? buflen : (t+1)*ch+keylen;
        jb[t].keylen = keylen;
        pthread_create(&th[t], NULL, worker, &jb[t]);
    }
    for (int t = 0; t < g_nthreads; t++) pthread_join(th[t], NULL);
    if (!g_found) fprintf(stderr, "\nNO ALL-SAMPLE MATCH\n");
    return g_found ? 0 : 1;
}
