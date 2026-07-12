// AES-GCM key scanner: slides over a memory dump, treats every byte offset as a
// candidate AES key, and verifies the GCM authentication tag against captured
// z-samples. A tag match is cryptographic proof (false-positive prob = 2^-128).
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/aes.h>

typedef struct { uint8_t nonce[12]; uint8_t ct[64]; int ctlen; uint8_t tag[16]; } Sample;

static Sample samples[8];
static int nsamples = 0;

// GF(2^128) multiply (GHASH), big-endian bit order per NIST SP800-38D
static void gf_mult(const uint8_t *X, const uint8_t *Y, uint8_t *out){
    uint8_t Z[16]={0}, V[16];
    memcpy(V,Y,16);
    for(int i=0;i<128;i++){
        if((X[i>>3]>>(7-(i&7)))&1){ for(int j=0;j<16;j++) Z[j]^=V[j]; }
        int lsb=V[15]&1;
        for(int j=15;j>0;j--) V[j]=(uint8_t)((V[j]>>1)|((V[j-1]&1)<<7));
        V[0]>>=1;
        if(lsb) V[0]^=0xe1;
    }
    memcpy(out,Z,16);
}

static void ghash_update(uint8_t *Y, const uint8_t *H, const uint8_t *block){
    uint8_t tmp[16];
    for(int i=0;i<16;i++) tmp[i]=Y[i]^block[i];
    gf_mult(tmp,H,Y);
}

// Verify GCM tag for a candidate key. Returns 1 if tag matches.
static int gcm_verify(const uint8_t *key, int keybits,
                      const uint8_t *nonce, const uint8_t *ct, int ctlen,
                      const uint8_t *aad, int aadlen, const uint8_t *tag){
    AES_KEY ek;
    if(AES_set_encrypt_key(key, keybits, &ek)!=0) return 0;
    uint8_t H[16]={0}; AES_encrypt(H,H,&ek);          // H = E_K(0^128)
    // J0 = nonce(12) || 0x00000001
    uint8_t J0[16]; memcpy(J0,nonce,12); J0[12]=0;J0[13]=0;J0[14]=0;J0[15]=1;
    uint8_t EJ0[16]; AES_encrypt(J0,EJ0,&ek);
    // GHASH over AAD || C || len(A)||len(C)
    uint8_t Y[16]={0}, blk[16];
    if(aadlen>0){
        memset(blk,0,16); memcpy(blk,aad,aadlen<16?aadlen:16);
        ghash_update(Y,H,blk);
    }
    int off=0;
    while(off<ctlen){
        memset(blk,0,16);
        int n=ctlen-off; if(n>16)n=16;
        memcpy(blk,ct+off,n);
        ghash_update(Y,H,blk);
        off+=16;
    }
    memset(blk,0,16);
    uint64_t abits=(uint64_t)aadlen*8, cbits=(uint64_t)ctlen*8;
    for(int i=0;i<8;i++) blk[7-i]=(uint8_t)(abits>>(8*i));
    for(int i=0;i<8;i++) blk[15-i]=(uint8_t)(cbits>>(8*i));
    ghash_update(Y,H,blk);
    uint8_t t[16];
    for(int i=0;i<16;i++) t[i]=Y[i]^EJ0[i];
    return memcmp(t,tag,16)==0;
}

static uint8_t *buf; static size_t buflen;
static int g_keybytes; static int g_nthreads; static int g_align=1;
static volatile int g_found=0;

// AAD variants to test: empty, and single version byte 0x0c
static const uint8_t AAD_VER[1]={0x0c};

typedef struct { size_t start,end; int tid; } Job;

