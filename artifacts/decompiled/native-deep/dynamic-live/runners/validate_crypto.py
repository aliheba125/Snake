import frida, time, subprocess, sys, hashlib
sys.path.insert(0,'/tmp')
from crypto_scheme import kdf_prng, derive_key
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
def on(m,d):
    if m.get('type')=='send' and m['payload'].get('t')=='log': print('[log]',m['payload']['m'],flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)

print('\n===== KDF VALIDATION (live FUN_00161788 vs crypto_scheme.py) =====',flush=True)
vectors=[(0,0),(1,1),(0x12345678,0xdeadbeef),(0x11111111,0x22222222),(0xcafebabe,0x0badf00d)]
allok=True
livekeys={}
for s1,s2 in vectors:
    live=s.exports_sync.kdf(s1,s2)
    exp=derive_key(s1,s2).hex()
    ok = (live==exp)
    allok = allok and ok
    livekeys[(s1,s2)]=live
    print('  seed1=%#010x seed2=%#010x'%(s1,s2),flush=True)
    print('    live    = %s'%live,flush=True)
    print('    scheme  = %s   %s'%(exp, 'MATCH ✓' if ok else 'MISMATCH ✗'),flush=True)
print('\n[KDF RESULT] %s'%('ALL MATCH — crypto_scheme.py KDF validated against live binary ✓' if allok else 'MISMATCH ✗'),flush=True)

print('\n===== AES VALIDATION (live FUN_00160208) =====',flush=True)
key=livekeys[(0x12345678,0xdeadbeef)]
ct='00112233445566778899aabbccddeeff'   # one 16-byte block test vector
liveout=s.exports_sync.aes(key, ct)
print('  key=%s'%key,flush=True)
print('  input(ct)=%s'%ct,flush=True)
print('  live FUN_00160208 out=%s'%liveout,flush=True)
# compare to ECB decrypt/encrypt using pycryptodome if available
try:
    from Crypto.Cipher import AES
    kb=bytes.fromhex(key); cb=bytes.fromhex(ct)
    ecb_dec=AES.new(kb,AES.MODE_ECB).decrypt(cb).hex()
    ecb_enc=AES.new(kb,AES.MODE_ECB).encrypt(cb).hex()
    print('  ECB decrypt(key,ct)  = %s   %s'%(ecb_dec,'== live? '+('YES' if ecb_dec==liveout else 'no')),flush=True)
    print('  ECB encrypt(key,ct)  = %s   %s'%(ecb_enc,'== live? '+('YES' if ecb_enc==liveout else 'no')),flush=True)
except ImportError:
    print('  (pycryptodome not installed on EC2 — compare live output on sandbox)',flush=True)
try: session.detach()
except: pass
