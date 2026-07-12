// MAC-key scanner: tests whether the 16-byte trailer is a keyed MAC over the
// ciphertext (encrypt-then-MAC), independent of the encryption key. Covers
// HMAC-SHA256[:16], HMAC-SHA1[:16], HMAC-MD5, and naive SHA256(key||M)/SHA256(M||key).
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/hmac.h>
#include <openssl/sha.h>

typedef struct { uint8_t nonce[12]; uint8_t ct[64]; int ctlen; uint8_t tag[16]; uint8_t ver; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=8, g_nthreads=8; static volatile int g_found=0;

// build message variants for sample s into out, return len
static int build_msg(Sample*sm,int variant,uint8_t*out){
    // 0: ct ; 1: nonce||ct ; 2: ver||nonce||ct ; 3: ver||nonce||ct||? (nonce||ct||ver)
    if(variant==0){memcpy(out,sm->ct,sm->ctlen);return sm->ctlen;}
    if(variant==1){memcpy(out,sm->nonce,12);memcpy(out+12,sm->ct,sm->ctlen);return 12+sm->ctlen;}
    if(variant==2){out[0]=sm->ver;memcpy(out+1,sm->nonce,12);memcpy(out+13,sm->ct,sm->ctlen);return 13+sm->ctlen;}
    if(variant==3){memcpy(out,sm->nonce,12);memcpy(out+12,sm->ct,sm->ctlen);out[12+sm->ctlen]=sm->ver;return 13+sm->ctlen;}
    return 0;
}
#define NVAR 4

typedef struct{size_t start,end;}Job;
static void report(const char*t,int kl,int s,int v,size_t off,const uint8_t*key){
    fprintf(stderr,"\n*** MAC-MATCH type=%s keylen=%d sample=%d msgvar=%d fileoff=%zu ***\nKEY=",t,kl,s,v,off);
    for(int k=0;k<kl;k++)fprintf(stderr,"%02x",key[k]); fprintf(stderr,"\n"); g_found=1;
}
static void*worker(void*arg){
    Job*j=(Job*)arg; size_t end=j->end; int maxk=32; if(end>buflen-maxk)end=buflen-maxk;
    size_t start=j->start; if(g_align>1&&start%g_align)start+=g_align-(start%g_align);
    uint8_t msg[80]; uint8_t mac[64]; unsigned int ml;
    int keylens[2]={16,32};
    for(size_t i=start;i<end;i+=g_align){
        if(g_found)return NULL;
        for(int s=0;s<nsamples;s++){Sample*sm=&samples[s];
            for(int v=0;v<NVAR;v++){ int mlen=build_msg(sm,v,msg);
                for(int kli=0;kli<2;kli++){ int kl=keylens[kli]; const uint8_t*key=buf+i;
                    HMAC(EVP_sha256(),key,kl,msg,mlen,mac,&ml); if(memcmp(mac,sm->tag,16)==0){report("HMAC-SHA256",kl,s,v,i,key);return NULL;}
                    HMAC(EVP_sha1(),key,kl,msg,mlen,mac,&ml); if(memcmp(mac,sm->tag,16)==0){report("HMAC-SHA1",kl,s,v,i,key);return NULL;}
                    HMAC(EVP_md5(),key,kl,msg,mlen,mac,&ml); if(memcmp(mac,sm->tag,16)==0){report("HMAC-MD5",kl,s,v,i,key);return NULL;}
                    // naive keyed hashes
                    uint8_t tmp[128],d[32]; int tl=0; memcpy(tmp,key,kl);memcpy(tmp+kl,msg,mlen);tl=kl+mlen; SHA256(tmp,tl,d); if(memcmp(d,sm->tag,16)==0){report("SHA256(key||M)",kl,s,v,i,key);return NULL;}
                    memcpy(tmp,msg,mlen);memcpy(tmp+mlen,key,kl);tl=mlen+kl; SHA256(tmp,tl,d); if(memcmp(d,sm->tag,16)==0){report("SHA256(M||key)",kl,s,v,i,key);return NULL;}
                }
            }
        }
        if((i&0x7ffffff)==0)fprintf(stderr,"progress %zu/%zu\r",i,end);
    }
    return NULL;
}
static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){unsigned v;sscanf(h,"%2x",&v);o[n++]=(uint8_t)v;h+=2;}return n;}
static void add_sample(const char*z){uint8_t raw[64];int n=hex2bin(z,raw,64);if(n<49)return;Sample*s=&samples[nsamples++];s->ver=raw[0];memcpy(s->nonce,raw+1,12);s->ctlen=n-1-12-16;memcpy(s->ct,raw+13,s->ctlen);memcpy(s->tag,raw+13+s->ctlen,16);}
int main(int argc,char**argv){
    if(argc<4){fprintf(stderr,"usage: %s dump align z1 [z2..]\n",argv[0]);return 1;}
    g_align=atoi(argv[2]);if(g_align<1)g_align=1; for(int i=3;i<argc;i++)add_sample(argv[i]);
    fprintf(stderr,"samples=%d align=%d\n",nsamples,g_align);
    FILE*f=fopen(argv[1],"rb");if(!f){perror("open");return 1;}fseek(f,0,SEEK_END);buflen=ftell(f);fseek(f,0,SEEK_SET);
    buf=malloc(buflen);if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;}fclose(f);
    fprintf(stderr,"dump %.0f MB\n",buflen/1048576.0);
    pthread_t th[64];Job jobs[64];size_t chunk=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jobs[t].start=t*chunk;jobs[t].end=(t==g_nthreads-1)?buflen:(t+1)*chunk+32;pthread_create(&th[t],NULL,worker,&jobs[t]);}
    for(int t=0;t<g_nthreads;t++)pthread_join(th[t],NULL);
    if(!g_found)fprintf(stderr,"\nNO MAC-MATCH\n");
    return g_found?0:1;
}
