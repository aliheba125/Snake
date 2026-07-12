import frida
import time
import sys

results = []

def on_message(message, data):
    if message["type"] == "send":
        results.append(str(message["payload"]))
    elif message["type"] == "error":
        results.append("[ERR] " + str(message.get("description", "?")))

JS_CODE = '''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var libc = Process.findModuleByName("libc.so");
var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") { ssl_mod = mods[i]; break; }
}

send("[INFO] libc=" + libc.base + " libssl=" + (ssl_mod ? ssl_mod.base : "N/A"));

// === dlopen ===
var dlopen_ptr = libc.findExportByName("dlopen");
if (dlopen_ptr) {
    Interceptor.attach(dlopen_ptr, {
        onEnter: function(args) { this.p = args[0] ? args[0].readCString() : null; },
        onLeave: function(retval) { if (this.p) send(T() + " dlopen: " + this.p + " => " + retval); }
    });
    send("[HOOK] dlopen OK");
}

// === android_dlopen_ext ===
var dlext_ptr = libc.findExportByName("android_dlopen_ext");
if (dlext_ptr) {
    Interceptor.attach(dlext_ptr, {
        onEnter: function(args) { this.p = args[0] ? args[0].readCString() : null; },
        onLeave: function(retval) { if (this.p) send(T() + " dlopen_ext: " + this.p + " => " + retval); }
    });
    send("[HOOK] android_dlopen_ext OK");
}

// === dlsym (filter JNI/Java_) ===
var dlsym_ptr = libc.findExportByName("dlsym");
if (dlsym_ptr) {
    Interceptor.attach(dlsym_ptr, {
        onEnter: function(args) { this.s = args[1] ? args[1].readCString() : null; },
        onLeave: function(retval) {
            if (this.s && (this.s.indexOf("JNI") >= 0 || this.s.indexOf("Java_") >= 0))
                send(T() + " dlsym: " + this.s + " => " + retval);
        }
    });
    send("[HOOK] dlsym OK");
}

// === connect ===
var connect_ptr = libc.findExportByName("connect");
if (connect_ptr) {
    Interceptor.attach(connect_ptr, {
        onEnter: function(args) {
            try {
                var sa = args[1];
                var fam = sa.readU16();
                if (fam === 2) {
                    var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                    var ip = sa.add(4).readU8() + "." + sa.add(5).readU8() + "." + sa.add(6).readU8() + "." + sa.add(7).readU8();
                    if (port > 0 && ip !== "0.0.0.0")
                        send(T() + " connect: " + ip + ":" + port + " fd=" + args[0].toInt32());
                } else if (fam === 10 || fam === 30) {
                    var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                    if (port > 0)
                        send(T() + " connect: [IPv6]:" + port + " fd=" + args[0].toInt32());
                }
            } catch(e) {}
        }
    });
    send("[HOOK] connect OK");
}

// === SSL_read ===
if (ssl_mod) {
    var ssl_read_ptr = ssl_mod.findExportByName("SSL_read");
    if (ssl_read_ptr) {
        Interceptor.attach(ssl_read_ptr, {
            onEnter: function(args) { this.n = args[2].toInt32(); },
            onLeave: function(retval) {
                var b = retval.toInt32();
                if (b > 0) send(T() + " SSL_read: " + b + " bytes");
            }
        });
        send("[HOOK] SSL_read OK");
    }

    // === SSL_write ===
    var ssl_write_ptr = ssl_mod.findExportByName("SSL_write");
    if (ssl_write_ptr) {
        Interceptor.attach(ssl_write_ptr, {
            onEnter: function(args) { this.n = args[2].toInt32(); },
            onLeave: function(retval) {
                var b = retval.toInt32();
                if (b > 0) send(T() + " SSL_write: " + b + " bytes");
            }
        });
        send("[HOOK] SSL_write OK");
    }
}

send("[READY] All hooks active. Monitoring...");
'''

pid = int(sys.argv[1])
name = sys.argv[2] if len(sys.argv) > 2 else "process"
duration = int(sys.argv[3]) if len(sys.argv) > 3 else 20

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")
print(f"Attaching to {name} (PID {pid})...")
session = device.attach(pid)
script = session.create_script(JS_CODE)
script.on("message", on_message)
script.load()
print(f"Monitoring for {duration}s...")
time.sleep(duration)
script.unload()
session.detach()

print(f"\n{'='*60}")
print(f"  {name} (PID {pid}) — {len(results)} events in {duration}s")
print(f"{'='*60}")
for r in results:
    print(f"  {r}")
print(f"{'='*60}")
