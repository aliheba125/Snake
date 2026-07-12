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
naes={'n':0}
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True)
        elif t in('aes_in','kdf','aes_out'): naes['n']+=1
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)
allstr={}
# sweep 0xf00000..0xf40000 in chunks
CH=0x4000
t0=time.time()
for base in range(0xf00000, 0xf40000, CH):
    r=s.exports_sync.dump(base, base+CH, False)
    ilil=r.get('ilil',{})
    for k,v in ilil.items():
        if v and v.strip(): allstr[k]=v
    if (base>>14)%4==0:
        print('[*] swept up to 0x%x, found=%d, elapsed=%.0fs'%(base+CH, len(allstr), time.time()-t0),flush=True)
print('[*] SWEEP DONE found=%d strings in %.0fs; aes/kdf events during sweep=%d'%(len(allstr), time.time()-t0, naes['n']),flush=True)
open('/tmp/all_strings.json','w').write(json.dumps(allstr,indent=1,ensure_ascii=False))
# print a sample sorted by index
items=sorted(allstr.items(), key=lambda kv:int(kv[0],16))
for k,v in items[:120]:
    print('  %s = %r'%(k, v[:160]),flush=True)
try: session.detach()
except: pass
