"""
Test hardware breakpoints on libengine.so functions.
HW breakpoints use debug registers (HW_BREAKPOINT) - they do NOT modify code memory.
The watchdog integrity check should NOT detect them.
"""
import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
t0 = time.time()
print("[+] Attached at t=0")

detach_info = {"reason": None, "time": None}
def on_detach(reason, crash):
    detach_info["reason"] = reason
    detach_info["time"] = time.time() - t0
    print("  [DETACH t+{:.1f}s] {}".format(detach_info["time"], reason))

session.on("detached", on_detach)

# Try Stalker (code tracing) instead of Interceptor
# Stalker copies code to a new location and instruments the copy
# It does NOT modify the original code in-place
SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
var KDF_ADDR = eng.base.add(0x161788);
var AES_ADDR = eng.base.add(0x160208);
send({t: "info", msg: "eng@" + eng.base + " KDF@" + KDF_ADDR + " AES@" + AES_ADDR});

// Method 1: Try Stalker (doesn't modify original code)
// Stalker follows threads and instruments a COPY of the code
// Problem: we need to know which thread will execute KDF

// Method 2: Memory.patchCode is also detected (writes to code)

// Method 3: Use a MemoryAccessMonitor on the ARGUMENTS
// When KDF is called, x0/x1/x2 will contain specific values
// We can't really do this without knowing when it's called

// Method 4: Hook the PLT/GOT entries that KDF calls
// If KDF calls any libc functions, we can detect those calls
// From static analysis: FUN_00161788 calls FUN_00898998 (SHA-256)
// which likely calls memcpy or similar

// Method 5: Frida's built-in "replace" with identical prologue
// Read the original bytes, set up a detour that preserves them

// Actually, let's try the simplest non-invasive approach:
// Use Process.setExceptionHandler to catch the function call
// via a hardware breakpoint

// Frida doesn't expose HW breakpoints directly, but we can use
// the debug register approach via inline assembly

// SIMPLEST APPROACH: Don't hook libengine at all.
// Instead, hook the CALLER in libapp.so (Dart code).
// Dart code is NOT integrity-checked (it's in a separate library).
// From static analysis: FUN_00189774 is called from Dart via FFI.
// The Dart FFI call goes through libflutter.so → libengine.so

// Let's find where libapp.so calls into libengine.so
// by hooking dlsym or the GOT entries in libapp

// Actually the cleanest test: does Stalker work?
try {
    // Get current thread ID
    var mainTid = Process.getCurrentThreadId();
    send({t: "info", msg: "Main thread: " + mainTid});
    
    // List all threads
    var threads = Process.enumerateThreads();
    send({t: "info", msg: "Total threads: " + threads.length});
    for (var i = 0; i < threads.length; i++) {
        send({t: "thread", id: threads[i].id, state: threads[i].state});
    }
    
    // Try Stalker on all threads - follow and watch for KDF address
    // This is expensive but doesn't modify code
    // Actually Stalker.follow DOES use code transformation but in a COPY
    // The original code stays intact - watchdog checks original = safe
    
    send({t: "info", msg: "Attempting Stalker.follow on main thread..."});
    
    var kdf_hit = false;
    Stalker.follow(mainTid, {
        events: { call: true },
        onReceive: function(events) {
            var dominated = Stalker.parse(events, {stringify: false, annotate: false});
            for (var i = 0; i < dominated.length; i++) {
                var ev = dominated[i];
                if (ev[1] && ev[1].compare && ev[1].compare(KDF_ADDR) === 0) {
                    send({t: "KDF_VIA_STALKER", target: ev[1].toString()});
                    kdf_hit = true;
                }
            }
        }
    });
    
    send({t: "info", msg: "Stalker.follow started on thread " + mainTid});
} catch(e) {
    send({t: "error", msg: "Stalker failed: " + e.message});
}

send({t: "setup_done"});
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        p = m["payload"]
        events.append(p)
        t = p.get("t", "")
        if t == "KDF_VIA_STALKER":
            print("  *** KDF DETECTED via Stalker! ***")
        elif t == "thread":
            pass  # too noisy
        elif t == "info":
            print("  [i] " + p.get("msg",""))
        elif t == "error":
            print("  [!] " + p.get("msg",""))
        elif t == "setup_done":
            print("  [+] Setup complete")
    elif m["type"] == "error":
        print("  [ERR] " + str(m.get("description",""))[:200])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()

# Monitor survival
print("\n[*] Monitoring process survival...")
for i in range(15):
    time.sleep(1)
    elapsed = time.time() - t0
    ps = subprocess.run(["adb","shell","ps -A | grep com.snake$"],
                       capture_output=True, text=True, timeout=5).stdout.strip()
    if not ps:
        print("  *** DEAD at t+{:.1f}s ***".format(elapsed))
        break
    if i == 3:
        print("  [t+{:.1f}s] Alive after Stalker. Process survived!".format(elapsed))
    if i == 8:
        print("  [t+{:.1f}s] Still alive! Stalker doesn't trigger watchdog.".format(elapsed))

print("\nDetach info:", detach_info)
print("Total events:", len(events))

# Count thread events
thread_events = [e for e in events if e.get("t") == "thread"]
print("Threads:", len(thread_events))

try:
    session.detach()
except:
    pass
