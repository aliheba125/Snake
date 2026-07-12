"""
Precise measurement: what happens between Interceptor.attach and process death.
Goal: capture heartbeats to determine exact time of death, and last message.
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Restart app fresh
adb("am force-stop com.snake")
time.sleep(1)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
time.sleep(18)
subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
t0 = time.time()
print("[+] Attached at t=0")

SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
send("eng@" + eng.base);

var t0 = Date.now();

// Install Interceptor (this will trigger death)
send("installing hook at t+" + (Date.now()-t0) + "ms...");
Interceptor.attach(eng.base.add(0x161788), {
    onEnter: function(a) { send("KDF_HIT"); }
});
send("hook_done at t+" + (Date.now()-t0) + "ms");

// Send heartbeats every 50ms
var n = 0;
var iv = setInterval(function() {
    n++;
    send("hb" + n + " t+" + (Date.now()-t0) + "ms");
    if (n > 40) clearInterval(iv);
}, 50);
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append((m["payload"], time.time()-t0))
        print("  [{:.3f}s] {}".format(time.time()-t0, m["payload"]))
    elif m["type"] == "error":
        events.append(("ERR:"+m.get("description",""), time.time()-t0))
        print("  [{:.3f}s] ERR: {}".format(time.time()-t0, m.get("description","")))

detach_time = [None]
def on_detach(reason, crash):
    detach_time[0] = time.time()-t0
    print("  [{:.3f}s] === DETACH: {} ===".format(detach_time[0], reason))
    if crash:
        print("  CRASH REPORT: {}".format(str(crash)[:500]))

session.on("detached", on_detach)
sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

time.sleep(5)

print("\n" + "="*60)
print("RESULTS:")
print("  Total messages received: {}".format(len(events)))
print("  Detach time: {}".format(detach_time[0]))
if events:
    print("  First event: [{:.3f}s] {}".format(events[0][1], events[0][0]))
    print("  Last event:  [{:.3f}s] {}".format(events[-1][1], events[-1][0]))
    hb_events = [(p,t) for p,t in events if isinstance(p,str) and p.startswith("hb")]
    print("  Heartbeats received: {}".format(len(hb_events)))
    if hb_events:
        print("  Last heartbeat: [{:.3f}s] {}".format(hb_events[-1][1], hb_events[-1][0]))
print("="*60)
