import frida, sys, time, subprocess
dev = frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME = int(sys.argv[1]) if len(sys.argv) > 1 else 45
D='localhost:5555'
def sh(*a):
    return subprocess.run(['adb','-s',D,'shell',*a], stdin=subprocess.DEVNULL, capture_output=True, text=True).stdout.strip()

print('[*] force-stop com.snake', flush=True); sh('am','force-stop','com.snake')
time.sleep(2)
print('[*] launch com.Entry', flush=True); sh('am','start','-n','com.snake/com.Entry')
# grab main pid ASAP via pidof (main comm == com.snake)
pid=None
for _ in range(500):
    out = sh('pidof','com.snake')
    if out:
        pid=int(out.split()[0]); break
    time.sleep(0.01)
print('[*] main pid=%s' % pid, flush=True)
session=None
for _try in range(40):
    try:
        session = dev.attach(pid); break
    except Exception as e:
        time.sleep(0.25)
if session is None:
    print('[!] attach failed'); sys.exit(3)
print('[*] attached after retries', flush=True)

JS = r'''
'use strict';
var LIB='libengine.so', OFF_KDF=0x161788, OFF_AES=0x160208, PSZ=Process.pointerSize;
function baseOf(n){ try{ var m=Process.findModuleByName(n); return m?m.base:null; }catch(e){ return null; } }
function readVec(v){ try{ var b=v.readPointer(), e=v.add(PSZ).readPointer(); var l=e.sub(b).toInt32(); if(l>0&&l<0x20000) return {ptr:b,len:l}; }catch(e){} return null; }
function hx(ptr,len){ try{ var ba=ptr.readByteArray(len); return Array.prototype.map.call(new Uint8Array(ba),function(x){return ('0'+x.toString(16)).slice(-2);}).join(''); }catch(e){ return null; } }
function txt(ptr,len){ try{ var s=ptr.readUtf8String(Math.min(len,2048)); if(s&&/[ -~]{3,}/.test(s)) return s; }catch(e){} return null; }
function install(b){
  send({t:'log', m:'libengine @ '+b+'  libapp='+baseOf('libapp.so')});
  Interceptor.attach(b.add(OFF_KDF), { onEnter:function(a){ send({t:'kdf', s1:'0x'+(a[1].toUInt32()>>>0).toString(16), s2:a[2].toString()}); } });
  Interceptor.attach(b.add(OFF_AES), {
    onEnter:function(a){ this.o=a[2]; var v=readVec(a[1]); send({t:'aes_in', len:v?v.len:0, hex:v?hx(v.ptr,v.len):null, txt:v?txt(v.ptr,v.len):null}); },
    onLeave:function(){ var v=readVec(this.o); send({t:'aes_out', len:v?v.len:0, hex:v?hx(v.ptr,v.len):null, txt:v?txt(v.ptr,v.len):null}); }
  });
  send({t:'ready'});
}
var b=baseOf(LIB);
if(b) install(b);
else { var n=0; var iv=setInterval(function(){ var x=baseOf(LIB); if(x){clearInterval(iv); install(x);} else if(++n>2000){clearInterval(iv); send({t:'log',m:'libengine never loaded'});} },5); }
'''
cnt={}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t'); cnt[t]=cnt.get(t,0)+1
        if t=='log': print('[log]',p['m'],flush=True)
        elif t=='ready': print('[ready] native hooks installed',flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in ('aes_in','aes_out'): print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p['hex'] or '')[:180]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS); s.on('message',on); s.load()
print('[*] running %ds'%RUNTIME,flush=True)
time.sleep(RUNTIME)
print('\n[SUMMARY]',cnt,flush=True)
try: session.detach()
except: pass
