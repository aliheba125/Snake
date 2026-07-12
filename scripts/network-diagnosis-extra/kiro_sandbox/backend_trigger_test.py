import frida
import time
import subprocess
import sys
import threading

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
pid = int(result.stdout.strip())
print(f"Attaching connect-monitor to PID {pid}...")
session = device.attach(pid)

js = r'''
var t0 = Date.now();
function T() { return "[+" + ((Date.now()-t0)/1000).toFixed(1) + "s]"; }
var libc = Process.findModuleByName("libc.so");
Interceptor.attach(libc.findExportByName("connect"), {
    onEnter: function(a) {
        try {
            var sa = a[1]; var fam = sa.readU16();
            if (fam === 2) {
                var port = (sa.add(2).readU8()<<8)|sa.add(3).readU8();
                var ip = sa.add(4).readU8()+"."+sa.add(5).readU8()+"."+sa.add(6).readU8()+"."+sa.add(7).readU8();
                if (port>0 && ip!=="0.0.0.0" && ip!=="127.0.0.1") {
                    var tag = (ip==="92.205.103.45") ? " <<< BACKEND!" : "";
                    send(T() + " connect " + ip + ":" + port + tag);
                }
            }
        } catch(e) {}
    }
});
send("[READY] connect monitor");
'''

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        line = str(m["payload"])
        msgs.append(line)
        print("  " + line)

script = session.create_script(js)
script.on("message", on_msg)
script.load()

# Drive UI comprehensively in a background thread
def drive():
    time.sleep(3)
    taps = [
        (142, 806, "8BallPool"), (360, 806, "Carrom"), (560, 806, "Soccer"),
        (139, 98, "IDtop"), (552, 98, "icon1"), (652, 98, "icon2"),
        (137, 490, "BuyNow"), (360, 400, "banner"),
    ]
    for x, y, name in taps:
        subprocess.run(["adb","-s","localhost:5555","shell","input","tap",str(x),str(y)], capture_output=True)
        print(f"  [tap {name}]")
        time.sleep(3)
        subprocess.run(["adb","-s","localhost:5555","shell","input","keyevent","4"], capture_output=True)  # back
        time.sleep(1)
    # scroll
    subprocess.run(["adb","-s","localhost:5555","shell","input","swipe","360","900","360","300"], capture_output=True)
    print("  [scroll]")

t = threading.Thread(target=drive); t.start()
time.sleep(45)
t.join()
try:
    script.unload(); session.detach()
except: pass

backend = [m for m in msgs if "BACKEND" in m]
print(f"\n{'='*60}")
print(f"  Total connects: {len(msgs)-1} | Backend connects: {len(backend)}")
print(f"{'='*60}")
for m in backend:
    print("  " + m)
