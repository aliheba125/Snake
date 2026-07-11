import frida, sys, time, subprocess
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 45
DELAY=float(sys.argv[2]) if len(sys.argv)>2 else 3.0
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
print('[*] force-stop+launch',flush=True); sh('am','force-stop','com.snake'); time.sleep(2); sh('am','start','-n','com.snake/com.Entry')
pid=None
for _ in range(400):
    o=sh('pidof','com.snake')
    if o: pid=int(o.split()[0]); break
    time.sleep(0.01)
print('[*] main pid=%s, waiting %.1fs before attach'%(pid,DELAY),flush=True)
time.sleep(DELAY)
session=None
for _ in range(6):
    try: session=dev.attach(pid); break
    except Exception as e: print('[retry attach]',e,flush=True); time.sleep(0.6)
if not session: print('[!] attach failed'); sys.exit(3)
print('[*] attached',flush=True)
JS=r'''
'use strict';
function exp(n){var f=null;try{f=Module.getGlobalExportByName(n);}catch(e){}if(!f){var m=Process.enumerateModules();for(var i=0;i<m.length&&!f;i++){try{f=m[i].findExportByName(n);}catch(e){}}}return f;}
function toTxt(p,l){try{if(l<=0)return null;return p.readUtf8String(Math.min(l,8192));}catch(e){return null;}}
function toHex(p,l){try{if(l<=0)return null;var ba=p.readByteArray(Math.min(l,2048));return Array.prototype.map.call(new Uint8Array(ba),function(c){return('0'+c.toString(16)).slice(-2);}).join('');}catch(e){return null;}}
var ga=exp('getaddrinfo'); if(ga){Interceptor.attach(ga,{onEnter:function(a){try{send({t:'dns',host:a[0].readCString()});}catch(e){}}});}
['SSL_write','SSL_read','SSL_write_ex','SSL_read_ex'].forEach(function(n){
  var f=exp(n); if(!f){send({t:'log',m:'no '+n});return;}
  send({t:'log',m:n+' @ '+f});
  if(n.indexOf('write')>=0){ Interceptor.attach(f,{onEnter:function(a){var num=a[2].toInt32();send({t:'W',fn:n,len:num,txt:toTxt(a[1],num),hex:toHex(a[1],num)});}}); }
  else { Interceptor.attach(f,{onEnter:function(a){this.b=a[1];},onLeave:function(r){var n2=r.toInt32();if(n2>0)send({t:'R',fn:n,len:n2,txt:toTxt(this.b,n2),hex:toHex(this.b,n2)});}}); }
});
rpc.exports={ping:function(){return 1;}};
'''
def on(m,d):
    if m.get('type')=='send':
        p=m['payload'];t=p.get('t')
        if t=='log':print('[log]',p['m'],flush=True)
        elif t=='dns':print('[dns]',p['host'],flush=True)
        elif t in('W','R'):
            tx=p.get('txt')
            print('[%s %s] len=%d txt=%r'%(t,p.get('fn'),p['len'],(tx or '')[:600]),flush=True)
    elif m.get('type')=='error':print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS);s.on('message',on);s.load()
print('[*] watching %ds (no navigation)'%RUNTIME,flush=True)
time.sleep(RUNTIME)
try:session.detach()
except:pass
