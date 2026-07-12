// Structural-variant AEAD scanner: tests alternative z envelope splits, in
// particular IV(16)+ct(16)+tag(16) with a 16-byte GCM IV (J0 = GHASH(IV), not
// IV||1). OpenSSL EVP handles arbitrary IV lengths. Self-tested.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/evp.h>

typedef struct { uint8_t iv[16]; int ivlen; uint8_t ct[48]; int ctlen; uint8_t tag[16]; uint8_t ver; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=8,g_nthreads=8,g_ivlen=16,g_keylen=32; static volatile int g_found=0;
static const EVP_CIPHER* g_cip; static const char* g_algoname;
static const uint8_t AAD_VER[1]={0x0c};
static __thread EVP_CIPHER_CTX* tctx=NULL;

static int verify(const uint8_t*key,const uint8_t*iv,int ivlen,const uint8_t*ct,int ctlen,const uint8_t*aad,int aadlen,const uint8_t*tag){
    if(!tctx)tctx=EVP_CIPHER_CTX_new(); EVP_CIPHER_CTX*c=tctx; uint8_t out[64]; int len;
    if(EVP_DecryptInit_ex(c,g_cip,NULL,NULL,NULL)!=1)return 0;
    EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_IVLEN,ivlen,NULL);
    if(EVP_DecryptInit_ex(c,NULL,NULL,key,iv)!=1)return 0;
    if(aadlen>0){if(EVP_DecryptUpdate(c,NULL,&len,aad,aadlen)!=1)return 0;}
    if(EVP_DecryptUpdate(c,out,&len,ct,ctlen)!=1)return 0;
    EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_TAG,16,(void*)tag);
    int fl; return EVP_DecryptFinal_ex(c,out+len,&fl)>0;
}
typedef struct{size_t start,end;}Job;
static void*worker(void*arg){
    Job*j=(Job*)arg;size_t end=j->end;if(end>buflen-g_keylen)end=buflen-g_keylen;
    size_t start=j->start;if(g_align>1&&start%g_align)start+=g_align-(start%g_align);
    for(size_t i=start;i<end;i+=g_align){ if(g_found)return NULL;
        const uint8_t*key=buf+i;
        for(int s=0;s<nsamples;s++){Sample*sm=&samples[s];
            if(verify(key,sm->iv,sm->ivlen,sm->ct,sm->ctlen,NULL,0,sm->tag)||
               verify(key,sm->iv,sm->ivlen,sm->ct,sm->ctlen,AAD_VER,1,sm->tag)){
                fprintf(stderr,"\n*** MATCH algo=%s ivlen=%d keylen=%d ctlen=%d sample=%d fileoff=%zu ***\nKEY=",g_algoname,sm->ivlen,g_keylen,sm->ctlen,s,i);
                for(int k=0;k<g_keylen;k++)fprintf(stderr,"%02x",key[k]);fprintf(stderr,"\n");g_found=1;return NULL;
            }
        }
        if((i&0x3ffffff)==0)fprintf(stderr,"progress %zu/%zu\r",i,end);
    }
    return NULL;
}
static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){unsigned v;sscanf(h,"%2x",&v);o[n++]=(uint8_t)v;h+=2;}return n;}
static void add_sample(const char*z){uint8_t r[64];int n=hex2bin(z,r,64);if(n<49)return;Sample*s=&samples[nsamples++];s->ver=r[0];s->ivlen=g_ivlen;memcpy(s->iv,r+1,g_ivlen);s->ctlen=n-1-g_ivlen-16;memcpy(s->ct,r+1+g_ivlen,s->ctlen);memcpy(s->tag,r+1+g_ivlen+s->ctlen,16);}
static void selftest(){ // encrypt with 16-byte IV GCM, ensure verify accepts
    uint8_t key[32],iv[16],pt[16],ct[48],tag[16];for(int i=0;i<32;i++)key[i]=i;for(int i=0;i<16;i++){iv[i]=0xB0+i;pt[i]=i*3;}
    EVP_CIPHER_CTX*c=EVP_CIPHER_CTX_new();int len;EVP_EncryptInit_ex(c,g_cip,NULL,NULL,NULL);EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_IVLEN,g_ivlen,NULL);EVP_EncryptInit_ex(c,NULL,NULL,key,iv);EVP_EncryptUpdate(c,ct,&len,pt,16);int fl;EVP_EncryptFinal_ex(c,ct+len,&fl);EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_GET_TAG,16,tag);EVP_CIPHER_CTX_free(c);
    int ok=verify(key,iv,g_ivlen,ct,16,NULL,0,tag);fprintf(stderr,"SELFTEST %s ivlen=%d: %s\n",g_algoname,g_ivlen,ok?"PASS":"FAIL");if(!ok)exit(2);
}
int main(int argc,char**argv){
    if(argc<5){fprintf(stderr,"usage:%s dump algo(gcm256|gcm128) ivlen align z1 [z2..]\n",argv[0]);return 1;}
    if(!strcmp(argv[2],"gcm256")){g_cip=EVP_aes_256_gcm();g_algoname="AES-256-GCM";g_keylen=32;}
    else{g_cip=EVP_aes_128_gcm();g_algoname="AES-128-GCM";g_keylen=16;}
    g_ivlen=atoi(argv[3]); g_align=atoi(argv[4]); if(g_align<1)g_align=1;
    selftest();
    for(int i=5;i<argc;i++)add_sample(argv[i]);
    fprintf(stderr,"algo=%s keylen=%d ivlen=%d align=%d samples=%d ctlen=%d\n",g_algoname,g_keylen,g_ivlen,g_align,nsamples,nsamples?samples[0].ctlen:0);
    FILE*f=fopen(argv[1],"rb");if(!f){perror("open");return 1;}fseek(f,0,SEEK_END);buflen=ftell(f);fseek(f,0,SEEK_SET);
    buf=malloc(buflen);if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;}fclose(f);
    fprintf(stderr,"dump %.0f MB\n",buflen/1048576.0);
    pthread_t th[64];Job jb[64];size_t ch=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jb[t].start=t*ch;jb[t].end=(t==g_nthreads-1)?buflen:(t+1)*ch+g_keylen;pthread_create(&th[t],NULL,worker,&jb[t]);}
    for(int t=0;t<g_nthreads;t++)pthread_join(th[t],NULL);
    if(!g_found)fprintf(stderr,"\nNO MATCH (algo=%s ivlen=%d)\n",g_algoname,g_ivlen);
    return g_found?0:1;
}
