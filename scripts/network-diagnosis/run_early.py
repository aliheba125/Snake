import frida, sys, time, subprocess
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
DELAY=float(sys.argv[1]) if len(sys.argv)>1 else 1.5
RUNTIME=int(sys.argv[2]) if len(sys.argv)>2 else 30
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2)
sh('am','start','-n','com.snake/com.Entry')
pid=None
for _ in range(2000):
    o=sh('pidof','com.snake')
    if o: pid=int(o.split()[0]); break
print('[*] pid=%s appeared; waiting %.2fs'%(pid,DELAY),flush=True)
time.sleep(DELAY)
session=None; err=None
for _ in range(5):
    try: session=dev.attach(pid); break
    except Exception as e: err=e; time.sleep(0.3)
if not session: print('[!] attach failed:',err); sys.exit(3)
print('[*] attached at ~%.2fs'%DELAY,flush=True)
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
print('[*] watching startup %ds'%RUNTIME,flush=True)
time.sleep(RUNTIME)
print('\n[SUMMARY]',found,flush=True)
try: session.detach()
except: pass
