import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Clean start to capture backend handshake from beginning
print("Clearing + starting app...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "pm", "clear", "com.snake"],
               capture_output=True)
time.sleep(2)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               capture_output=True)

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
    print("Failed to get PID")
    sys.exit(1)

session = device.attach(pid)
detached = [False]
def on_d(r, c): detached[0] = True
session.on("detached", on_d)

# Hook connect to map fd->IP, then hook socket I/O filtered to backend IP
js = r'''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var libc = Process.findModuleByName("libc.so");
var BACKEND = "92.205.103.45";
var fdMap = {};   // fd -> "ip:port"
var backendFds = {};  // fd -> true if backend

// connect: record fd -> ip:port
Interceptor.attach(libc.findExportByName("connect"), {
    onEnter: function(a) {
        try {
            var fd = a[0].toInt32();
            var sa = a[1]; var fam = sa.readU16();
            if (fam === 2) {
                var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                var ip = sa.add(4).readU8()+"."+sa.add(5).readU8()+"."+sa.add(6).readU8()+"."+sa.add(7).readU8();
                if (port > 0 && ip !== "0.0.0.0") {
                    fdMap[fd] = ip + ":" + port;
                    if (ip === BACKEND) {
                        backendFds[fd] = true;
                        send(T() + " CONNECT backend fd=" + fd + " " + ip + ":" + port);
                    }
                }
            }
        } catch(e) {}
    }
});

function dumpAscii(ptr, len) {
    var n = Math.min(len, 400);
    var s = "";
    try {
        for (var i = 0; i < n; i++) {
            var b = ptr.add(i).readU8();
            s += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
        }
    } catch(e) {}
    return s;
}

// write / send / sendto : outgoing on backend fd
["write", "send", "sendto"].forEach(function(fn) {
    var p = libc.findExportByName(fn);
    if (!p) return;
    Interceptor.attach(p, {
        onEnter: function(a) {
            this.fd = a[0].toInt32();
            this.buf = a[1];
            this.len = a[2] ? a[2].toInt32() : 0;
        },
        onLeave: function(r) {
            var n = r.toInt32();
            if (n > 0 && backendFds[this.fd]) {
                send(T() + " " + fn.toUpperCase() + " fd=" + this.fd + " n=" + n + " (" + (fdMap[this.fd]||"?") + ")");
                send("   ASCII: " + dumpAscii(this.buf, n));
            }
        }
    });
});

// read / recv / recvfrom : incoming on backend fd
["read", "recv", "recvfrom"].forEach(function(fn) {
    var p = libc.findExportByName(fn);
    if (!p) return;
    Interceptor.attach(p, {
        onEnter: function(a) {
            this.fd = a[0].toInt32();
            this.buf = a[1];
        },
        onLeave: function(r) {
            var n = r.toInt32();
            if (n > 0 && backendFds[this.fd]) {
                send(T() + " " + fn.toUpperCase() + " fd=" + this.fd + " n=" + n + " (" + (fdMap[this.fd]||"?") + ")");
                send("   ASCII: " + dumpAscii(this.buf, n));
            }
        }
    });
});

send("[READY] socket I/O hooks active, filtering fd->" + BACKEND);
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
print("Hooks loaded. Monitoring 25s for backend socket I/O...")

for i in range(25):
    time.sleep(1)
    if detached[0]:
        print(f"DETACHED at +{time.time()-t0:.1f}s")
        break

try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*70}")
print(f"  BACKEND (92.205.103.45) SOCKET I/O — {len(msgs)} lines")
print(f"{'='*70}")
for m in msgs:
    print(m)
print(f"{'='*70}")
