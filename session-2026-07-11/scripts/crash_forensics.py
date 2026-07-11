"""
Forensic crash analysis:
- Install ONE hook on libengine (KDF only)
- Tap game
- Collect: signal, fault address, backtrace, logcat tombstone
- Repeat 2 times for reproducibility
"""
import frida, time, subprocess, json

def adb(cmd):
    return subprocess.run(["adb", "shell", cmd], capture_output=True, text=True, timeout=10).stdout.strip()

def run_trial(trial_num):
    print(f"\n{'='*60}")
    print(f"  TRIAL {trial_num}")
    print(f"{'='*60}")
    
    # Fresh start
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)
    
    focus = adb("dumpsys window | grep mCurrentFocus")
    print(f"  Focus: {focus}")
    if "com.snake" not in focus:
        print("  [-] App not in foreground!")
        return {"trial": trial_num, "error": "not_foreground"}
    
    pid = adb("ps -A | grep 'com.snake$' | awk '{print $2}'")
    print(f"  PID: {pid}")
    
    subprocess.run(["adb", "forward", "tcp:27052", "tcp:27052"], capture_output=True, timeout=5)
    mgr = frida.get_device_manager()
    device = mgr.add_remote_device("127.0.0.1:27052")
    session = device.attach("Gadget")
    print(f"  [+] Attached to Gadget")
    
    # Install SINGLE hook on KDF (0x161788) only
    SCRIPT = """
var eng = Process.findModuleByName("libengine.so");
send({t: "eng", base: eng ? eng.base.toString() : null, size: eng ? eng.size : 0});

if (eng) {
    try {
        Interceptor.attach(eng.base.add(0x161788), {
            onEnter: function(a) {
                send({t: "KDF", s1: (a[1].toUInt32()>>>0).toString(16), s2: a[2].toString()});
            }
        });
        send({t: "hook", status: "OK", addr: eng.base.add(0x161788).toString()});
    } catch(e) {
        send({t: "hook", status: "FAIL", error: e.message});
    }
}
"""
    
    events = []
    detach_reason = [None]
    
    def on_msg(m, d):
        if m["type"] == "send":
            events.append(m["payload"])
            print(f"    {m['payload']}")
        elif m["type"] == "error":
            events.append({"error": m.get("description","")})
            print(f"    [ERR] {m.get('description','')[:150]}")
    
    def on_detach(reason, crash):
        detach_reason[0] = reason
        print(f"    [DETACH] reason={reason}")
        if crash:
            print(f"    [CRASH] report={crash.report[:500] if crash.report else 'none'}")
            print(f"    [CRASH] summary={crash.summary if hasattr(crash, 'summary') else 'N/A'}")
    
    session.on("detached", on_detach)
    sc = session.create_script(SCRIPT)
    sc.on("message", on_msg)
    sc.load()
    time.sleep(3)
    
    # Clear logcat
    subprocess.run(["adb", "shell", "logcat -c"], capture_output=True, timeout=5)
    
    # Tap game
    print(f"\n  Tapping 8 Ball Pool...")
    adb("input tap 145 780")
    time.sleep(8)
    
    # Check result
    focus2 = adb("dumpsys window | grep mCurrentFocus")
    alive = "com.snake" in focus2
    print(f"  Focus after tap: {focus2}")
    print(f"  SURVIVED: {alive}")
    
    # Collect crash data
    crash_log = ""
    if not alive:
        # Get logcat crash info
        crash_log = subprocess.run(
            ["adb", "shell", "logcat -d | grep -A 30 'FATAL\\|signal\\|Abort\\|backtrace\\|tombstone\\|pid " + str(pid) + "'"],
            capture_output=True, text=True, timeout=10
        ).stdout.strip()
        
        # Check tombstone
        tombstone = adb("ls -t /data/tombstones/ 2>/dev/null | head -1")
        tombstone_content = ""
        if tombstone:
            tombstone_content = adb(f"head -100 /data/tombstones/{tombstone}")
    
    try:
        session.detach()
    except:
        pass
    
    result = {
        "trial": trial_num,
        "pid": pid,
        "survived": alive,
        "detach_reason": detach_reason[0],
        "events": events,
        "crash_log": crash_log[:2000] if crash_log else "",
        "tombstone": tombstone_content[:2000] if not alive and tombstone else ""
    }
    
    return result

# Run 2 trials
results = []
for i in range(1, 3):
    r = run_trial(i)
    results.append(r)
    time.sleep(3)

# Summary
print(f"\n{'='*60}")
print("FORENSIC SUMMARY")
print(f"{'='*60}")
for r in results:
    print(f"\nTrial {r['trial']}:")
    print(f"  PID: {r.get('pid')}")
    print(f"  Survived: {r['survived']}")
    print(f"  Detach reason: {r.get('detach_reason')}")
    print(f"  Events: {len(r.get('events', []))}")
    if r.get("crash_log"):
        print(f"  Crash log (first 500 chars):")
        print(f"    {r['crash_log'][:500]}")
    if r.get("tombstone"):
        print(f"  Tombstone (first 500 chars):")
        print(f"    {r['tombstone'][:500]}")

# Save full results
with open("/tmp/crash_forensics.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print(f"\nFull results: /tmp/crash_forensics.json")
