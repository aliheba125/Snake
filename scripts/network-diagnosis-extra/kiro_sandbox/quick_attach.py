import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Clear and start
print("Clearing app data...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "pm", "clear", "com.snake"],
               capture_output=True)
time.sleep(2)

print("Starting app...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
               capture_output=True)

# Poll for PID rapidly
pid = None
for attempt in range(20):
    time.sleep(0.5)
    result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                           capture_output=True, text=True)
    if result.stdout.strip():
        pid = int(result.stdout.strip())
        print(f"Got PID {pid} after {(attempt+1)*0.5:.1f}s")
        break

if not pid:
    print("Failed to get PID!")
    sys.exit(1)

# Attach ASAP
session = device.attach(pid)
detached_info = [False, None]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r

session.on("detached", on_d)

js = '''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var libc = Process.findModuleByName("libc.so");
var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") { ssl_mod = mods[i]; break; }
}

send("[INFO] mods=" + mods.length + " ssl=" + (ssl_mod ? "yes" : "no"));

// android_dlopen_ext (main loader on Android)
Interceptor.attach(libc.findExportByName("android_dlopen_ext"), {
    onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
    onLeave: function(r) { if (this.p) send(T() + " LOAD: " + this.p); }
});

// dlsym JNI
Interceptor.attach(libc.findExportByName("dlsym"), {
    onEnter: function(a) { this.s = a[1] ? a[1].readCString() : null; },
    onLeave: function(r) {
        if (this.s && (this.s.indexOf("JNI") >= 0 || this.s.indexOf("Java_") >= 0))
            send(T() + " DLSYM: " + this.s + " => " + r);
    }
});

// connect
Interceptor.attach(libc.findExportByName("connect"), {
    onEnter: function(a) {
        try {
            var sa = a[1]; var fam = sa.readU16();
            if (fam === 2) {
                var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
                if (port > 0 && ip !== "0.0.0.0" && ip !== "127.0.0.1")
                    send(T() + " CONNECT: " + ip + ":" + port);
            }
        } catch(e) {}
    }
});

// SSL
if (ssl_mod) {
    Interceptor.attach(ssl_mod.findExportByName("SSL_read"), {
        onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_READ: " + b + "B"); }
    });
    Interceptor.attach(ssl_mod.findExportByName("SSL_write"), {
        onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_WRITE: " + b + "B"); }
    });
}

send("[READY] " + T());
'''

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        msgs.append((time.time(), str(m["payload"])))
    elif m["type"] == "error":
        msgs.append((time.time(), "[ERR] " + str(m.get("description", ""))))

script = session.create_script(js)
script.on("message", on_msg)
t0 = time.time()
script.load()
print(f"Hooks loaded at +{time.time()-t0:.1f}s. Monitoring 35s...")

for i in range(35):
    time.sleep(1)
    if detached_info[0]:
        print(f"DETACHED at +{time.time()-t0:.1f}s reason={detached_info[1]}")
        break
else:
    print(f"Observation complete. Alive for 35s.")

try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*60}")
print(f"  RESULTS: {len(msgs)} events over {time.time()-t0:.1f}s")
print(f"{'='*60}")
for ts, m in msgs:
    print(f"  [{ts-t0:.3f}s] {m}")
print(f"{'='*60}")
