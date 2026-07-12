import frida, sys, time, subprocess
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
PID=int(sys.argv[1]); RUNTIME=int(sys.argv[2]) if len(sys.argv)>2 else 60
session=dev.attach(PID); print('[*] attached engine pid=%d'%PID,flush=True)
JS=r'''
'use strict';
function baseOf(n){try{var m=Process.findModuleByName(n);return m?m.base:null;}catch(e){return null;}}
var b=baseOf('libengine.so');var PSZ=Process.pointerSize;var cnt={kdf:0,aes:0};
function rv(v){try{var x=v.readPointer(),e=v.add(PSZ).readPointer();var l=e.sub(x).toInt32();if(l>0&&l<0x20000)return{p:x,l:l};}catch(e){}return null;}
function hx(p,l){try{var ba=p.readByteArray(l);return Array.prototype.map.call(new Uint8Array(ba),function(c){return('0'+c.toString(16)).slice(-2);}).join('');}catch(e){return null;}}
function txt(p,l){try{var s=p.readUtf8String(Math.min(l,2048));if(s&&/[ -~]{3,}/.test(s))return s;}catch(e){}return null;}
Interceptor.attach(b.add(0x161788),{onEnter:function(a){cnt.kdf++;send({t:'kdf',s1:'0x'+(a[1].toUInt32()>>>0).toString(16),s2:a[2].toString()});}});
Interceptor.attach(b.add(0x160208),{onEnter:function(a){cnt.aes++;this.o=a[2];var v=rv(a[1]);send({t:'aes_in',len:v?v.l:0,hex:v?hx(v.p,v.l):null,txt:v?txt(v.p,v.l):null});},onLeave:function(){var v=rv(this.o);send({t:'aes_out',len:v?v.l:0,hex:v?hx(v.p,v.l):null,txt:v?txt(v.p,v.l):null});}});
send({t:'log',m:'engine libengine @ '+b});
rpc.exports={stats:function(){return cnt;}};
'''
def on(m,d):
    if m.get('type')=='send':
        p=m['payload'];t=p.get('t')
        if t=='log':print('[log]',p['m'],flush=True)
        elif t=='kdf':print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in('aes_in','aes_out'):print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p['hex'] or '')[:160]),flush=True)
    elif m.get('type')=='error':print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS);s.on('message',on);s.load()
print('[*] idle-watching engine for %ds'%RUNTIME,flush=True)
time.sleep(RUNTIME)
try: print('\n[COUNTS]', s.exports_sync.stats(), flush=True)
except Exception as e: print('[stats-skip]',e,flush=True)
try: session.detach()
except: pass
