import frida, sys, time, subprocess, json
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
ev={'kdf':[],'aes_in':[],'aes_out':[]}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True); return
        if t in ev: ev[t].append(p)
        if t=='kdf': print('[KDF] seed1=%s seed2=%s'%(p['s1'],p['s2']),flush=True)
        elif t=='aes_in': print('[AES_IN] kdf=%s len=%d hex=%s'%(p.get('kdf'),p['len'],(p.get('hex') or '')[:140]),flush=True)
        elif t=='aes_out': print('[AES_OUT] len=%d txt=%r hex=%s'%(p['len'],(p.get('txt') or '')[:120],(p.get('hex') or '')[:100]),flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)
known=[0xf11301,0xf11501,0xf11520,0xf11521,0xf21501,0xf31501,0xf30001,0xf20001,0xf10021,0xf10020,0xf10001,0xf0fe01]
print('[*] dumpList known indices (with djp)...',flush=True)
res=s.exports_sync.dump_list(known, True) if hasattr(s.exports_sync,'dump_list') else s.exports_sync.dumpList(known, True)
print('[*] RESULTS:',flush=True)
for k,v in res.get('ilil',{}).items():
    print('  ilil[%s] = %r'%(k, (v[:200] if v else v)),flush=True)
for k,v in res.get('djp',{}).items():
    if v: print('  djp[%s] = %s'%(k, v[:160]),flush=True)
print('\n[SUMMARY] kdf=%d aes_in=%d aes_out=%d'%(len(ev['kdf']),len(ev['aes_in']),len(ev['aes_out'])),flush=True)
open('/tmp/known_result.json','w').write(json.dumps({'events':ev,'res':res},indent=1))
try: session.detach()
except: pass
