import frida, sys, time, subprocess
RUNTIME=int(sys.argv[1]) if len(sys.argv)>1 else 40
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
# fresh launch (wrap already set) -> gadget listens & waits
sh('am','force-stop','com.snake'); time.sleep(2)
sh('am','start','-n','com.snake/com.Entry')
# wait for gadget to listen
print('[*] waiting for gadget to listen on 27052...',flush=True)
shl('forward','tcp:27052','tcp:27052')
dev=None; proc=None
for _ in range(120):
    try:
        dm=frida.get_device_manager()
        dev=dm.add_remote_device('127.0.0.1:27052')
        ps=dev.enumerate_processes()
        if ps: proc=ps[0]; break
    except Exception as e:
        pass
    time.sleep(0.25)
if not proc: print('[!] gadget not reachable'); sys.exit(3)
print('[*] gadget process: pid=%s name=%s'%(proc.pid, proc.name),flush=True)
session=dev.attach(proc.pid)
code=open('/tmp/compiled_agent.js').read()
found={}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        found[t]=found.get(t,0)+1
        if t=='ilil':
            if found['ilil']<=120: print('[ilil] %s => %r'%(p['arg'],(p.get('ret') or '')[:240]),flush=True)
        elif t=='djp': print('[djp] key=%s len=%d hex=%s'%(p['arg'],p['len'],(p.get('hex') or '')[:160]),flush=True)
        elif t=='chl': print('[chl] inlen=%s ret=%s inhex=%s'%(p['inlen'],p['ret'],(p.get('inhex') or '')[:140]),flush=True)
        elif t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t in('aes_in','aes_out'): print('[%s] len=%d txt=%r hex=%s'%(t,p['len'],p.get('txt'),(p.get('hex') or '')[:200]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
session.on('detached', lambda r,*a: print('[*] DETACHED:',r,flush=True))
s=session.create_script(code); s.on('message',on); s.load()
print('[*] hooks loaded; RESUMING app',flush=True)
try: dev.resume(proc.pid)
except Exception as e: print('[resume err]',e,flush=True)
time.sleep(RUNTIME)
print('\n[SUMMARY]',found,flush=True)
try: session.detach()
except: pass
