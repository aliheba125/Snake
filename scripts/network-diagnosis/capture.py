import frida, sys, time

dev = frida.get_device_manager().add_remote_device('127.0.0.1:47771')
ARG = sys.argv[1] if len(sys.argv) > 1 else 'com.snake'
RUNTIME = int(sys.argv[2]) if len(sys.argv) > 2 else 60

if ARG.isdigit():
    pid = int(ARG)
    print('[*] target pid=%d (explicit)' % pid, flush=True)
else:
    procs = [p for p in dev.enumerate_processes() if ARG.lower() in p.name.lower()]
    if not procs:
        print('[!] no process matching %r' % ARG); sys.exit(2)
    procs.sort(key=lambda p: (':' in p.name, len(p.name)))
    pid = procs[0].pid
    print('[*] target pid=%d name=%r' % (pid, procs[0].name), flush=True)

JS = r'''
'use strict';
var LIB='libengine.so', OFF_KDF=0x161788, OFF_AES=0x160208, PSZ=Process.pointerSize;
function baseOf(n){ try{ var m=Process.findModuleByName(n); return m?m.base:null; }catch(e){ return null; } }
function readVec(v){ try{ var b=v.readPointer(), e=v.add(PSZ).readPointer(); var l=e.sub(b).toInt32(); if(l>0 && l<0x20000) return {ptr:b,len:l}; }catch(e){} return null; }
function grab(v){ if(!v) return null; var bytes=v.ptr.readByteArray(v.len); var txt=null; try{ var s=v.ptr.readUtf8String(Math.min(v.len,4096)); if(s && /[ -~]{3,}/.test(s)) txt=s; }catch(e){} return {len:v.len, hex:Array.prototype.map.call(new Uint8Array(bytes),function(x){return ('0'+x.toString(16)).slice(-2);}).join(''), text:txt}; }
function install(base){
  var la=baseOf('libapp.so'), lf=baseOf('libflutter.so');
  send({tag:'base', v:base.toString(), libapp: la?la.toString():null, libflutter: lf?lf.toString():null});
  Interceptor.attach(base.add(OFF_KDF), { onEnter:function(a){ send({tag:'kdf', seed1:'0x'+(a[1].toUInt32()>>>0).toString(16), seed2:a[2].toString()}); } });
  Interceptor.attach(base.add(OFF_AES), {
    onEnter:function(a){ this.o=a[2]; send({tag:'aes_in', data:grab(readVec(a[1]))}); },
    onLeave:function(){ send({tag:'aes_out', data:grab(readVec(this.o))}); }
  });
  send({tag:'ready'});
}
var b=baseOf(LIB);
if(b) install(b);
else { var iv=setInterval(function(){ var x=baseOf(LIB); if(x){clearInterval(iv); install(x);} },40); }
'''

events = []
def on_message(m, data):
    if m.get('type') == 'send':
        p = m['payload']; events.append(p); tag = p.get('tag')
        if tag == 'base': print('[base] libengine=%s libapp=%s libflutter=%s' % (p['v'], p.get('libapp'), p.get('libflutter')), flush=True)
        elif tag == 'ready': print('[ready] hooks installed', flush=True)
        elif tag == 'kdf': print('[KDF] seed1=%s seed2=%s' % (p['seed1'], p['seed2']), flush=True)
        elif tag in ('aes_in','aes_out'):
            d = p.get('data')
            if d: print('[%s] len=%d text=%r hex=%s%s' % (tag, d['len'], d['text'], d['hex'][:220], '...' if len(d['hex'])>220 else ''), flush=True)
            else: print('[%s] <empty>' % tag, flush=True)
    elif m.get('type') == 'error':
        print('[ERROR]', m.get('description'), flush=True)

session = dev.attach(pid)
s = session.create_script(JS); s.on('message', on_message); s.load()
print('[*] capturing for %ds ...' % RUNTIME, flush=True)
time.sleep(RUNTIME)
try: session.detach()
except Exception: pass
kdfs=[e for e in events if e.get('tag')=='kdf']; aes=[e for e in events if e.get('tag') in ('aes_in','aes_out')]
print('\n[SUMMARY] kdf_calls=%d aes_events=%d' % (len(kdfs), len(aes)), flush=True)
