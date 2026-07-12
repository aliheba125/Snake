import frida
import time
import sys

results = []
session_dead = False

def on_message(message, data):
    if message["type"] == "send":
        results.append(str(message["payload"]))
    elif message["type"] == "error":
        results.append("[ERR] " + str(message.get("description", "?")))

def on_detached(reason, crash):
    global session_dead
    session_dead = True
    results.append(f"[DETACHED] reason={reason} crash={crash}")

js = r"""
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var libc = Process.findModuleByName("libc.so");
var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") { ssl_mod = mods[i]; break; }
}

send("[INFO] PID=" + Process.id + " libc=" + libc.base);

// dlopen
var dlopen_ptr = libc.findExportByName("dlopen");
if (dlopen_ptr) {
    Interceptor.attach(dlopen_ptr, {
        onEnter: function(args) { this.p = args[0] ? args[0].readCString() : null; },
        onLeave: function(retval) { if (this.p) send(T() + " dlopen: " + this.p + " => " + retval); }
    });
}

// android_dlopen_ext
var dlext_ptr = libc.findExportByName("android_dlopen_ext");
if (dlext_ptr) {
    Interceptor.attach(dlext_ptr, {
        onEnter: function(args) { this.p = args[0] ? args[0].readCString() : null; },
        onLeave: function(retval) { if (this.p) send(T() + " dlopen_ext: " + this.p + " => " + retval); }
    });
}

// dlsym (JNI/Java_ filter)
var dlsym_ptr = libc.findExportByName("dlsym");
if (dlsym_ptr) {
    Interceptor.attach(dlsym_ptr, {
        onEnter: function(args) { this.s = args[1] ? args[1].readCString() : null; },
        onLeave: function(retval) {
            if (this.s && (this.s.indexOf("JNI") >= 0 || this.s.indexOf("Java_") >= 0))
                send(T() + " dlsym: " + this.s + " => " + retval);
        }
    });
}

// connect
var connect_ptr = libc.findExportByName("connect");
if (connect_ptr) {
    Interceptor.attach(connect_ptr, {
        onEnter: function(args) {
            try {
                var sa = args[1]; var fam = sa.readU16();
                if (fam === 2) {
                    var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                    var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
                    if (port > 0 && ip !== "0.0.0.0")
                        send(T() + " connect: " + ip + ":" + port + " fd=" + args[0].toInt32());
                }
            } catch(e) {}
        }
    });
}

// SSL
if (ssl_mod) {
    var sr = ssl_mod.findExportByName("SSL_read");
    if (sr) Interceptor.attach(sr, {
        onEnter: function(a){this.n=a[2].toInt32();},
        onLeave: function(r){var b=r.toInt32(); if(b>0) send(T()+" SSL_read: "+b+" bytes");}
    });
    var sw = ssl_mod.findExportByName("SSL_write");
    if (sw) Interceptor.attach(sw, {
        onEnter: function(a){this.n=a[2].toInt32();},
        onLeave: function(r){var b=r.toInt32(); if(b>0) send(T()+" SSL_write: "+b+" bytes");}
    });
}

send("[READY] " + T());
"""

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Use attach mode instead of spawn (app already started via am start)
# First let the user start app manually
mode = sys.argv[1] if len(sys.argv) > 1 else "attach"

if mode == "spawn":
    print("Spawning com.snake...")
    pid = device.spawn(["com.snake"])
    print(f"Spawned PID={pid}, attaching...")
    session = device.attach(pid)
    session.on("detached", on_detached)
    script = session.create_script(js)
    script.on("message", on_message)
    script.load()
    print("Resuming...")
    device.resume(pid)
else:
    pid = int(mode)
    print(f"Attaching to running PID={pid}...")
    session = device.attach(pid)
    session.on("detached", on_detached)
    script = session.create_script(js)
    script.on("message", on_message)
    script.load()

print("Monitoring 30s...")
for i in range(30):
    time.sleep(1)
    if session_dead:
        print(f"  Session died at +{i}s")
        break

try:
    script.unload()
    session.detach()
except:
    pass

print()
print("=" * 60)
print(f"  RESULTS — {len(results)} events")
print("=" * 60)
for r in results:
    print(f"  {r}")
print("=" * 60)
