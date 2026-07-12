import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Attach to already-running app (steady state, no spawn-detection)
result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
if not result.stdout.strip():
    print("App not running, starting...")
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
                   capture_output=True)
    time.sleep(12)
    result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                           capture_output=True, text=True)

pid = int(result.stdout.strip())
print(f"Attaching to PID {pid}...")
session = device.attach(pid)

js = r'''
// Investigate libflutter.so for BoringSSL symbols
var flutter = Process.findModuleByName("libflutter.so");
send("[INFO] libflutter base=" + flutter.base + " size=" + flutter.size);

// Enumerate ALL symbols (not just exports)
var syms = flutter.enumerateSymbols();
send("[INFO] libflutter total symbols=" + syms.length);

var sslSyms = [];
syms.forEach(function(s) {
    var n = s.name;
    if (n.indexOf("SSL_read") >= 0 || n.indexOf("SSL_write") >= 0 ||
        n.indexOf("SSL_do_handshake") >= 0 || n.indexOf("ssl_") >= 0 ||
        n.indexOf("BoringSSL") >= 0 || n === "SSL_read" || n === "SSL_write") {
        sslSyms.push(s.type + " | " + s.name + " @ " + s.address);
    }
});
send("[SSL SYMBOLS in libflutter]: " + sslSyms.length);
sslSyms.slice(0, 30).forEach(function(x) { send("  " + x); });

// Also check imports of libflutter (does it import from system libssl?)
var imps = flutter.enumerateImports();
var sslImps = [];
imps.forEach(function(im) {
    if (im.name.indexOf("SSL_") >= 0 || im.name.indexOf("ssl") >= 0) {
        sslImps.push(im.name + " <- " + (im.module || "?"));
    }
});
send("[SSL IMPORTS in libflutter]: " + sslImps.length);
sslImps.slice(0, 20).forEach(function(x) { send("  " + x); });

send("[DONE]");
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
time.sleep(5)
try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*70}")
print(f"  libflutter.so BoringSSL INVESTIGATION")
print(f"{'='*70}")
for m in msgs:
    print(m)
print(f"{'='*70}")
