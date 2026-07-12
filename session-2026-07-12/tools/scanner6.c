// Derived-key scanner (tests hypothesis H2: per-message key = KDF(master, nonce)).
// For each candidate MASTER secret in memory, derive an AES-256 key via several
// common KDF forms and verify AES-256-GCM. Finds the *master* even when the
// per-message working key itself was wiped after use.
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <pthread.h>
#include <openssl/aes.h>
#include <openssl/sha.h>
#include <openssl/hmac.h>

typedef struct { uint8_t nonce[12]; uint8_t ct[64]; int ctlen; uint8_t tag[16]; uint8_t ver; } Sample;
static Sample samples[8]; static int nsamples=0;
static uint8_t *buf; static size_t buflen;
static int g_align=8,g_nthreads=8; static volatile int g_found=0;
static const uint8_t AAD_VER[1]={0x0c};

// GHASH + GCM verify (reused, self-tested design from scanner.c)
static void gf_mult(const uint8_t*X,const uint8_t*Y,uint8_t*out){uint8_t Z[16]={0},V[16];memcpy(V,Y,16);for(int i=0;i<128;i++){if((X[i>>3]>>(7-(i&7)))&1){for(int j=0;j<16;j++)Z[j]^=V[j];}int l=V[15]&1;for(int j=15;j>0;j--)V[j]=(uint8_t)((V[j]>>1)|((V[j-1]&1)<<7));V[0]>>=1;if(l)V[0]^=0xe1;}memcpy(out,Z,16);}
static void gh(uint8_t*Y,const uint8_t*H,const uint8_t*b){uint8_t t[16];for(int i=0;i<16;i++)t[i]=Y[i]^b[i];gf_mult(t,H,Y);}
static int gcm_verify(const uint8_t*key,const uint8_t*nonce,const uint8_t*ct,int ctlen,const uint8_t*aad,int aadlen,const uint8_t*tag){
    AES_KEY ek; if(AES_set_encrypt_key(key,256,&ek)!=0)return 0; uint8_t H[16]={0};AES_encrypt(H,H,&ek);
    uint8_t J0[16];memcpy(J0,nonce,12);J0[12]=0;J0[13]=0;J0[14]=0;J0[15]=1;uint8_t EJ[16];AES_encrypt(J0,EJ,&ek);
    uint8_t Y[16]={0},b[16]; if(aadlen>0){memset(b,0,16);memcpy(b,aad,aadlen);gh(Y,H,b);} 
    int off=0;while(off<ctlen){memset(b,0,16);int n=ctlen-off;if(n>16)n=16;memcpy(b,ct+off,n);gh(Y,H,b);off+=16;}
    memset(b,0,16);uint64_t ab=(uint64_t)aadlen*8,cb=(uint64_t)ctlen*8;for(int i=0;i<8;i++)b[7-i]=ab>>(8*i);for(int i=0;i<8;i++)b[15-i]=cb>>(8*i);gh(Y,H,b);
    uint8_t t[16];for(int i=0;i<16;i++)t[i]=Y[i]^EJ[i];return memcmp(t,tag,16)==0;
}

// derive candidate 32-byte keys from a master, return count, fill keys[][32]
static int derive(const uint8_t*m,int mlen,const uint8_t*nonce,uint8_t keys[8][32]){
    int n=0; uint8_t tmp[64]; unsigned int ml;
    SHA256(m,mlen,keys[n++]);                                   // key = SHA256(master)
    memcpy(tmp,m,mlen);memcpy(tmp+mlen,nonce,12);SHA256(tmp,mlen+12,keys[n++]);   // SHA256(master||nonce)
    memcpy(tmp,nonce,12);memcpy(tmp+12,m,mlen);SHA256(tmp,12+mlen,keys[n++]);     // SHA256(nonce||master)
    HMAC(EVP_sha256(),m,mlen,nonce,12,keys[n++],&ml);           // HMAC-SHA256(master,nonce)
    HMAC(EVP_sha256(),nonce,12,m,mlen,keys[n++],&ml);           // HMAC-SHA256(nonce,master)
    return n;
}
static const char* dname[5]={"SHA256(m)","SHA256(m||nonce)","SHA256(nonce||m)","HMAC(m,nonce)","HMAC(nonce,m)"};

