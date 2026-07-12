"""
Test 7 small functions in ssl region of libflutter.so.
For each: patch to return 0 (success), check if app survives.
"""
import frida, time, subprocess

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

candidates = [0x4609a8, 0x460a9c, 0x460e5c, 0x460ec0, 0x461264, 0x461a6c, 0x468f44]

results = []

for idx, func_va in enumerate(candidates):
    print(f"\n[{idx+1}/7] Testing VA 0x{func_va:x}...")
    
    # Restart app
    adb("am force-stop com.snake")
    time.sleep(2)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    # Ensure listen mode config
    adb("am start -n com.snake/com.Entry")
    time.sleep(16)
    
    # Check alive
    ps = adb("ps -A | grep com.snake$")
    if not ps:
        print(f"  App failed to start")
        results.append((func_va, "no_start"))
        continue
    
    # Connect and patch
    subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
    try:
        mgr = frida.get_device_manager()
        device = mgr.add_remote_device("127.0.0.1:27052")
        session = device.attach("Gadget")
    except Exception as e:
        print(f"  Gadget failed: {e}")
        results.append((func_va, "gadget_fail"))
        continue
    
    # Patch
    sc = session.create_script(f"""
    var f = Process.findModuleByName("libflutter.so");
    var t = f.base.add({func_va});
    var orig = Array.prototype.map.call(new Uint8Array(t.readByteArray(8)), function(b){{return("0"+b.toString(16)).slice(-2)}}).join("");
    Memory.patchCode(t, 8, function(code) {{
        code.writeU32(0x52800000);
        code.add(4).writeU32(0xD65F03C0);
    }});
    send("patched 0x{func_va:x} orig=" + orig);
    """)
    msgs = []
    sc.on("message", lambda m,d: msgs.append(m.get("payload","")))
    sc.load()
    time.sleep(1)
    
    try:
        session.detach()
    except:
        pass
    
    # Wait and check survival
    time.sleep(8)
    ps_after = adb("ps -A | grep com.snake$")
    alive = bool(ps_after)
    
    status = "ALIVE" if alive else "DEAD"
    print(f"  Result: {status}")
    if msgs:
        print(f"  {msgs[0]}")
    results.append((func_va, status))

print(f"\n{'='*60}")
print("SUMMARY:")
for func_va, status in results:
    marker = " <<<" if status == "ALIVE" else ""
    print(f"  0x{func_va:x}: {status}{marker}")
print("="*60)

# The ones that survive are candidates for the CORRECT cert verify function
survived = [va for va, s in results if s == "ALIVE"]
if survived:
    print(f"\nSURVIVED: {[hex(v) for v in survived]}")
    print("These should be tested with MITM to confirm SSL bypass works.")
else:
    print("\nNone survived — need different approach.")
