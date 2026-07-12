import frida, time, subprocess, json
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
code=open('/tmp/compiled_conn.js').read()
aes_ev=[]

def connect():
    shl('forward','--remove-all')
    sh('am','force-stop','com.snake'); time.sleep(2)
    sh('am','start','-n','com.snake/com.Entry')
    last=None; stable=None
    for _ in range(30):
        time.sleep(1)
        o=sh('pidof','com.snake'); p=int(o.split()[0]) if o else None
        if p and p==last: stable=p; break
        last=p
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
    session=dev.attach(proc.pid)
    def on(m,d):
        if m.get('type')=='send':
            p=m['payload']; t=p.get('t')
            if t in('aes_in','kdf','aes_out'): aes_ev.append(p); print('[CRYPTO]',t,p.get('s1'),p.get('kdf'),(p.get('hex') or '')[:80],flush=True)
    s=session.create_script(code); s.on('message',on); s.load()
    s.exports_sync.init()
    return session,s

# build structured candidate groups
groups=[0xf11300,0xf11500,0xf21500,0xf31500,0xf10000,0xf20000,0xf30000,0xf0fe00,
        0xf11400,0xf11600,0xf21300,0xf31300,0xf21600,0xf31600,0xf11200,0xf10100]
cands=[]
for g in groups:
    for cc in range(0x00,0x100):
        cands.append(g+cc)
print('[*] total candidates=%d'%len(cands),flush=True)
session,s=connect()
found={}; djpf={}
i=0; BATCH=48
while i < len(cands):
    batch=cands[i:i+BATCH]
    try:
        r=s.exports_sync.dump_list(batch, True) if hasattr(s.exports_sync,'dump_list') else s.exports_sync.dumpList(batch, True)
        for k,v in r.get('ilil',{}).items():
            if v and v.strip() and not v.startswith('ERR'): found[k]=v
        for k,v in r.get('djp',{}).items():
            if v: djpf[k]=v
        i+=BATCH
    except Exception as e:
        print('[!] batch @%d crashed (%s); reconnecting, skipping this batch'%(i, str(e)[:40]),flush=True)
        try: session.detach()
        except: pass
        time.sleep(2)
        session,s=connect()
        i+=BATCH  # skip crasher batch
    if i % (BATCH*8)==0:
        print('[*] progress %d/%d found=%d'%(i,len(cands),len(found)),flush=True)
print('\n[*] DONE found ilil=%d djp=%d crypto_events=%d'%(len(found),len(djpf),len(aes_ev)),flush=True)
open('/tmp/all_strings.json','w').write(json.dumps({'ilil':found,'djp':djpf},indent=1,ensure_ascii=False))
for k,v in sorted(found.items(), key=lambda kv:int(kv[0],16)):
    print('  %s = %r'%(k, v[:180]),flush=True)
try: session.detach()
except: pass
