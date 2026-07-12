"""
Snake Engine — Key Extraction Script
Hooks libengine.so crypto functions + scans for Dart crypto key artifacts in memory.
Runs via Frida ATTACH (stable after boot, proven safe).

Targets:
  1. libengine.so FUN_00161788 (KDF): captures seed1, seed2
  2. libengine.so FUN_00160208 (AES): captures key, input, output buffers
  3. Memory scan for Dart pointycastle RSA/AES key material
"""
import frida
import time
import subprocess
import sys

# Offsets from Ghidra analysis (file offsets in libengine.so)
KDF_OFFSET    = 0x161788   # FUN_00161788(key_out, seed1_uint, seed2_long, 0)
AES_OFFSET    = 0x160208   # FUN_00160208(key_vec, in_vec, out_vec)
CALLER_OFFSET = 0x17e148   # FUN_0017e148 (calls KDF then AES — game-load path)

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

# Get PID of main process and engine process
def get_pids():
    r1 = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
    r2 = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake:engine"],
                       capture_output=True, text=True)
    return (int(r1.stdout.strip()) if r1.stdout.strip() else None,
            int(r2.stdout.strip()) if r2.stdout.strip() else None)

main_pid, engine_pid = get_pids()
print(f"Main PID: {main_pid}, Engine PID: {engine_pid}")

# The KDF/AES run in the ENGINE process (com.snake:engine) which hosts libengine's virtualization
# But also hook the main process since it loads libengine too