static void *worker(void *arg){
    Job *j=(Job*)arg;
    int kb=g_keybytes; int kbits=kb*8;
    size_t end = j->end; if(end>buflen-kb) end=buflen-kb;
    size_t start=j->start; if(g_align>1){ if(start % g_align) start += g_align-(start%g_align); }
    for(size_t i=start; i<end; i+=g_align){
        if(g_found) return NULL;
        const uint8_t *key=buf+i;
        for(int s=0;s<nsamples;s++){
            Sample *sm=&samples[s];
            // aad empty
            if(gcm_verify(key,kbits,sm->nonce,sm->ct,sm->ctlen,NULL,0,sm->tag)){
                fprintf(stderr,"\n*** MATCH keybytes=%d aad=EMPTY sample=%d fileoff=%zu ***\nKEY=",kb,s,i);
                for(int k=0;k<kb;k++) fprintf(stderr,"%02x",key[k]);
                fprintf(stderr,"\n"); g_found=1; return NULL;
            }
            // aad = 0x0c
            if(gcm_verify(key,kbits,sm->nonce,sm->ct,sm->ctlen,AAD_VER,1,sm->tag)){
                fprintf(stderr,"\n*** MATCH keybytes=%d aad=0x0c sample=%d fileoff=%zu ***\nKEY=",kb,s,i);
                for(int k=0;k<kb;k++) fprintf(stderr,"%02x",key[k]);
                fprintf(stderr,"\n"); g_found=1; return NULL;
            }
        }
        if((i & 0x3ffffff)==0) fprintf(stderr,"[kb=%d] progress %zu / %zu\r",kb,i,end);
    }
    return NULL;
}

static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){int hi,lo;sscanf(h,"%1x",&hi);sscanf(h+1,"%1x",&lo);o[n++]=(uint8_t)(hi*16+lo);h+=2;}return n;}

static void add_sample(const char*z){
    // z = version(1) nonce(12) ct(20) tag(16) in hex (49 bytes => 98 hex chars)
    uint8_t raw[64]; int n=hex2bin(z,raw,64);
    if(n<49){fprintf(stderr,"bad sample len %d\n",n);return;}
    Sample*s=&samples[nsamples++];
    memcpy(s->nonce,raw+1,12);
    s->ctlen=n-1-12-16;
    memcpy(s->ct,raw+13,s->ctlen);
    memcpy(s->tag,raw+13+s->ctlen,16);
}

static void selftest(){
    // Generate a reference with OpenSSL-independent path: use our own gcm over a
    // known key/nonce by first computing a tag, then verifying it accepts.
    // Reference vector: NIST-style. key=all 0x00 (128-bit), nonce=all 0, ct empty.
    // Known answer: tag for empty msg/aad with zero key/iv = 0x58e2fccefa7e3061367f1d57a4e7455a
    uint8_t key[16]={0}; uint8_t nonce[12]={0};
    uint8_t exp[16]={0x58,0xe2,0xfc,0xce,0xfa,0x7e,0x30,0x61,0x36,0x7f,0x1d,0x57,0xa4,0xe7,0x45,0x5a};
    if(gcm_verify(key,128,nonce,NULL,0,NULL,0,exp)) fprintf(stderr,"SELFTEST-128 PASS\n");
    else { fprintf(stderr,"SELFTEST-128 FAIL\n"); exit(2);} 
}

int main(int argc,char**argv){
    if(argc<4){fprintf(stderr,"usage: %s dumpfile keybytes(16|24|32) align z1 [z2..]\n",argv[0]);return 1;}
    selftest();
    const char*path=argv[1];
    g_keybytes=atoi(argv[2]);
    g_align=atoi(argv[3]); if(g_align<1)g_align=1;
    for(int i=4;i<argc;i++) add_sample(argv[i]);
    fprintf(stderr,"align=%d\n",g_align);
    fprintf(stderr,"loaded %d samples, keybytes=%d\n",nsamples,g_keybytes);
    FILE*f=fopen(path,"rb"); if(!f){perror("open");return 1;}
    fseek(f,0,SEEK_END); buflen=ftell(f); fseek(f,0,SEEK_SET);
    buf=malloc(buflen); if(!buf){perror("malloc");return 1;}
    if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;}
    fclose(f);
    fprintf(stderr,"dump %zu bytes (%.0f MB)\n",buflen,buflen/1048576.0);
    g_nthreads=8;
    pthread_t th[64]; Job jobs[64];
    size_t chunk=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jobs[t].tid=t;jobs[t].start=t*chunk;jobs[t].end=(t==g_nthreads-1)?buflen:(t+1)*chunk+g_keybytes;pthread_create(&th[t],NULL,worker,&jobs[t]);}
    for(int t=0;t<g_nthreads;t++) pthread_join(th[t],NULL);
    if(!g_found) fprintf(stderr,"\nNO MATCH for keybytes=%d\n",g_keybytes);
    return g_found?0:1;
}
