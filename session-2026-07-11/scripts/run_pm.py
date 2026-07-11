import frida, time, subprocess
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
pkgs=set()
def on(m,d):
    if m.get('type')=='send':
        p=m['payload']; t=p.get('t')
        if t=='log': print('[log]',p['m'],flush=True)
        elif t=='pm':
            pk=p.get('pkg')
            if pk and pk not in pkgs and 'com.snake' not in pk and 'android' not in pk and 'google' not in pk:
                pkgs.add(pk); print('[PM-QUERY]', pk, flush=True)
    elif m.get('type')=='error': print('[ERR]',m.get('description'),flush=True)
code=open('/tmp/compiled_conn.js').read()
s=session.create_script(code); s.on('message',on); s.load()
print('[*] init:', s.exports_sync.init(), flush=True)
tiles={'8BallPool':(140,785),'CarromPool':(360,785),'SoccerStars':(578,785)}
for name,(x,y) in tiles.items():
    print('[*] tapping %s tile...'%name,flush=True)
    sh('input','tap',str(x),str(y)); time.sleep(2)
    sh('input','tap','235','800'); time.sleep(1)   # Close dialog
    sh('input','keyevent','BACK'); time.sleep(1)
print('\n[RESULT] game packages queried:', sorted(pkgs), flush=True)
try: session.detach()
except: pass
