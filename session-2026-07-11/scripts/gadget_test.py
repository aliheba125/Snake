import frida, sys, time, subprocess
MODE=sys.argv[1] if len(sys.argv)>1 else 'empty'
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
def shl(*a): return subprocess.run(['adb','-s',D,*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
shl('forward','--remove-all')
sh('am','force-stop','com.snake'); time.sleep(2)
sh('logcat','-c')
sh('am','start','-n','com.snake/com.Entry')
shl('forward','tcp:27052','tcp:27052')
dev=None; proc=None
for _ in range(160):
    try:
        dev=frida.get_device_manager().add_remote_device('127.0.0.1:27052')
        ps=dev.enumerate_processes()
        if ps: proc=ps[0]; break
    except Exception: pass
    time.sleep(0.25)
if not proc: print('[!] gadget unreachable'); sys.exit(3)
print('[*] gadget pid=%s name=%s'%(proc.pid,proc.name),flush=True)
session=dev.attach(proc.pid)
session.on('detached', lambda r,*a: print('[*] DETACHED:',r,flush=True))
if MODE=='empty':
    s=session.create_script("send({t:'log',m:'empty loaded'});")
    s.on('message', lambda m,d: print('[log]',m.get('payload',{}).get('m'),flush=True))
    s.load()
print('[*] resuming (mode=%s)'%MODE,flush=True)
try: dev.resume(proc.pid)
except Exception as e: print('[resume err]',e,flush=True)
time.sleep(12)
alive=sh('pidof','com.snake')
print('[*] com.snake alive after resume:', alive or 'NO',flush=True)
try: session.detach()
except: pass
