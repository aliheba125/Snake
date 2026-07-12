import frida, sys, time, subprocess, json
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
shl('forward','--remove-all')
sh('am','force-stop','com.snake'); time.sleep(2)
sh('am','start','-n','com.snake/com.Entry')
print('[*] launched; waiting for stable main pid...',flush=True)
# wait for pid to stabilize (same value twice, 2s apart) past the self-restart
last=None; stable=None
for _ in range(30):
    time.sleep(1)
    o=sh('pidof','com.snake'); p=int(o.split()[0]) if o else None
    if p and p==last: stable=p; break
    last=p
print('[*] stable main pid=%s'%stable,flush=True)
time.sleep(3)
shl('forward','tcp:27052','tcp:27052')
dev=None; proc=None
for _ in range(80):
    try:
        dev=frida.get_device_manager().add_remote_device('127.0.0.1:27052')
        ps=dev.enumerate_processes()
        if ps: proc=ps[0]; break
    except Exception: pass
    time.sleep(0.25)
if not proc: print('[!] gadget unreachable'); sys.exit(3)
print('[*] gadget proc pid=%s name=%s'%(proc.pid,proc.name),flush=True)
session=dev.attach(proc.pid)
session.on('detached', lambda r,*a: print('[*] DETACHED:',r,flush=True))
events={'kdf':[],'aes_in':[],'aes_out':[],'ilil':[],'djp':[],'chl':[]}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        if t in events: events[t].append(p)
        if t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t=='aes_in': print('[AES_IN] kdf=%s len=%d hex=%s'%(p.get('kdf'),p['len'],(p.get('hex') or '')[:120]),flush=True)
        elif t=='aes_out': print('[AES_OUT] len=%d txt=%r hex=%s'%(p['len'],(p.get('txt') or '')[:100],(p.get('hex') or '')[:100]),flush=True)
        elif t=='ilil' and len(events['ilil'])<=40: print('[ilil] %s => %r'%(p['arg'],(p.get('ret') or '')[:160]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
# init with retries until libengine loaded
r=None
for i in range(20):
    r=s.exports_sync.init()
    print('[*] init try %d:'%i, r, flush=True)
    if r.get('nativeHooks'): break
    time.sleep(1)
if not r or not r.get('nativeHooks'):
    print('[!] libengine never loaded in this process'); 
print('[*] ACTIVE DUMP ilil/djp 0..300 ...',flush=True)
res=s.exports_sync.dump(0,300)
ilil_n=len(res.get('ilil',{})); djp_n=len(res.get('djp',{}))
open('/tmp/dump_result.json','w').write(json.dumps({'events':events,'dump':res},indent=1))
print('\n[SUMMARY] kdf=%d aes_in=%d aes_out=%d ilil=%d djp=%d'%(len(events['kdf']),len(events['aes_in']),len(events['aes_out']),ilil_n,djp_n),flush=True)
shown=0
for k in sorted(res.get('ilil',{}), key=lambda x:int(x)):
    v=res['ilil'][k]
    if v and v!='null': print('  ilil[%s] = %r'%(k,v[:140]),flush=True); shown+=1
    if shown>=40: break
try: session.detach()
except: pass
