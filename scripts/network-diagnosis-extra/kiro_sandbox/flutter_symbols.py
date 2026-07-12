import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
if not result.stdout.strip():
    subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"],
                   capture_output=True)
    time.sleep(12)
    result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                           capture_output=True, text=True)

pid = int(result.stdout.strip())
print(f"Attaching to PID {pid}...")
session = device.attach(pid)

js = r'''
var flutter = Process.findModuleByName("libflutter.so");
var syms = flutter.enumerateSymbols();
send("[INFO] libflutter symbols=" + syms.length);

// Categorize interesting symbols
var interesting = [];
syms.forEach(function(s) {
    var n = s.name.toLowerCase();
    if (n.indexOf("socket") >= 0 || n.indexOf("secure") >= 0 ||
        n.indexOf("write") >= 0 || n.indexOf("read") >= 0 ||
        n.indexOf("send") >= 0 || n.indexOf("recv") >= 0 ||
        n.indexOf("tls") >= 0 || n.indexOf("crypt") >= 0 ||
        n.indexOf("cert") >= 0 || n.indexOf("handshake") >= 0 ||
        n.indexOf("connect") >= 0) {
        interesting.push(s.type + " | " + s.name + " @ " + s.address);
    }
});
send("[INTERESTING SYMBOLS]: " + interesting.length);
interesting.slice(0, 60).forEach(function(x) { send("  " + x); });

// Also dump first 40 function symbols to understand naming
send("\n[SAMPLE FUNCTION SYMBOLS]:");
var funcs = syms.filter(function(s){ return s.type === "function"; });
send("  total functions=" + funcs.length);
funcs.slice(0, 40).forEach(function(f) { send("  " + f.name); });

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
print(f"  libflutter.so SYMBOL ENUMERATION")
print(f"{'='*70}")
for m in msgs:
    print(m)
print(f"{'='*70}")
