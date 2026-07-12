import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

print("Force-stopping app...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               capture_output=True)
time.sleep(3)

print("Spawning com.snake with JNI_OnLoad + timing instrumentation...")
pid = device.spawn(["com.snake"])
print(f"Spawned PID={pid}")

session = device.attach(pid)
events = []
detach_time = [None, None]

def on_d(r, c):
    detach_time[0] = time.time()
    detach_time[1] = r

session.on("detached", on_d)

js = r'''
var t0 = Date.now();
function T() { return "+" + (Date.now()-t0) + "ms"; }

// Hook libengine JNI_OnLoad
var engine = Process.findModuleByName("libengine.so");
if (engine) {
    var jni = engine.findExportByName("JNI_OnLoad");
    if (jni) {
        Interceptor.attach(jni, {
            onEnter: function(a) { send(T() + " libengine.JNI_OnLoad ENTER"); },
            onLeave: function(r) { send(T() + " libengine.JNI_OnLoad LEAVE => " + r); }
        });
    }
    send("[HOOK] libengine present, JNI_OnLoad @ " + jni);
} else {
    send("[INFO] libengine NOT yet loaded at hook time");
}

// Hook android_dlopen_ext to see when libengine loads
var libc = Process.findModuleByName("libc.so");
Interceptor.attach(libc.findExportByName("android_dlopen_ext"), {
    onEnter: function(a) { this.p = a[0] ? a[0].readCString() : null; },
    onLeave: function(r) {
        if (this.p && (this.p.indexOf("engine") >= 0 || this.p.indexOf("flutter") >= 0 || this.p.indexOf("app.so") >= 0))
            send(T() + " LOAD: " + this.p);
    }
});

// Hook common anti-debug / process-check syscalls
["ptrace", "kill", "exit", "_exit", "abort"].forEach(function(fn) {
    var p = libc.findExportByName(fn);
    if (p) {
        Interceptor.attach(p, {
            onEnter: function(a) {
                send(T() + " CALL " + fn + "(" + a[0] + (fn==="kill"?", sig="+a[1]:"") + ")");
            }
        });
    }
});

send("[READY] " + T());
'''

def on_msg(m, d):
    if m["type"] == "send":
        events.append((time.time(), str(m["payload"])))
    elif m["type"] == "error":
        events.append((time.time(), "[ERR] " + str(m.get("description", ""))))

script = session.create_script(js)
script.on("message", on_msg)
script.load()
t0 = time.time()
print("Resuming...")
device.resume(pid)

for i in range(15):
    time.sleep(0.2)
    if detach_time[0]:
        break

print(f"\n{'='*70}")
if detach_time[0]:
    print(f"  PROCESS TERMINATED at +{detach_time[0]-t0:.2f}s (reason={detach_time[1]})")
else:
    print(f"  Process survived spawn")
print(f"{'='*70}")
for ts, m in events:
    print(f"  [+{ts-t0:.3f}s] {m}")
print(f"{'='*70}")

try:
    script.unload()
    session.detach()
except:
    pass
