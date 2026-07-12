import frida, time, subprocess, json
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
CODE = __import__('sys').argv[1] if len(__import__('sys').argv)>1 else '123456'
shl('forward','--remove-all')
sh('am','force-stop','com.snake'); time.sleep(2)
sh('am','start','-n','com.snake/com.Entry')
last=None; stable=None
for _ in range(30):
    time.sleep(1)
    o=sh('pidof','com.snake'); p=int(o.split()[0]) if o else None
    if p and p==last: stable=p; break
    last=p
print('[*] stable pid=%s'%stable,flush=True); time.sleep(3)
shl('forward','tcp:27052','tcp:27052')
dev=None; proc=None
for _ in range(80):
    try:
        dev=frida.get_device_manager().add_remote_device('127.0.0.1:27052')
        ps=dev.enumerate_processes()
        if ps: proc=ps[0]; break
    except Exception: pass
    time.sleep(0.25)
print('[*] gadget pid=%s'%(proc.pid if proc else None),flush=True)
session=dev.attach(proc.pid)
ev={'aes_in':[],'aes_out':[],'kdf':[],'call':[],'chl':[],'djp':[],'ilil':[],'ssl_w':[],'ssl_r':[]}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        if t in ev: ev[t].append(p)
        if t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t=='aes_in': print('[AES_IN] kdf=%s len=%d hex=%s'%(p.get('kdf'),p['len'],(p.get('hex') or '')[:180]),flush=True)
        elif t=='aes_out': print('[AES_OUT] len=%d txt=%r hex=%s'%(p['len'],(p.get('txt') or '')[:140],(p.get('hex') or '')[:120]),flush=True)
        elif t=='call': print('[CALL]',p['fn'],flush=True)
        elif t=='chl': print('[CHL] inlen=%s ret=%s'%(p['inlen'],p['ret']),flush=True)
        elif t=='djp': print('[DJP] arg=%s len=%s hex=%s'%(p['arg'],p.get('len'),(p.get('hex') or '')[:140]),flush=True)
        elif t=='ilil': print('[ilil] %s=%r'%(p['arg'],(p.get('ret') or '')[:120]),flush=True)
        elif t=='ssl_w' and p.get('txt'): print('[SSL_W] %r'%(p['txt'][:500]),flush=True)
        elif t=='ssl_r' and p.get('txt'): print('[SSL_R] %r'%(p['txt'][:400]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)
time.sleep(1)
# navigate: account icon -> Device screen -> Entry Key -> type code -> Activate
print('[*] navigate to Entry Key and enter code=%s'%CODE,flush=True)
sh('input','tap','130','98'); time.sleep(3)      # account/device
sh('input','tap','360','1117'); time.sleep(3)     # Entry Key
sh('input','tap','160','590'); time.sleep(1)      # focus first code box
sh('input','text',CODE); time.sleep(1)
sh('input','tap','494','745'); time.sleep(5)      # Activate -> network + response processing
time.sleep(3)
summ={k:len(v) for k,v in ev.items()}
print('\n[SUMMARY]',summ,flush=True)
open('/tmp/activate_capture.json','w').write(json.dumps(ev,indent=1,ensure_ascii=False))
try: session.detach()
except: pass
