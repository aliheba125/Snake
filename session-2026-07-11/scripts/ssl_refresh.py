import frida, sys, time, subprocess, threading
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 45
DELAY=float(sys.argv[2]) if len(sys.argv)>2 else 2.0
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2); sh('am','start','-n','com.snake/com.Entry')
pid=None
for _ in range(400):
    o=sh('pidof','com.snake')
    if o: pid=int(o.split()[0]); break
    time.sleep(0.01)
print('[*] main pid=%s attach in %.1fs'%(pid,DELAY),flush=True); time.sleep(DELAY)
session=None
for _ in range(8):
    try: session=dev.attach(pid); break
    except Exception as e: time.sleep(0.4)
if not session: print('[!] attach failed'); sys.exit(3)
print('[*] attached',flush=True)
JS=r'''
'use strict';
function exp(n){var f=null;try{f=Module.getGlobalExportByName(n);}catch(e){}if(!f){var m=Process.enumerateModules();for(var i=0;i<m.length&&!f;i++){try{f=m[i].findExportByName(n);}catch(e){}}}return f;}
function txt(p,l){try{if(l<=0)return null;return p.readUtf8String(Math.min(l,8192));}catch(e){return null;}}
var w=exp('SSL_write'),r=exp('SSL_read');
send({t:'log',m:'w='+w+' r='+r});
if(w)Interceptor.attach(w,{onEnter:function(a){var n=a[2].toInt32();send({t:'W',len:n,txt:txt(a[1],n)});}});
if(r)Interceptor.attach(r,{onEnter:function(a){this.b=a[1];},onLeave:function(x){var n=x.toInt32();if(n>0)send({t:'R',len:n,txt:txt(this.b,n)});}});
'''
def on(m,d):
    if m.get('type')=='send':
        p=m['payload'];t=p.get('t')
        if t=='log':print('[log]',p['m'],flush=True)
        elif t in('W','R'):print('[%s] len=%d txt=%r'%(t,p['len'],(p.get('txt') or '')[:700]),flush=True)
    elif m.get('type')=='error':print('[ERR]',m.get('description'),flush=True)
s=session.create_script(JS);s.on('message',on);s.load()
print('[*] triggering refresh + watching %ds'%RUNTIME,flush=True)
def stim():
    t0=time.time()
    while time.time()-t0<RUNTIME:
        sh('input','swipe','360','500','360','1150','300')   # pull-to-refresh
        time.sleep(2)
        sh('input','tap','645','98')                          # notifications bell
        time.sleep(2)
        sh('input','keyevent','BACK'); time.sleep(1)
        sh('input','swipe','360','450','360','1150','400')     # refresh again
        time.sleep(3)
threading.Thread(target=stim,daemon=True).start()
time.sleep(RUNTIME)
try:session.detach()
except:pass
