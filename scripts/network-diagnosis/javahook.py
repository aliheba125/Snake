import frida, sys, time, subprocess

dev = frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME = int(sys.argv[1]) if len(sys.argv) > 1 else 60
D='localhost:5555'

def adb(*a): subprocess.run(['adb','-s',D,'shell',*a], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

# make sure we start clean-ish: bring app up
subprocess.run(['adb','-s',D,'shell','am','start','-n','com.snake/com.Entry'], stdin=subprocess.DEVNULL, stdout=subprocess.DEVNULL, stderr=subprocess.DEVNULL)

# poll for the freshly-started main process
pid=None
for _ in range(200):
    for p in dev.enumerate_processes():
        if p.name == 'Snake Engine' or p.name == 'com.snake':
            # want the main (has libapp) — attach and check
            pid = p.pid; break
    if pid: break
    time.sleep(0.02)
print('[*] attaching pid=%s' % pid, flush=True)
session = dev.attach(pid)

JS = r'''
'use strict';
var LIB='libengine.so', OFF_KDF=0x161788, OFF_AES=0x160208, PSZ=Process.pointerSize;
function baseOf(n){ try{ var m=Process.findModuleByName(n); return m?m.base:null; }catch(e){ return null; } }
function readVec(v){ try{ var b=v.readPointer(), e=v.add(PSZ).readPointer(); var l=e.sub(b).toInt32(); if(l>0&&l<0x20000) return {ptr:b,len:l}; }catch(e){} return null; }
function hx(ptr,len){ try{ var ba=ptr.readByteArray(len); return Array.prototype.map.call(new Uint8Array(ba),function(x){return ('0'+x.toString(16)).slice(-2);}).join(''); }catch(e){ return null; } }

// native AES/KDF hooks (if they fire)
var b=baseOf(LIB);
if(b){
  try{
    Interceptor.attach(b.add(OFF_KDF), { onEnter:function(a){ send({t:'kdf', s1:'0x'+(a[1].toUInt32()>>>0).toString(16), s2:a[2].toString()}); } });
    Interceptor.attach(b.add(OFF_AES), { onEnter:function(a){ this.o=a[2]; var v=readVec(a[1]); send({t:'aes_in', len:v?v.len:0, hex:v?hx(v.ptr,v.len):null}); }, onLeave:function(){ var v=readVec(this.o); send({t:'aes_out', len:v?v.len:0, hex:v?hx(v.ptr,v.len):null}); } });
    send({t:'log', m:'native hooks @ '+b});
  }catch(e){ send({t:'log', m:'native hook err '+e}); }
}

// Java-layer hooks on com.snake.helper.Native
function b2h(arr){ try{ var s=''; for(var i=0;i<arr.length;i++){ s+=('0'+((arr[i]+256)%256).toString(16)).slice(-2);} return s; }catch(e){ return null; } }
Java.perform(function(){
  try{
    var N = Java.use('com.snake.helper.Native');
    N.ilil.implementation = function(x){ var r=this.ilil(x); send({t:'ilil', arg:x, ret:(''+r)}); return r; };
    N.djp.implementation  = function(x){ var r=this.djp(x); var b=Java.array('byte', r); send({t:'djp', arg:x, len:(r?r.length:0), hex:(r?b2h(b):null)}); return r; };
    N.chl.implementation  = function(bytes){ var r=this.chl(bytes); send({t:'chl', inlen:(bytes?bytes.length:0), inhex:(bytes?b2h(bytes):null), ret:r}); return r; };
    N.aior.implementation = function(a,b2){ send({t:'aior', a:(''+a), b:(''+b2)}); return this.aior(a,b2); };
    N.awl.implementation  = function(a){ send({t:'awl', a:(''+a)}); return this.awl(a); };
    N.i.implementation    = function(x){ send({t:'i', arg:x}); return this.i(x); };
    N.eio.implementation  = function(){ send({t:'eio'}); return this.eio(); };
    send({t:'log', m:'Java Native hooks installed'});
  }catch(e){ send({t:'log', m:'java hook err: '+e}); }
});
'''

cnt={}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t'); cnt[t]=cnt.get(t,0)+1
        if t=='log': print('[log]', p['m'], flush=True)
        elif t=='ilil': print('[ilil] key=%s => %r' % (p['arg'], p['ret'][:200]), flush=True)
        elif t=='djp': print('[djp] key=%s len=%d hex=%s' % (p['arg'], p['len'], (p['hex'] or '')[:160]), flush=True)
        elif t=='chl': print('[chl] inlen=%s ret=%s inhex=%s' % (p['inlen'], p['ret'], (p['inhex'] or '')[:120]), flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s' % (p['s1'], p['s2']), flush=True)
        elif t in ('aes_in','aes_out'): print('[%s] len=%d hex=%s' % (t, p['len'], (p['hex'] or '')[:180]), flush=True)
        else: print('[%s] %s' % (t, {k:v for k,v in p.items() if k!='t'}), flush=True)
    elif m.get('type')=='error': print('[ERR]', m.get('description'), flush=True)

s=session.create_script(JS); s.on('message', on); s.load()
print('[*] hooked; interacting for %ds' % RUNTIME, flush=True)
# gentle interaction to trigger screen builds / license checks
seq=[(360,785),(140,785),(578,785),(270,1096),(446,1096),(610,1096),(100,1096),(645,98)]
t0=time.time()
while time.time()-t0 < RUNTIME:
    for (x,y) in seq:
        adb('input','tap',str(x),str(y)); time.sleep(1.5)
    adb('input','keyevent','BACK')
print('\n[SUMMARY]', cnt, flush=True)
try: session.detach()
except: pass
