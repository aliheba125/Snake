import frida, sys, time, subprocess, threading
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 45
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2); sh('am','start','-n','com.snake/com.Entry')
pid=None
for _ in range(400):
    o=sh('pidof','com.snake')
    if o: pid=int(o.split()[0]); break
    time.sleep(0.01)
print('[*] pid=%s'%pid,flush=True); time.sleep(2)
session=None
for _ in range(8):
    try: session=dev.attach(pid); break
    except: time.sleep(0.4)
print('[*] attached',flush=True)
JS=r'''
'use strict';
function exp(n){var f=null;try{f=Module.getGlobalExportByName(n);}catch(e){}if(!f){var m=Process.enumerateModules();for(var i=0;i<m.length&&!f;i++){try{f=m[i].findExportByName(n);}catch(e){}}}return f;}
var cnt={};function bump(k){cnt[k]=(cnt[k]||0)+1;}
['getaddrinfo','connect','send','sendto','write','recvfrom','SSL_write','SSL_read','sendmsg'].forEach(function(n){
  var f=exp(n); if(!f){send({t:'log',m:'no '+n});return;}
  Interceptor.attach(f,{onEnter:function(a){bump(n);
    if(n==='getaddrinfo'){try{send({t:'ev',fn:n,d:a[0].readCString()});}catch(e){}}
    if(n==='connect'){try{var fam=a[1].readU16();var port=(a[1].add(2).readU8()<<8)|a[1].add(3).readU8();send({t:'ev',fn:n,d:'fam='+fam+' port='+port});}catch(e){}}
    if(n==='SSL_write'||n==='send'||n==='sendto'||n==='sendmsg'){var num=(n==='SSL_write')?a[2].toInt32():(n==='send'||n==='sendto'||n==='sendmsg'?a[2].toInt32():0);}
  }});
  send({t:'log',m:'hooked '+n});
});
rpc.exports={stats:function(){return cnt;}};
'''
def on(m,d):
    if m.get('type')=='send':
        p=m['payload'];t=p.get('t')
        if t=='log':print('[log]',p['m'],flush=True)
        elif t=='ev':print('[ev]',p['fn'],p['d'],flush=True)
    elif m.get('type')=='error':print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS);s.on('message',on);s.load()
def stim():
    t0=time.time()
    while time.time()-t0<RUNTIME:
        sh('input','swipe','360','450','360','1150','300'); time.sleep(2)
        sh('input','tap','645','98'); time.sleep(1); sh('input','keyevent','BACK'); time.sleep(2)
threading.Thread(target=stim,daemon=True).start()
time.sleep(RUNTIME)
try:print('\n[COUNTS]',s.exports_sync.stats(),flush=True)
except Exception as e:print('[stats-skip]',e,flush=True)
try:session.detach()
except:pass
