// AEAD key scanner v2: tests AES-256-GCM AND ChaCha20-Poly1305 (both use 12B
// nonce + 16B tag), with AAD variants (empty / version-byte). Uses OpenSSL EVP.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/evp.h>

typedef struct { uint8_t nonce[12]; uint8_t ct[64]; int ctlen; uint8_t tag[16]; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=1, g_nthreads=8; static volatile int g_found=0;
static const uint8_t AAD_VER[1]={0x0c};

typedef struct { const EVP_CIPHER*cip; const char*name; int keylen; } Algo;

static __thread EVP_CIPHER_CTX *tctx=NULL;

static int aead_verify(const EVP_CIPHER*cip,const uint8_t*key,const uint8_t*nonce,
                       const uint8_t*ct,int ctlen,const uint8_t*aad,int aadlen,const uint8_t*tag){
    if(!tctx) tctx=EVP_CIPHER_CTX_new();
    EVP_CIPHER_CTX *c=tctx;
    uint8_t out[80]; int len;
    if(EVP_DecryptInit_ex(c,cip,NULL,NULL,NULL)!=1) return 0;
    EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_IVLEN,12,NULL);
    if(EVP_DecryptInit_ex(c,NULL,NULL,key,nonce)!=1) return 0;
    if(aadlen>0){ if(EVP_DecryptUpdate(c,NULL,&len,aad,aadlen)!=1) return 0; }
    if(EVP_DecryptUpdate(c,out,&len,ct,ctlen)!=1) return 0;
    EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_TAG,16,(void*)tag);
    int fl; return EVP_DecryptFinal_ex(c,out+len,&fl)>0;
}

static Algo algos[2];
static int nalgos=0;

typedef struct { size_t start,end; } Job;
static void *worker(void*arg){
    Job*j=(Job*)arg; size_t end=j->end;
    for(int a=0;a<nalgos;a++){ if(buflen<(size_t)algos[a].keylen) return NULL; }
    for(size_t i=j->start;i<end;i+=g_align){
        if(g_found) return NULL;
        for(int a=0;a<nalgos;a++){
            int kl=algos[a].keylen; if(i+kl>buflen) continue;
            const uint8_t*key=buf+i;
            for(int s=0;s<nsamples;s++){ Sample*sm=&samples[s];
                // Build AAD candidates per sample
                uint8_t aad_vn[13]; aad_vn[0]=0x0c; memcpy(aad_vn+1,sm->nonce,12);
                const uint8_t v20[2]={0x32,0x30}; // "20"
                const uint8_t* aads[6]={NULL, AAD_VER, v20, sm->nonce, aad_vn, sm->tag};
                int aadlens[6]={0,1,2,12,13,0};
                int naad=5; (void)aads;
                int hit=-1;
                for(int q=0;q<naad;q++){
                    if(aead_verify(algos[a].cip,key,sm->nonce,sm->ct,sm->ctlen,aads[q],aadlens[q],sm->tag)){hit=q;break;}
                }
                if(hit>=0){
                    fprintf(stderr,"\n*** MATCH algo=%s sample=%d aadvariant=%d fileoff=%zu ***\nKEY=",algos[a].name,s,hit,i);
                    for(int k=0;k<kl;k++) fprintf(stderr,"%02x",key[k]);
                    fprintf(stderr,"\n"); g_found=1; return NULL;
                }
            }
        }
        if((i&0x3ffffff)==0) fprintf(stderr,"progress %zu/%zu\r",i,end);
    }
    return NULL;
}

static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){unsigned v;sscanf(h,"%2x",&v);o[n++]=(uint8_t)v;h+=2;}return n;}
static void add_sample(const char*z){uint8_t raw[64];int n=hex2bin(z,raw,64);if(n<49){fprintf(stderr,"bad sample\n");return;}Sample*s=&samples[nsamples++];memcpy(s->nonce,raw+1,12);s->ctlen=n-1-12-16;memcpy(s->ct,raw+13,s->ctlen);memcpy(s->tag,raw+13+s->ctlen,16);}

static int enc_ref(const EVP_CIPHER*cip,const uint8_t*key,const uint8_t*nonce,const uint8_t*pt,int ptlen,uint8_t*ct,uint8_t*tag){
    EVP_CIPHER_CTX*c=EVP_CIPHER_CTX_new(); int len;
    EVP_EncryptInit_ex(c,cip,NULL,NULL,NULL); EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_SET_IVLEN,12,NULL);
    EVP_EncryptInit_ex(c,NULL,NULL,key,nonce); EVP_EncryptUpdate(c,ct,&len,pt,ptlen); int fl; EVP_EncryptFinal_ex(c,ct+len,&fl);
    EVP_CIPHER_CTX_ctrl(c,EVP_CTRL_AEAD_GET_TAG,16,tag); EVP_CIPHER_CTX_free(c); return len;
}
static void selftest(){
    uint8_t key[32],nonce[12],pt[20],ct[64],tag[16];
    for(int i=0;i<32;i++)key[i]=i; for(int i=0;i<12;i++)nonce[i]=0xA0+i; for(int i=0;i<20;i++)pt[i]=i*7;
    const EVP_CIPHER*cs[2]={EVP_aes_256_gcm(),EVP_chacha20_poly1305()};
    const char*nm[2]={"AES-256-GCM","ChaCha20-Poly1305"};
    for(int a=0;a<2;a++){ enc_ref(cs[a],key,nonce,pt,20,ct,tag);
        int ok=aead_verify(cs[a],key,nonce,ct,20,NULL,0,tag);
        fprintf(stderr,"SELFTEST %s: %s\n",nm[a],ok?"PASS":"FAIL"); if(!ok)exit(2);
    }
}
int main(int argc,char**argv){
    if(argc<4){fprintf(stderr,"usage: %s dumpfile algo(gcm|chacha|both) align z1 [z2..]\n",argv[0]);return 1;}
    selftest();
    const char*path=argv[1]; const char*am=argv[2]; g_align=atoi(argv[3]); if(g_align<1)g_align=1;
    for(int i=4;i<argc;i++) add_sample(argv[i]);
    if(!strcmp(am,"gcm")||!strcmp(am,"both")){algos[nalgos].cip=EVP_aes_256_gcm();algos[nalgos].name="AES-256-GCM";algos[nalgos].keylen=32;nalgos++;}
    if(!strcmp(am,"chacha")||!strcmp(am,"both")){algos[nalgos].cip=EVP_chacha20_poly1305();algos[nalgos].name="ChaCha20-Poly1305";algos[nalgos].keylen=32;nalgos++;}
    fprintf(stderr,"algos=%d samples=%d align=%d\n",nalgos,nsamples,g_align);
    FILE*f=fopen(path,"rb"); if(!f){perror("open");return 1;} fseek(f,0,SEEK_END);buflen=ftell(f);fseek(f,0,SEEK_SET);
    buf=malloc(buflen); if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;} fclose(f);
    fprintf(stderr,"dump %.0f MB\n",buflen/1048576.0);
    pthread_t th[64]; Job jobs[64]; size_t chunk=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jobs[t].start=t*chunk;jobs[t].end=(t==g_nthreads-1)?buflen:(t+1)*chunk+32;pthread_create(&th[t],NULL,worker,&jobs[t]);}
    for(int t=0;t<g_nthreads;t++) pthread_join(th[t],NULL);
    if(!g_found) fprintf(stderr,"\nNO MATCH (algo=%s)\n",am);
    return g_found?0:1;
}
