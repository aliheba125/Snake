import frida, sys, time, subprocess
dev=frida.get_device_manager().add_remote_device('127.0.0.1:47771')
D='localhost:5555'
def sh(*a): return subprocess.run(['adb','-s',D,'shell',*a],stdin=subprocess.DEVNULL,capture_output=True,text=True).stdout.strip()
sh('am','force-stop','com.snake'); time.sleep(2)
mode=sys.argv[1] if len(sys.argv)>1 else 'bare'
print('[*] mode=%s spawning'%mode,flush=True)
pid=dev.spawn(['com.snake'])
print('[*] spawned pid=%s'%pid,flush=True)
sess=dev.attach(pid)
alive={'v':True}
sess.on('detached', lambda reason,*a:(alive.__setitem__('v',False), print('[*] DETACHED:',reason,flush=True)))
if mode=='script':
    # attach empty script (creates gum agent but no hooks)
    s=sess.create_script("send({t:'log',m:'empty script loaded'});"); s.on('message',lambda m,d:print('[log]',m.get('payload',{}).get('m'),flush=True)); s.load()
print('[*] resuming',flush=True)
dev.resume(pid)
for i in range(20):
    if not alive['v']: break
    time.sleep(0.5)
print('[*] survived=%s after %ss'%(alive['v'], 10),flush=True)
print('[*] pid still running:', sh('pidof','com.snake') or 'NO',flush=True)
try: sess.detach()
except: pass
