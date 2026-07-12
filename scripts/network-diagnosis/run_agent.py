import frida, sys, time, subprocess, threading
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 70
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2); sh('am','start','-n','com.snake/com.Entry')
pid=None
for _ in range(400):
    o=sh('pidof','com.snake')
    if o: pid=int(o.split()[0]); break
    time.sleep(0.01)
print('[*] pid=%s, stabilizing 6s'%pid,flush=True); time.sleep(6)
session=None
for _ in range(8):
    try: session=dev.attach(pid); break
    except Exception as e: time.sleep(0.5)
if not session: print('[!] attach failed'); sys.exit(3)
print('[*] attached',flush=True)
code=open('/tmp/compiled_agent.js').read()
found={'ilil':0,'djp':0,'chl':0,'kdf':0,'aes_in':0,'aes_out':0,'aior':0,'awl':0,'i':0,'eio':0}
samples=[]
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        found[t]=found.get(t,0)+1
        if t=='ilil':
            r=p.get('ret')
            if found['ilil']<=40: print('[ilil] %s => %r'%(p['arg'], (r or '')[:200]),flush=True)
            samples.append(('ilil',p['arg'],r))
        elif t=='djp': print('[djp] key=%s len=%d hex=%s'%(p['arg'],p['len'],(p.get('hex') or '')[:120]),flush=True); samples.append(('djp',p['arg'],p.get('hex')))
        elif t=='chl': print('[chl] inlen=%s ret=%s inhex=%s'%(p['inlen'],p['ret'],(p.get('inhex') or '')[:100]),flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True); samples.append(('kdf',p['s1'],p['s2']))
        elif t in('aes_in','aes_out'): print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p.get('hex') or '')[:140]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
s=session.create_script(code); s.on('message',on); s.load()
print('[*] interacting %ds'%RUNTIME,flush=True)
def stim():
    t0=time.time()
    while time.time()-t0<RUNTIME:
        for (x,y) in [(360,785),(140,785),(578,785),(270,1096),(446,1096),(610,1096),(100,1096),(645,98),(360,500)]:
            sh('input','tap',str(x),str(y)); time.sleep(1.0)
        sh('input','swipe','360','450','360','1150','300'); time.sleep(1)
threading.Thread(target=stim,daemon=True).start()
time.sleep(RUNTIME)
print('\n[SUMMARY]',found,flush=True)
try: session.detach()
except: pass
