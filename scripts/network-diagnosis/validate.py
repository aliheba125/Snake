import frida, sys, time, subprocess
dev = frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME = int(sys.argv[1]) if len(sys.argv) > 1 else 40
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a], stdin=subprocess.DEVNULL, capture_output=True, text=True).stdout.strip()
sh('am','start','-n','com.snake/com.Entry'); time.sleep(8)   # let it fully stabilize
pid=int(sh('pidof','com.snake').split()[0]); print('[*] main pid=%s (stable)'%pid, flush=True)
session=dev.attach(pid); print('[*] attached', flush=True)
JS=r'''
'use strict';
function baseOf(n){ try{var m=Process.findModuleByName(n);return m?m.base:null;}catch(e){return null;} }
var cnt={connect:0, getaddrinfo:0, open:0, send:0, recv:0, aes_in:0, aes_out:0, kdf:0};
function hookExp(name){ var f=null; try{ f=Module.getGlobalExportByName(name);}catch(e){} if(!f){ var libc=Process.findModuleByName('libc.so'); if(libc){ try{f=libc.findExportByName(name);}catch(e){} } } if(f){ try{ Interceptor.attach(f,{onEnter:function(a){ cnt[name]=(cnt[name]||0)+1; if(name==='getaddrinfo'){ try{send({t:'net',fn:name,host:a[0].readCString()});}catch(e){} } }}); send({t:'log',m:'hooked '+name+' @ '+f}); }catch(e){ send({t:'log',m:'hook fail '+name+' '+e}); } } else send({t:'log',m:'no export '+name}); }
['connect','getaddrinfo','open','send','recv','sendto','recvfrom'].forEach(hookExp);
// AES/KDF
var b=baseOf('libengine.so');
if(b){ var PSZ=Process.pointerSize;
  function rv(v){ try{var x=v.readPointer(),e=v.add(PSZ).readPointer();var l=e.sub(x).toInt32(); if(l>0&&l<0x20000)return{p:x,l:l};}catch(e){} return null;}
  function hx(p,l){try{var ba=p.readByteArray(l);return Array.prototype.map.call(new Uint8Array(ba),function(c){return('0'+c.toString(16)).slice(-2);}).join('');}catch(e){return null;}}
  Interceptor.attach(b.add(0x161788),{onEnter:function(a){cnt.kdf++;send({t:'kdf',s1:'0x'+(a[1].toUInt32()>>>0).toString(16),s2:a[2].toString()});}});
  Interceptor.attach(b.add(0x160208),{onEnter:function(a){cnt.aes_in++;this.o=a[2];var v=rv(a[1]);send({t:'aes_in',len:v?v.l:0,hex:v?hx(v.p,v.l):null});},onLeave:function(){cnt.aes_out++;var v=rv(this.o);send({t:'aes_out',len:v?v.l:0,hex:v?hx(v.p,v.l):null});}});
  send({t:'log',m:'libengine hooks @ '+b+' libapp='+baseOf('libapp.so')});
}
rpc.exports={stats:function(){return cnt;}};
'''
stats={}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True)
        elif t=='net': print('[net] %s host=%s'%(p['fn'],p.get('host')),flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in('aes_in','aes_out'): print('[%s] len=%d hex=%s'%(t,p['len'],(p['hex'] or '')[:160]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS); s.on('message',on); s.load()
print('[*] validating %ds (gentle in-app taps)'%RUNTIME,flush=True)
t0=time.time()
while time.time()-t0<RUNTIME:
    for (x,y) in [(360,785),(140,785),(578,785),(270,1096),(446,1096),(100,1096)]:
        sh('input','tap',str(x),str(y)); time.sleep(1.2)
print('\n[COUNTS]', s.exports_sync.stats() if hasattr(s,'exports_sync') else s.exports.stats(), flush=True)
try: session.detach()
except: pass
