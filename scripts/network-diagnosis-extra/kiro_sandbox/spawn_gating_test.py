import frida
import time
import subprocess
import threading

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

results = []
hooked_pid = [None]
survived = [False]

JS = r'''
var t0 = Date.now();
function T() { return "[+" + ((Date.now()-t0)) + "ms]"; }
var libc = Process.findModuleByName("libc.so");
// connect monitor (backend detection)
Interceptor.attach(libc.findExportByName("connect"), {
    onEnter: function(a) {
        try {
            var sa=a[1]; var fam=sa.readU16();
            if (fam===2) {
                var port=(sa.add(2).readU8()<<8)|sa.add(3).readU8();
                var ip=sa.add(4).readU8()+"."+sa.add(5).readU8()+"."+sa.add(6).readU8()+"."+sa.add(7).readU8();
                if (port>0 && ip!=="0.0.0.0" && ip!=="127.0.0.1") {
                    var tag=(ip==="92.205.103.45")?" <<< BACKEND":"";
                    send(T()+" connect "+ip+":"+port+tag);
                }
            }
        } catch(e){}
    }
});
// track engine load
Interceptor.attach(libc.findExportByName("android_dlopen_ext"), {
    onEnter: function(a){ this.p=a[0]?a[0].readCString():null; },
    onLeave: function(r){ if(this.p && this.p.indexOf("libengine")>=0) send(T()+" LOAD libengine"); }
});
send("[HOOKED] "+T());
'''

def on_msg_factory(pid):
    def on_msg(m, d):
        if m["type"] == "send":
            results.append(f"[pid {pid}] {m['payload']}")
            print(f"  [pid {pid}] {m['payload']}")
    return on_msg

def on_spawned(spawn):
    pid = spawn.pid
    ident = spawn.identifier
    print(f"[SPAWN-GATED] pid={pid} ident={ident}")
    if ident and "com.snake" in ident:
        hooked_pid[0] = pid
        try:
            session = device.attach(pid)
            def on_det(reason, crash):
                print(f"  [pid {pid}] DETACHED reason={reason}")
            session.on("detached", on_det)
            script = session.create_script(JS)
            script.on("message", on_msg_factory(pid))
            script.load()
            print(f"  [pid {pid}] hooks installed, resuming")
        except Exception as e:
            print(f"  attach error: {e}")
    # resume all gated spawns
    try:
        device.resume(pid)
    except Exception as e:
        print(f"  resume error: {e}")

device.on("spawn-added", on_spawned)
device.enable_spawn_gating()
print("Spawn gating enabled. Force-stopping + launching app normally...")

subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], capture_output=True)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], capture_output=True)

# Monitor 25s
for i in range(25):
    time.sleep(1)
    if hooked_pid[0]:
        # check if still alive
        r = subprocess.run(["adb","-s","localhost:5555","shell","pidof","com.snake"], capture_output=True, text=True)
        if r.stdout.strip():
            survived[0] = True

try:
    device.disable_spawn_gating()
except: pass

# final alive check
r = subprocess.run(["adb","-s","localhost:5555","shell","pidof","com.snake"], capture_output=True, text=True)
alive = bool(r.stdout.strip())

print(f"\n{'='*60}")
print(f"  SPAWN-GATING TEST: hooked_pid={hooked_pid[0]} final_alive={alive}")
print(f"  Events: {len(results)}")
print(f"{'='*60}")
backend = [r for r in results if "BACKEND" in r]
print(f"  Backend connects captured: {len(backend)}")
for r in results:
    print("  " + r)
