#!/usr/bin/env python3
"""
keyseed_test.py — Prove the AES master key is time-bucket-derived (not CSPRNG).

For each of N sequential app launches, capture:
  - master_key from *(libengine + 0x8280f0)
  - baseline DAT_009281a0 from (libengine + 0x8281a0)  [4-byte int]
  - z from SSL_write sink
  - host wall-clock time at capture

Then analyze: does key depend only on the ~16s time bucket?
If two launches in the SAME bucket give the SAME key -> time-derived key PROVEN.
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
function hexify(buf,n){var a=new Uint8Array(buf);var s='';for(var i=0;i<Math.min(a.length,n);i++)s+=('0'+a[i].toString(16)).slice(-2);return s;}
function rdptr(p){try{return p.readPointer();}catch(e){return null;}}
function rdbytes(p,n){try{return hexify(p.readByteArray(n),n);}catch(e){return null;}}

var eng=null, flut=null, reported=false;
var key=null, baseline=null;
function poll(){
  if(!eng){eng=Process.findModuleByName("libengine.so");}
  if(!flut){flut=Process.findModuleByName("libflutter.so");}
  if(!eng||!flut){setTimeout(poll,10);return;}
  if(!key){
    var kp=rdptr(eng.base.add(0x8280f0));
    if(kp&&!kp.isNull()){var b=rdbytes(kp,32);if(b)key=b;}
  }
  if(baseline===null){
    try{baseline=eng.base.add(0x8281a0).readS32();}catch(e){}
  }
  if(!reported && flut){
    if(!poll._sink){
      poll._sink=true;
      Interceptor.attach(flut.base.add(0x6d4be8),{
        onEnter:function(args){
          if(reported)return;
          for(var i=0;i<4;i++){try{var p=args[i];if(p.isNull())continue;var s=p.readCString(600);
            if(s&&s.indexOf("z=0c")!==-1){reported=true;var m=s.match(/z=([0-9a-f]{98,})/i);
              // refresh key/baseline
              var kp=rdptr(eng.base.add(0x8280f0)); if(kp&&!kp.isNull()){var b=rdbytes(kp,32);if(b)key=b;}
              try{baseline=eng.base.add(0x8281a0).readS32();}catch(e){}
              send({t:"CAP",z:m?m[1]:"",key:key,baseline:baseline});
              return;}}catch(e){}}
        }
      });
    }
  }
  setTimeout(poll,10);
}
poll();
"""

def one_launch(idx):
    subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
    time.sleep(1.0)
    subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
    t_launch = time.time()
    subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)
    device=None
    for i in range(80):
        time.sleep(0.06)
        try:
            d=frida.get_device_manager().add_remote_device("127.0.0.1:27052")
            procs=d.enumerate_processes()
            if procs: device=d; break
        except: pass
    if not device: return {"idx":idx,"err":"no gadget"}
    got={}
    def on_msg(msg,data):
        if msg['type']=='send':
            p=msg['payload']
            if p.get('t')=='CAP':
                got['z']=p.get('z'); got['key']=p.get('key'); got['baseline']=p.get('baseline')
                got['wall']=time.time()
    session=device.attach(device.enumerate_processes()[0].pid)
    sc=session.create_script(SCRIPT); sc.on('message',on_msg); sc.load()
    # wait up to 8s for capture
    for _ in range(80):
        if 'z' in got: break
        time.sleep(0.1)
    try: session.detach()
    except: pass
    got['idx']=idx; got['t_launch']=t_launch
    return got

results=[]
N=4
for i in range(N):
    r=one_launch(i)
    bucket = None
    if r.get('wall') is not None and r.get('baseline') is not None:
        bucket = (int(r['wall']) - r['baseline']) >> 4
    r['bucket']=bucket
    print(f"[launch {i}] wall={r.get('wall',0):.2f} baseline={r.get('baseline')} bucket={bucket}")
    print(f"           key={r.get('key')}")
    print(f"           z  ={r.get('z')}")
    results.append(r)
    sys.stdout.flush()

print("\n=== ANALYSIS ===")
# group by key
keys = {}
for r in results:
    k=r.get('key')
    if k: keys.setdefault(k,[]).append((r['idx'],r.get('bucket')))
print(f"distinct keys: {len(keys)} over {N} launches")
for k,v in keys.items():
    print(f"  key {k[:16]}...  launches/buckets: {v}")
# check bucket-key consistency
by_bucket={}
for r in results:
    b=r.get('bucket'); k=r.get('key')
    if b is not None and k: by_bucket.setdefault(b,set()).add(k)
print("bucket -> #distinct keys:")
for b,ks in by_bucket.items():
    print(f"  bucket {b}: {len(ks)} distinct key(s)")

with open("/tmp/keyseed_test.json","w") as f: json.dump(results,f,indent=2,default=str)
