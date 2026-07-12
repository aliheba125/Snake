import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Kill app
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               capture_output=True)
time.sleep(3)

# Spawn and attach early
print("Spawning com.snake...")
pid = device.spawn(["com.snake"])
print(f"Spawned PID={pid}")

session = device.attach(pid)
detached_info = [False, None, 0]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r
    detached_info[2] = time.time()

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

send("[INFO] libc=" + libc.base + " ssl=" + (ssl_mod ? ssl_mod.base : "N/A") + " mods=" + mods.length);

// dlopen
Interceptor.attach(libc.findExportByName("dlopen"), {
    onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
    onLeave: function(r) { if (this.p) send(T() + " dlopen: " + this.p); }
});

// android_dlopen_ext
Interceptor.attach(libc.findExportByName("android_dlopen_ext"), {
    onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
    onLeave: function(r) { if (this.p) send(T() + " dlopen_ext: " + this.p); }
});

// dlsym (JNI filter)
Interceptor.attach(libc.findExportByName("dlsym"), {
    onEnter: function(a) { this.s = a[1] ? a[1].readCString() : null; },
    onLeave: function(r) {
        if (this.s && (this.s.indexOf("JNI") >= 0 || this.s.indexOf("Java_") >= 0))
            send(T() + " dlsym: " + this.s + " => " + r);
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
                    send(T() + " connect: " + ip + ":" + port);
            }
        } catch(e) {}
    }
});

// SSL
if (ssl_mod) {
    var sr = ssl_mod.findExportByName("SSL_read");
    if (sr) Interceptor.attach(sr, {
        onEnter: function(a) { this.n = a[2].toInt32(); },
        onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_read: " + b + "B"); }
    });
    var sw = ssl_mod.findExportByName("SSL_write");
    if (sw) Interceptor.attach(sw, {
        onEnter: function(a) { this.n = a[2].toInt32(); },
        onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_write: " + b + "B"); }
    });
    send("[OK] SSL hooks");
}

send("[READY] " + T());
'''

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        msgs.append(str(m["payload"]))
    elif m["type"] == "error":
        msgs.append("[ERR] " + str(m.get("description", "")))

script = session.create_script(js)
script.on("message", on_msg)
script.load()
print("Hooks loaded. Resuming process...")
t0 = time.time()
device.resume(pid)
print("Monitoring 40s of startup+runtime...")

for i in range(40):
    time.sleep(1)
    if detached_info[0]:
        dt = detached_info[2] - t0
        print(f">>> DETACHED at +{dt:.1f}s reason={detached_info[1]}")
        break

try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*60}")
print(f"  STARTUP OBSERVATION — {len(msgs)} events in {time.time()-t0:.1f}s")
print(f"{'='*60}")
for m in msgs:
    print(f"  {m}")
print(f"{'='*60}")
