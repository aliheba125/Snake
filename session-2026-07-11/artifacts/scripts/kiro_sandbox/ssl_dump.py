import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Clear and start for a clean startup capture
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
    time.sleep(0.4)
    result = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                           capture_output=True, text=True)
    if result.stdout.strip():
        pid = int(result.stdout.strip())
        print(f"Got PID {pid} after {(attempt+1)*0.4:.1f}s")
        break

if not pid:
    print("Failed to get PID!")
    sys.exit(1)

session = device.attach(pid)
detached_info = [False, None]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r

session.on("detached", on_d)

js = r'''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var mods = Process.enumerateModules();
var ssl_mod = null;
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libssl.so") { ssl_mod = mods[i]; break; }
}

function hexPreview(ptr, len) {
    var maxLen = Math.min(len, 256);
    try {
        var bytes = ptr.readByteArray(maxLen);
        return bytes;
    } catch(e) { return null; }
}

function asciiPreview(ptr, len) {
    var maxLen = Math.min(len, 512);
    var s = "";
    try {
        for (var i = 0; i < maxLen; i++) {
            var b = ptr.add(i).readU8();
            if (b >= 32 && b < 127) s += String.fromCharCode(b);
            else s += ".";
        }
    } catch(e) {}
    return s;
}

// SSL_write - capture outgoing (plaintext before encryption)
var sw = ssl_mod.findExportByName("SSL_write");
Interceptor.attach(sw, {
    onEnter: function(a) {
        this.buf = a[1];
        this.num = a[2].toInt32();
    },
    onLeave: function(r) {
        var b = r.toInt32();
        if (b > 0) {
            send(T() + " SSL_write len=" + b);
            send("  ASCII: " + asciiPreview(this.buf, b));
            var ba = hexPreview(this.buf, b);
            if (ba) send({ type: "hexdump", dir: "write", len: b }, ba);
        }
    }
});

// SSL_read - capture incoming (plaintext after decryption)
var sr = ssl_mod.findExportByName("SSL_read");
Interceptor.attach(sr, {
    onEnter: function(a) {
        this.buf = a[1];
        this.num = a[2].toInt32();
    },
    onLeave: function(r) {
        var b = r.toInt32();
        if (b > 0) {
            send(T() + " SSL_read len=" + b);
            send("  ASCII: " + asciiPreview(this.buf, b));
            var ba = hexPreview(this.buf, b);
            if (ba) send({ type: "hexdump", dir: "read", len: b }, ba);
        }
    }
});

send("[READY] SSL hooks active " + T());
'''

msgs = []

def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        if isinstance(p, dict) and p.get("type") == "hexdump":
            if d:
                hx = " ".join(f"{b:02x}" for b in d[:64])
                msgs.append(f"  HEX({p['dir']},{p['len']}B first64): {hx}")
        else:
            msgs.append(str(p))
    elif m["type"] == "error":
        msgs.append("[ERR] " + str(m.get("description", "")))

script = session.create_script(js)
script.on("message", on_msg)
t0 = time.time()
script.load()
print(f"Hooks loaded. Monitoring 25s for TLS traffic...")

for i in range(25):
    time.sleep(1)
    if detached_info[0]:
        print(f"DETACHED at +{time.time()-t0:.1f}s reason={detached_info[1]}")
        break

try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*70}")
print(f"  TLS PAYLOAD CAPTURE — {len(msgs)} lines")
print(f"{'='*70}")
for m in msgs:
    print(m)
print(f"{'='*70}")
