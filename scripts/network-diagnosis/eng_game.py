import frida, sys, time, subprocess, threading
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 60
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
# ensure app up
sh('am','start','-n','com.snake/com.Entry'); time.sleep(6)
eng=sh('pidof','com.snake:engine'); eng=int(eng.split()[0]) if eng else None
print('[*] engine pid=%s'%eng,flush=True)
session=dev.attach(eng); print('[*] attached engine',flush=True)
code=open('/tmp/compiled_agent.js').read()
found={}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        found[t]=found.get(t,0)+1
        if t=='ilil':
            if found['ilil']<=80: print('[ilil] %s => %r'%(p['arg'],(p.get('ret') or '')[:220]),flush=True)
        elif t=='djp': print('[djp] key=%s len=%d hex=%s'%(p['arg'],p['len'],(p.get('hex') or '')[:140]),flush=True)
        elif t=='chl': print('[chl] inlen=%s ret=%s inhex=%s'%(p['inlen'],p['ret'],(p.get('inhex') or '')[:120]),flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in('aes_in','aes_out'): print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p.get('hex') or '')[:180]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
s=session.create_script(code); s.on('message',on); s.load()
time.sleep(1)
print('[*] tapping game tiles to trigger engine prepare; watching %ds'%RUNTIME,flush=True)
def stim():
    t0=time.time()
    tiles=[(140,785),(360,785),(578,785)]
    while time.time()-t0<RUNTIME:
        for (x,y) in tiles:
            sh('input','tap',str(x),str(y)); time.sleep(3)
            sh('input','tap','360','900'); time.sleep(2)   # possible confirm/download button
            sh('input','keyevent','BACK'); time.sleep(2)
threading.Thread(target=stim,daemon=True).start()
time.sleep(RUNTIME)
print('\n[SUMMARY]',found,flush=True)
try: session.detach()
except: pass
