import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

print("Clearing + starting app...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "pm", "clear", "com.snake"], capture_output=True)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"], capture_output=True)

pid = None
for attempt in range(20):
    time.sleep(0.4)
    result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                           capture_output=True, text=True)
    if result.stdout.strip():
        pid = int(result.stdout.strip())
        print(f"Got PID {pid} after {(attempt+1)*0.4:.1f}s")
        break

if not pid:
    print("Failed")
    sys.exit(1)

session = device.attach(pid)
detached = [False]
def on_d(r, c): detached[0] = True
session.on("detached", on_d)

# Track connect AND close so fd map is accurate (no false positives from fd reuse)
js = r'''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }
var libc = Process.findModuleByName("libc.so");
var BACKEND = "92.205.103.45";
var backendFds = {};   // fd -> ip:port (only while OPEN)

Interceptor.attach(libc.findExportByName("connect"), {
    onEnter: function(a) {
        try {
            var fd = a[0].toInt32();
            var sa = a[1]; var fam = sa.readU16();
            if (fam === 2) {
                var port = (sa.add(2).readU8()<<8)|sa.add(3).readU8();
                var ip = sa.add(4).readU8()+"."+sa.add(5).readU8()+"."+sa.add(6).readU8()+"."+sa.add(7).readU8();
                if (ip === BACKEND && port > 0) {
                    backendFds[fd] = ip + ":" + port;
                    send(T() + " CONNECT backend fd=" + fd);
                }
            }
        } catch(e) {}
    }
});

// close: remove fd from map so reuse does NOT cause false positives
Interceptor.attach(libc.findExportByName("close"), {
    onEnter: function(a) {
        var fd = a[0].toInt32();
        if (backendFds[fd]) {
            send(T() + " CLOSE backend fd=" + fd);
            delete backendFds[fd];
        }
    }
});

var totalOut = 0, totalIn = 0, writeCount = 0, readCount = 0;

["write","sendto","send"].forEach(function(fn) {
    var p = libc.findExportByName(fn);
    if (!p) return;
    Interceptor.attach(p, {
        onEnter: function(a) { this.fd = a[0].toInt32(); },
        onLeave: function(r) {
            var n = r.toInt32();
            if (n > 0 && backendFds[this.fd]) { totalOut += n; writeCount++; }
        }
    });
});
["read","recvfrom","recv"].forEach(function(fn) {
    var p = libc.findExportByName(fn);
    if (!p) return;
    Interceptor.attach(p, {
        onEnter: function(a) { this.fd = a[0].toInt32(); },
        onLeave: function(r) {
            var n = r.toInt32();
            if (n > 0 && backendFds[this.fd]) { totalIn += n; readCount++; }
        }
    });
});

send("[READY] fd-accurate backend capture");

// Report totals periodically
var iv = setInterval(function() {
    send("STATS out=" + totalOut + "B/" + writeCount + " in=" + totalIn + "B/" + readCount + " openFds=" + Object.keys(backendFds).length);
}, 5000);
'''

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        msgs.append(str(m["payload"]))
    elif m["type"] == "error":
        msgs.append("[ERR] " + str(m.get("description", "")))

script = session.create_script(js)
script.on("message", on_msg)
t0 = time.time()
script.load()
print("Monitoring 25s (fd-accurate)...")
for i in range(25):
    time.sleep(1)
    if detached[0]:
        break
try:
    script.unload(); session.detach()
except: pass

print(f"\n{'='*70}")
print(f"  CLEAN BACKEND CHANNEL (close-tracked) — {len(msgs)} events")
print(f"{'='*70}")
for m in msgs:
    print(f"  {m}")
print(f"{'='*70}")
