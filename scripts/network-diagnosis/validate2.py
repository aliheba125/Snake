import frida, time, subprocess, sys, threading
sys.path.insert(0,'/tmp')
from crypto_scheme import derive_key
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
shl('forward','--remove-all')
sh('am','force-stop','com.snake'); time.sleep(2)
sh('am','start','-n','com.snake/com.Entry')
last=None; stable=None
for _ in range(30):
    time.sleep(1)
    o=sh('pidof','com.snake'); p=int(o.split()[0]) if o else None
    if p and p==last: stable=p; break
    last=p
print('[*] pid=%s'%stable,flush=True); time.sleep(3)
shl('forward','tcp:27052','tcp:27052')
dev=None; proc=None
for _ in range(80):
    try:
        dev=frida.get_device_manager().add_remote_device('127.0.0.1:27052')
        ps=dev.enumerate_processes()
        if ps: proc=ps[0]; break
    except Exception: pass
    time.sleep(0.25)
session=dev.attach(proc.pid)
def on(m,d):
    if m.get('type')=='send' and m['payload'].get('t')=='log': print('[log]',m['payload']['m'],flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)
# background taps to keep app threads active (drives clock_gettime)
stop=False
def tapper():
    while not stop:
        sh('input','tap','360','1000'); sh('input','swipe','360','500','360','900','200'); time.sleep(0.5)
threading.Thread(target=tapper,daemon=True).start()
print('\n===== KDF VALIDATION (live via app-thread) =====',flush=True)
vectors=[(0,0),(1,1),(0x12345678,0xdeadbeef),(0x11111111,0x22222222)]
allok=True
for s1,s2 in vectors:
    live=s.exports_sync.kdf_on_app(s1,s2) if hasattr(s.exports_sync,'kdf_on_app') else s.exports_sync.kdfOnApp(s1,s2)
    exp=derive_key(s1,s2).hex()
    ok=(live==exp); allok=allok and ok
    print('  seed1=%#010x seed2=%#010x'%(s1,s2),flush=True)
    print('    live   = %s'%live,flush=True)
    print('    scheme = %s   %s'%(exp,'MATCH ✓' if ok else 'MISMATCH ✗'),flush=True)
stop=True
print('\n[KDF RESULT] %s'%('ALL MATCH — crypto_scheme.py validated against LIVE binary ✓' if allok else 'see above'),flush=True)
try: session.detach()
except: pass
