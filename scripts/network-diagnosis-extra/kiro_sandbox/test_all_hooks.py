import frida
import time
import sys

pid = int(sys.argv[1])
device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

print(f"Attaching to PID {pid}...")
session = device.attach(pid)
detached_info = [False, None, 0]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r
    detached_info[2] = time.time()

session.on("detached", on_d)

# All hooks from before - test which one triggers detection
js = '''
var libc = Process.findModuleByName("libc.so");
var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") { ssl_mod = mods[i]; break; }
}

var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

// dlopen
var p1 = libc.findExportByName("dlopen");
if (p1) {
    Interceptor.attach(p1, {
        onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
        onLeave: function(r) { if (this.p) send(T() + " dlopen: " + this.p); }
    });
    send("[OK] dlopen hooked");
}

// android_dlopen_ext
var p2 = libc.findExportByName("android_dlopen_ext");
if (p2) {
    Interceptor.attach(p2, {
        onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
        onLeave: function(r) { if (this.p) send(T() + " dlopen_ext: " + this.p); }
    });
    send("[OK] android_dlopen_ext hooked");
}

// dlsym
var p3 = libc.findExportByName("dlsym");
if (p3) {
    Interceptor.attach(p3, {
        onEnter: function(a) { this.s = a[1] ? a[1].readCString() : null; },
        onLeave: function(r) {
            if (this.s && (this.s.indexOf("JNI") >= 0 || this.s.indexOf("Java_") >= 0))
                send(T() + " dlsym: " + this.s + " => " + r);
        }
    });
    send("[OK] dlsym hooked");
}

// connect
var p4 = libc.findExportByName("connect");
if (p4) {
    Interceptor.attach(p4, {
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
    send("[OK] connect hooked");
}

// SSL_read
if (ssl_mod) {
    var p5 = ssl_mod.findExportByName("SSL_read");
    if (p5) {
        Interceptor.attach(p5, {
            onEnter: function(a) { this.n = a[2].toInt32(); },
            onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_read: " + b + "B"); }
        });
        send("[OK] SSL_read hooked");
    }

    var p6 = ssl_mod.findExportByName("SSL_write");
    if (p6) {
        Interceptor.attach(p6, {
            onEnter: function(a) { this.n = a[2].toInt32(); },
            onLeave: function(r) { var b = r.toInt32(); if (b > 0) send(T() + " SSL_write: " + b + "B"); }
        });
        send("[OK] SSL_write hooked");
    }
}

send("[READY] All hooks active at " + T());
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
print("All hooks loaded. Monitoring 30s...")

for i in range(30):
    time.sleep(1)
    if detached_info[0]:
        dt = detached_info[2] - t0
        print(f">>> DETACHED after {dt:.1f}s reason={detached_info[1]}")
        break
    # Print any new messages in real-time
    while len(msgs) > 0:
        m = msgs.pop(0)
        print(f"  {m}")
else:
    print(">>> Still alive after 30s!")
    try:
        script.unload()
        session.detach()
    except:
        pass

# Print remaining messages
for m in msgs:
    print(f"  {m}")
print(f"\nTotal duration: {time.time()-t0:.1f}s")
