// Known-plaintext CTR-keystream scanner. Robust to AAD/tag/auth assumptions:
// only uses the AES-CTR keystream (confidentiality), checks if decrypted
// plaintext contains a known needle (device android_id bytes / ascii).
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/aes.h>

typedef struct { uint8_t nonce[12]; uint8_t ct[64]; int ctlen; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=8, g_nthreads=8, g_keybytes=32; static volatile int g_found=0;

// needles to look for in decrypted plaintext
static uint8_t needle_raw[8]={0x88,0x40,0xbf,0x6a,0x81,0x67,0x9f,0xc4}; // android_id bytes
static const char* needle_ascii="8840bf6a"; // android_id ascii prefix

static int contains(const uint8_t*p,int plen,const uint8_t*n,int nlen){
    for(int i=0;i+nlen<=plen;i++){ if(memcmp(p+i,n,nlen)==0) return 1; } return 0;
}

typedef struct { size_t start,end; } Job;
static void*worker(void*arg){
    Job*j=(Job*)arg; int kb=g_keybytes,kbits=kb*8; size_t end=j->end; if(end>buflen-kb)end=buflen-kb;
    size_t start=j->start; if(g_align>1 && start%g_align) start+=g_align-(start%g_align);
    for(size_t i=start;i<end;i+=g_align){
        if(g_found)return NULL;
        AES_KEY ek; if(AES_set_encrypt_key(buf+i,kbits,&ek)!=0) continue;
        for(int s=0;s<nsamples;s++){ Sample*sm=&samples[s];
            for(int startctr=0; startctr<=2; startctr++){
                uint8_t pt[64]; int cl=sm->ctlen;
                for(int b=0;b*16<cl;b++){
                    uint8_t ctr[16]; memcpy(ctr,sm->nonce,12);
                    uint32_t c=startctr+b; ctr[12]=c>>24;ctr[13]=c>>16;ctr[14]=c>>8;ctr[15]=c;
                    uint8_t ks[16]; AES_encrypt(ctr,ks,&ek);
                    for(int k=0;k<16 && b*16+k<cl;k++) pt[b*16+k]=sm->ct[b*16+k]^ks[k];
                }
                if(contains(pt,cl,needle_raw,8) || contains(pt,cl,(const uint8_t*)needle_ascii,8)){
                    fprintf(stderr,"\n*** KP-MATCH sample=%d startctr=%d fileoff=%zu ***\nKEY=",s,startctr,i);
                    for(int k=0;k<kb;k++)fprintf(stderr,"%02x",buf[i+k]);
                    fprintf(stderr,"\nPT=");for(int k=0;k<cl;k++)fprintf(stderr,"%02x",pt[k]);
                    fprintf(stderr,"\n");g_found=1;return NULL;
                }
            }
        }
        if((i&0x7ffffff)==0) fprintf(stderr,"progress %zu/%zu\r",i,end);
    }
    return NULL;
}
static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){unsigned v;sscanf(h,"%2x",&v);o[n++]=(uint8_t)v;h+=2;}return n;}
static void add_sample(const char*z){uint8_t raw[64];int n=hex2bin(z,raw,64);if(n<49)return;Sample*s=&samples[nsamples++];memcpy(s->nonce,raw+1,12);s->ctlen=n-1-12-16;memcpy(s->ct,raw+13,s->ctlen);}
int main(int argc,char**argv){
    if(argc<5){fprintf(stderr,"usage: %s dump keybytes align z1 [z2..]\n",argv[0]);return 1;}
    g_keybytes=atoi(argv[2]); g_align=atoi(argv[3]); if(g_align<1)g_align=1;
    for(int i=4;i<argc;i++)add_sample(argv[i]);
    fprintf(stderr,"samples=%d kb=%d align=%d\n",nsamples,g_keybytes,g_align);
    FILE*f=fopen(argv[1],"rb");if(!f){perror("open");return 1;}fseek(f,0,SEEK_END);buflen=ftell(f);fseek(f,0,SEEK_SET);
    buf=malloc(buflen);if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;}fclose(f);
    fprintf(stderr,"dump %.0f MB\n",buflen/1048576.0);
    pthread_t th[64];Job jobs[64];size_t chunk=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jobs[t].start=t*chunk;jobs[t].end=(t==g_nthreads-1)?buflen:(t+1)*chunk+g_keybytes;pthread_create(&th[t],NULL,worker,&jobs[t]);}
    for(int t=0;t<g_nthreads;t++)pthread_join(th[t],NULL);
    if(!g_found)fprintf(stderr,"\nNO KP-MATCH\n");
    return g_found?0:1;
}
