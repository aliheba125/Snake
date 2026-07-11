import frida, sys, time, subprocess, threading
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 40
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2)
print('[*] spawning com.snake ...',flush=True)
pid=dev.spawn(['com.snake'])
print('[*] spawned pid=%s, attaching'%pid,flush=True)
session=dev.attach(pid)
code=open('/tmp/compiled_agent.js').read()
found={}
alive={'v':True}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        found[t]=found.get(t,0)+1
        if t=='ilil': 
            if found['ilil']<=60: print('[ilil] %s => %r'%(p['arg'],(p.get('ret') or '')[:220]),flush=True)
        elif t=='djp': print('[djp] key=%s len=%d hex=%s'%(p['arg'],p['len'],(p.get('hex') or '')[:140]),flush=True)
        elif t=='chl': print('[chl] inlen=%s ret=%s inhex=%s'%(p['inlen'],p['ret'],(p.get('inhex') or '')[:120]),flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in('aes_in','aes_out'): print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p.get('hex') or '')[:160]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
def on_detached(reason,*a):
    alive['v']=False; print('[*] SESSION DETACHED reason=%s'%reason,flush=True)
session.on('detached',on_detached)
s=session.create_script(code); s.on('message',on); s.load()
print('[*] resuming',flush=True)
dev.resume(pid)
def stim():
    time.sleep(8)
    t0=time.time()
    while time.time()-t0<RUNTIME-8 and alive['v']:
        for (x,y) in [(360,785),(270,1096),(446,1096),(100,1096),(645,98)]:
            sh('input','tap',str(x),str(y)); time.sleep(1.0)
threading.Thread(target=stim,daemon=True).start()
t0=time.time()
while time.time()-t0<RUNTIME and alive['v']:
    time.sleep(0.5)
print('\n[SUMMARY]',found,'alive=%s'%alive['v'],flush=True)
try: session.detach()
except: pass