typedef struct{size_t start,end;}Job;
static void*worker(void*arg){
    Job*j=(Job*)arg;size_t end=j->end;if(end>buflen-32)end=buflen-32;
    size_t start=j->start;if(g_align>1&&start%g_align)start+=g_align-(start%g_align);
    int mlens[2]={16,32}; uint8_t keys[8][32];
    for(size_t i=start;i<end;i+=g_align){ if(g_found)return NULL;
        for(int mi=0;mi<2;mi++){int mlen=mlens[mi];const uint8_t*m=buf+i;
            for(int s=0;s<nsamples;s++){Sample*sm=&samples[s];
                int nk=derive(m,mlen,sm->nonce,keys);
                for(int k=0;k<nk;k++){
                    if(gcm_verify(keys[k],sm->nonce,sm->ct,sm->ctlen,NULL,0,sm->tag)||
                       gcm_verify(keys[k],sm->nonce,sm->ct,sm->ctlen,AAD_VER,1,sm->tag)){
                        fprintf(stderr,"\n*** DERIVED-MATCH kdf=%s masterlen=%d sample=%d fileoff=%zu ***\nMASTER=",dname[k],mlen,s,i);
                        for(int x=0;x<mlen;x++)fprintf(stderr,"%02x",m[x]); fprintf(stderr,"\n");g_found=1;return NULL;
                    }
                }
            }
        }
        if((i&0x3ffffff)==0)fprintf(stderr,"progress %zu/%zu\r",i,end);
    }
    return NULL;
}
static int hex2bin(const char*h,uint8_t*o,int max){int n=0;while(h[0]&&h[1]&&n<max){unsigned v;sscanf(h,"%2x",&v);o[n++]=(uint8_t)v;h+=2;}return n;}
static void add_sample(const char*z){uint8_t r[64];int n=hex2bin(z,r,64);if(n<49)return;Sample*s=&samples[nsamples++];s->ver=r[0];memcpy(s->nonce,r+1,12);s->ctlen=n-1-12-16;memcpy(s->ct,r+13,s->ctlen);memcpy(s->tag,r+13+s->ctlen,16);}
int main(int argc,char**argv){
    if(argc<4){fprintf(stderr,"usage:%s dump align z1 [z2..]\n",argv[0]);return 1;}
    g_align=atoi(argv[2]);if(g_align<1)g_align=1;for(int i=3;i<argc;i++)add_sample(argv[i]);
    fprintf(stderr,"samples=%d align=%d (KDF forms x2 masterlens)\n",nsamples,g_align);
    FILE*f=fopen(argv[1],"rb");if(!f){perror("open");return 1;}fseek(f,0,SEEK_END);buflen=ftell(f);fseek(f,0,SEEK_SET);
    buf=malloc(buflen);if(fread(buf,1,buflen,f)!=buflen){perror("read");return 1;}fclose(f);
    fprintf(stderr,"dump %.0f MB\n",buflen/1048576.0);
    pthread_t th[64];Job jb[64];size_t ch=buflen/g_nthreads;
    for(int t=0;t<g_nthreads;t++){jb[t].start=t*ch;jb[t].end=(t==g_nthreads-1)?buflen:(t+1)*ch+32;pthread_create(&th[t],NULL,worker,&jb[t]);}
    for(int t=0;t<g_nthreads;t++)pthread_join(th[t],NULL);
    if(!g_found)fprintf(stderr,"\nNO DERIVED-MATCH\n");
    return g_found?0:1;
}
