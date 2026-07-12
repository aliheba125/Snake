import frida
import time
import subprocess
import sys

CAND_OFFSET = 0x6d4be8

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
    sys.exit(1)

session = device.attach(pid)
detached = [False]
def on_d(r, c): detached[0] = True
session.on("detached", on_d)

js = """
var CAND = %d;
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var flutter = Process.findModuleByName("libflutter.so");
var target = flutter.base.add(CAND);
send("[INFO] libflutter base=" + flutter.base + " target=" + target);

function asciiOf(ptr, len) {
    var n = Math.min(len, 300);
    var s = "";
    try {
        for (var i = 0; i < n; i++) {
            var b = ptr.add(i).readU8();
            s += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
        }
    } catch(e) { s += "<err:"+e+">"; }
    return s;
}

var hitCount = 0;
Interceptor.attach(target, {
    onEnter: function(args) {
        hitCount++;
        if (hitCount > 40) return;  // limit noise
        this.x0 = args[0]; this.x1 = args[1]; this.x2 = args[2]; this.x3 = args[3];
        // Try to interpret x1/x2 as buffers, x3 as length
        var len3 = this.x3.toInt32();
        var msg = T() + " CALL#" + hitCount + " x3(len?)=" + len3;
        send(msg);
        // Dump x1 and x2 as potential plaintext buffers
        if (len3 > 0 && len3 < 100000) {
            send("   x2-as-buf(len=x3): " + asciiOf(this.x2, len3));
            send("   x1-as-buf(len=x3): " + asciiOf(this.x1, len3));
        } else {
            send("   x1-as-buf(64): " + asciiOf(this.x1, 64));
            send("   x2-as-buf(64): " + asciiOf(this.x2, 64));
        }
    }
});
send("[READY] hooked candidate " + target);
"""% CAND_OFFSET

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
print("Monitoring 20s...")
for i in range(20):
    time.sleep(1)
    if detached[0]:
        print(f"DETACHED +{time.time()-t0:.1f}s")
        break
try:
    script.unload(); session.detach()
except: pass

print(f"\n{'='*70}")
print(f"  CANDIDATE 0x6d4be8 RUNTIME ARGS — {len(msgs)} lines")
print(f"{'='*70}")
for m in msgs[:120]:
    print(f"  {m}")
print(f"{'='*70}")
