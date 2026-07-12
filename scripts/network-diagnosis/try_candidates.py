"""
Systematically try patching candidate functions to find the real
ssl_verify_peer_cert / ssl_crypto_x509_session_verify_cert_chain.

Criteria for the correct function:
1. After patch: app stays alive (doesn't crash)
2. After patch: TLS connections to new hosts succeed (cert not checked)

We test by patching each candidate, then checking if the app survives 10s.
"""
import frida, time, subprocess, struct

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# Load libflutter.so offline to find candidates
data = open("/home/ubuntu/Snake/raw/lib/arm64-v8a/libflutter.so", "rb").read()
TEXT_FILE_OFF = 0x42d680
TEXT_VA = 0x43d680
text_data = data[TEXT_FILE_OFF:TEXT_FILE_OFF+0x5a1688]

# From previous analysis: ssl_x509.cc code is around VA 0x451e40-0x480000
# Find ALL small functions (< 400 bytes) that have BL + CBZ/CBNZ W0
# in the broader ssl region (0x440000 - 0x4a0000)

candidates = []
for i in range(0, len(text_data)-8, 4):
    w1 = struct.unpack_from('<I', text_data, i)[0]
    w2 = struct.unpack_from('<I', text_data, i+4)[0]
    va = TEXT_VA + i
    
    # BL followed by CBZ W0 or CBNZ W0
    is_bl = (w1 & 0xFC000000) == 0x94000000
    is_cbz_w0 = (w2 & 0xFF00001F) == 0x34000000
    is_cbnz_w0 = (w2 & 0xFF00001F) == 0x35000000
    
    if is_bl and (is_cbz_w0 or is_cbnz_w0):
        if va > 0x450000 and va < 0x4a0000:
            # Find function start
            func_start = None
            for back in range(i, max(i-512, 0), -4):
                w = struct.unpack_from('<I', text_data, back)[0]
                if (w & 0xFFE07FFF) == 0xA9007BFD:
                    func_start = TEXT_VA + back
                    break
            
            if func_start:
                offset_in_func = va - func_start
                # Only consider if BL+CBZ is within first 80 bytes of function
                # AND function is not the one we already tried (0x4535f0)
                if offset_in_func < 80 and func_start != 0x4535f0:
                    # Check function size (find next STP or limit)
                    func_size = 0
                    for fwd in range(i+8, min(i+800, len(text_data)-4), 4):
                        w = struct.unpack_from('<I', text_data, fwd)[0]
                        if (w & 0xFFE07FFF) == 0xA9007BFD:  # Next function prologue
                            func_size = TEXT_VA + fwd - func_start
                            break
                    
                    if 40 < func_size < 400:
                        # Avoid duplicates
                        if func_start not in [c[0] for c in candidates]:
                            branch_type = "CBNZ" if is_cbnz_w0 else "CBZ"
                            candidates.append((func_start, func_size, offset_in_func, branch_type))

print(f"Found {len(candidates)} candidate functions")
for i, (fva, sz, off, bt) in enumerate(candidates[:20]):
    print(f"  [{i}] VA 0x{fva:x} size={sz} BL+{bt} at offset {off}")

# Now test each candidate at runtime
# For each: patch it, wait 8s, check if app is alive
print(f"\n=== Testing candidates at runtime ===")

survived = []
for idx, (func_va, func_size, offset_in_func, branch_type) in enumerate(candidates[:15]):
    print(f"\n[{idx}] Testing VA 0x{func_va:x} (size={func_size}, {branch_type} at +{offset_in_func})...")
    
    # Restart app fresh
    adb("am force-stop com.snake")
    time.sleep(1)
    adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
    # Use listen mode config
    adb("am start -n com.snake/com.Entry")
    time.sleep(15)
    
    # Check alive before patch
    ps = adb("ps -A | grep com.snake$")
    if not ps:
        print(f"  App failed to start!")
        continue
    
    # Connect and patch
    subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
    try:
        mgr = frida.get_device_manager()
        device = mgr.add_remote_device("127.0.0.1:27052")
        session = device.attach("Gadget")
    except Exception as e:
        print(f"  Gadget connection failed: {e}")
        continue
    
    # Calculate offset from flutter base
    offset_hex = hex(func_va)
    patch_script = f"""
    var flutter = Process.findModuleByName("libflutter.so");
    var target = flutter.base.add({func_va});
    Memory.patchCode(target, 8, function(code) {{
        code.writeU32(0x52800000);  // MOV W0, #0
        code.add(4).writeU32(0xD65F03C0);  // RET
    }});
    send("patched " + target);
    """
    
    result = []
    sc = session.create_script(patch_script)
    sc.on("message", lambda m,d: result.append(m.get("payload","")))
    sc.load()
    time.sleep(1)
    
    try:
        session.detach()
    except:
        pass
    
    # Wait and check if app survived
    time.sleep(8)
    ps_after = adb("ps -A | grep com.snake$")
    alive = bool(ps_after)
    
    if alive:
        print(f"  *** SURVIVED! *** VA 0x{func_va:x}")
        survived.append((func_va, func_size, offset_in_func, branch_type))
    else:
        print(f"  Crashed.")

print(f"\n{'='*60}")
print(f"RESULTS: {len(survived)} functions survived patching:")
for fva, sz, off, bt in survived:
    print(f"  VA 0x{fva:x} size={sz} BL+{bt} at +{off}")
print("="*60)