JS_ENGINE_HOOKS = '''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

var engine = Process.findModuleByName("libengine.so");
if (!engine) { send("[!] libengine.so NOT FOUND in this process"); }
else {
    send("[INFO] libengine.so base=" + engine.base + " size=" + engine.size);

    var KDF = engine.base.add(%d);   // FUN_00161788
    var AES = engine.base.add(%d);   // FUN_00160208
    var CALLER = engine.base.add(%d); // FUN_0017e148

    function hexdump(ptr, len) {
        var n = Math.min(len, 64);
        var hex = "";
        try { for(var i=0;i<n;i++) hex += ("0"+ptr.add(i).readU8().toString(16)).slice(-2); }
        catch(e) { hex += "<err>"; }
        return hex;
    }

    // KDF hook: FUN_00161788(key_out_ptr, seed1_uint, seed2_long, 0)
    try {
        Interceptor.attach(KDF, {
            onEnter: function(args) {
                this.keyOut = args[0];
                this.seed1 = args[1].toInt32() >>> 0;  // uint32
                this.seed2 = args[2];                   // int64/ptr
                send(T() + " >>> KDF ENTER seed1=0x" + this.seed1.toString(16) + " seed2=" + this.seed2);
            },
            onLeave: function(retval) {
                // Read the 32-byte key that was generated
                var keyHex = hexdump(this.keyOut, 32);
                send(T() + " <<< KDF LEAVE key_out(32B)=" + keyHex);
            }
        });
        send("[HOOK] KDF @ " + KDF);
    } catch(e) { send("[!] KDF hook failed: " + e); }

    // AES hook: FUN_00160208(key_vec, in_vec, out_vec)
    try {
        Interceptor.attach(AES, {
            onEnter: function(args) {
                this.keyVec = args[0];
                this.inVec = args[1];
                this.outVec = args[2];
                // key_vec likely points to AES key (32 bytes at some offset)
                send(T() + " >>> AES ENTER key_vec=" + args[0] + " in_vec=" + args[1] + " out_vec=" + args[2]);
                send("    key_first_32B: " + hexdump(args[0], 32));
                send("    in_first_32B:  " + hexdump(args[1], 32));
            },
            onLeave: function(retval) {
                send(T() + " <<< AES LEAVE out_first_32B: " + hexdump(this.outVec, 32));
            }
        });
        send("[HOOK] AES @ " + AES);
    } catch(e) { send("[!] AES hook failed: " + e); }

    // Caller hook: FUN_0017e148 (game-load trigger)
    try {
        Interceptor.attach(CALLER, {
            onEnter: function(args) {
                send(T() + " >>> GAME_LOAD_CALLER ENTER (crypto will follow if subscribed)");
            },
            onLeave: function(retval) {
                send(T() + " <<< GAME_LOAD_CALLER LEAVE => " + retval);
            }
        });
        send("[HOOK] CALLER @ " + CALLER);
    } catch(e) { send("[!] CALLER hook failed: " + e); }
}

// === Dart/pointycastle memory scan ===
// Look for RSA private key markers or AES key schedules in heap
send("\\n[SCAN] Searching memory for crypto key artifacts...");

var ranges = Process.enumerateRanges("rw-");
var found = 0;
var markers = [
    // PKCS8 / RSA private key DER header
    {name: "RSA_PRIV_DER", bytes: [0x30, 0x82], ctx: 8},
    // "-----BEGIN" (PEM)
    {name: "PEM_BEGIN", bytes: [0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x42, 0x45, 0x47, 0x49, 0x4e], ctx: 40},
];

var libapp = Process.findModuleByName("libapp.so");
if (libapp) {
    send("[SCAN] libapp.so base=" + libapp.base + " (Dart heap contains pointycastle state)");
}

// Scan for PEM key material in writable memory
try {
    var pemPattern = "2d 2d 2d 2d 2d 42 45 47 49 4e";  // -----BEGIN
    var results = Memory.scanSync(ptr(0), ptr("0x7fffffffffff"), pemPattern);
    // This may not work on all ranges; try per-range
} catch(e) {}

// Targeted scan: look in .data/.bss of libapp.so
if (libapp) {
    try {
        var pemHits = Memory.scanSync(libapp.base, libapp.size, "2d 2d 2d 2d 2d 42 45 47 49 4e");
        send("[SCAN] PEM markers in libapp: " + pemHits.length);
        pemHits.slice(0, 5).forEach(function(h) {
            send("  @ " + h.address + ": " + hexdump(h.address, 40));
        });
    } catch(e) { send("[SCAN] libapp scan err: " + e); }
}

// Scan writable segments for AES-256 expanded key schedule pattern
// (first round key = original 32 bytes, identifiable if we know any plaintext)
// For now, report engine crypto S-box location as a reference
var SBOX_OFFSET = 0x9281a8;  // DAT_009281a8
if (engine) {
    var sbox = engine.base.add(SBOX_OFFSET);
    send("[REF] AES S-box @ " + sbox + " first16: " + hexdump(sbox, 16));
}

send("\\n[READY] Hooks active + scan complete. Monitoring 30s...");
''' % (KDF_OFFSET, AES_OFFSET, CALLER_OFFSET)

# Hook BOTH processes
for pid, name in [(engine_pid, "com.snake:engine"), (main_pid, "com.snake")]:
    if not pid:
        print(f"Skipping {name} (no PID)")
        continue
    print(f"\n{'='*60}")
    print(f"  Attaching to {name} (PID {pid})")
    print(f"{'='*60}")

    session = device.attach(pid)
    detached = [False]
    def on_d(r, c): detached[0] = True
    session.on("detached", on_d)

    msgs = []
    def on_msg(m, d):
        if m["type"] == "send":
            msgs.append(str(m["payload"]))
        elif m["type"] == "error":
            msgs.append("[ERR] " + str(m.get("description", "")))

    script = session.create_script(JS_ENGINE_HOOKS)
    script.on("message", on_msg)
    t0 = time.time()
    script.load()
    print(f"Hooks loaded. Monitoring 30s...")

    for i in range(30):
        time.sleep(1)
        if detached[0]:
            print(f"DETACHED at +{time.time()-t0:.1f}s")
            break

    try:
        script.unload()
        session.detach()
    except:
        pass

    print(f"\n  Results ({len(msgs)} messages):")
    for m in msgs:
        print(f"    {m}")
    print()

print("=" * 60)
print("  KEY EXTRACTION COMPLETE")
print("=" * 60)
