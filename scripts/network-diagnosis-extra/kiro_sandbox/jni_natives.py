import frida
import time
import subprocess
import sys

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Spawn to catch JNI_OnLoad / RegisterNatives at the very start
print("Force-stopping app...")
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"],
               capture_output=True)
time.sleep(3)

print("Spawning com.snake...")
pid = device.spawn(["com.snake"])
print(f"Spawned PID={pid}")

session = device.attach(pid)
detached_info = [False, None]

def on_d(r, c):
    detached_info[0] = True
    detached_info[1] = r

session.on("detached", on_d)

js = r'''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

// Hook RegisterNatives via libart.so
// ART's JNI RegisterNatives has signature:
//   jint RegisterNatives(JNIEnv*, jclass, const JNINativeMethod*, jint)
// We find it by symbol in libart.so
var libart = null;
var mods = Process.enumerateModules();
for (var i = 0; i < mods.length; i++) {
    if (mods[i].name === "libart.so") { libart = mods[i]; break; }
}

send("[INFO] libart=" + (libart ? libart.base : "N/A"));

// Find RegisterNatives symbol in libart
var registerNatives = null;
if (libart) {
    var exps = libart.enumerateSymbols();
    for (var i = 0; i < exps.length; i++) {
        if (exps[i].name.indexOf("RegisterNatives") >= 0 && exps[i].name.indexOf("CheckJNI") < 0) {
            send("[SYM] " + exps[i].name + " @ " + exps[i].address);
            if (exps[i].name.indexOf("_ZN3art3JNI15RegisterNatives") >= 0 ||
                (registerNatives === null && exps[i].name.indexOf("RegisterNatives") >= 0)) {
                registerNatives = exps[i].address;
            }
        }
    }
}

if (registerNatives) {
    Interceptor.attach(registerNatives, {
        onEnter: function(args) {
            // args: JNIEnv*, jclass, JNINativeMethod*, jint count
            var methods = args[2];
            var count = args[3].toInt32();
            send(T() + " RegisterNatives count=" + count);
            // JNINativeMethod { char* name; char* signature; void* fnPtr; } = 24 bytes on arm64
            for (var i = 0; i < count && i < 50; i++) {
                try {
                    var entry = methods.add(i * 24);
                    var namePtr = entry.readPointer();
                    var sigPtr = entry.add(8).readPointer();
                    var fnPtr = entry.add(16).readPointer();
                    var name = namePtr.readCString();
                    var sig = sigPtr.readCString();
                    send("    [" + i + "] " + name + " " + sig + " => " + fnPtr);
                } catch(e) {
                    send("    [" + i + "] <read error: " + e + ">");
                }
            }
        }
    });
    send("[HOOK] RegisterNatives attached");
} else {
    send("[!] RegisterNatives symbol not found");
}

// Also hook JNI_OnLoad of libengine.so to confirm it's called
var engine = Process.findModuleByName("libengine.so");
if (engine) {
    var jniLoad = engine.findExportByName("JNI_OnLoad");
    if (jniLoad) {
        Interceptor.attach(jniLoad, {
            onEnter: function(args) {
                send(T() + " >>> libengine.so JNI_OnLoad ENTER");
            },
            onLeave: function(r) {
                send(T() + " <<< libengine.so JNI_OnLoad LEAVE => " + r);
            }
        });
        send("[HOOK] libengine JNI_OnLoad @ " + jniLoad);
    }
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
t0 = time.time()
print("Resuming to capture JNI registration...")
device.resume(pid)

for i in range(20):
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
print(f"  JNI RegisterNatives CAPTURE — {len(msgs)} lines")
print(f"{'='*70}")
for m in msgs:
    print(m)
print(f"{'='*70}")
