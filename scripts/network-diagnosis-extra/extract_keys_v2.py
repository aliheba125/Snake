"""
Snake Engine — Key Extraction v2
Uses indirect observation (NO Interceptor on libengine addresses):
1. Hook the CALLER of KDF/AES in ART/JNI layer (not inside libengine code)
2. Scan for crypto artifacts in heap memory (non-invasive read)
3. Hook Dart FFI / pointycastle-related calls in libapp via libc wrappers
"""
import frida
import time
import subprocess
import sys

# Known offsets
KDF_OFFSET    = 0x161788
AES_OFFSET    = 0x160208
SBOX_OFFSET   = 0x9281a8
SHA256_K_OFFSET = 0x2b450

device = frida.get_device_manager().add_remote_device("127.0.0.1:27042")

def get_pids():
    r1 = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake"],
                       capture_output=True, text=True)
    r2 = subprocess.run(["adb", "-s", "localhost:5555", "shell", "pidof", "com.snake:engine"],
                       capture_output=True, text=True)
    return (int(r1.stdout.strip()) if r1.stdout.strip() else None,
            int(r2.stdout.strip()) if r2.stdout.strip() else None)

# Need fresh app — the detach may have killed it
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "force-stop", "com.snake"], capture_output=True)
time.sleep(3)
subprocess.run(["adb", "-s", "localhost:5555", "shell", "am", "start", "-n", "com.snake/com.Entry"], capture_output=True)
time.sleep(12)

main_pid, engine_pid = get_pids()
print(f"Main PID: {main_pid}, Engine PID: {engine_pid}")

if not main_pid:
    print("App not running!")
    sys.exit(1)

# Strategy: NO hooks inside libengine code pages (causes integrity kill).
# Instead:
# A) Read crypto constants from libengine memory (passive, proves we can see the data)
# B) Hook libc mmap/mprotect to detect RWX pages (where engine generates crypto)
# C) Scan Dart heap for pointycastle key objects (AES/RSA keys have recognizable structure)
# D) Hook Dart's FFI layer or dart:io to capture network payload pre-encryption

JS_PASSIVE_EXTRACT = '''
var t0 = Date.now();
function T() { return "[+" + (Date.now()-t0) + "ms]"; }

function hexdump(ptr, len) {
    var n = Math.min(len, 64);
    var hex = "";
    try { for(var i=0;i<n;i++) hex += ("0"+ptr.add(i).readU8().toString(16)).slice(-2)+" "; }
    catch(e) { hex += "<err:" + e + ">"; }
    return hex.trim();
}

var engine = Process.findModuleByName("libengine.so");
var libapp = Process.findModuleByName("libapp.so");
var libc = Process.findModuleByName("libc.so");

send("[INFO] engine=" + (engine?engine.base:"N/A") + " libapp=" + (libapp?libapp.base:"N/A"));

// === A) PASSIVE: Read AES S-box and SHA-256 K table (proves memory access works) ===
if (engine) {
    var sbox = engine.base.add(0x9281a8);
    send("[CRYPTO] AES S-box @ " + sbox + " first16: " + hexdump(sbox, 16));
    // Verify S-box: standard AES S-box starts with 63 7c 77 7b f2 6b 6f c5
    var first4 = sbox.readByteArray(4);
    var b = new Uint8Array(first4);
    send("[CRYPTO] S-box[0..3] = " + b[0].toString(16) + " " + b[1].toString(16) + " " + b[2].toString(16) + " " + b[3].toString(16) + 
         (b[0]===0x63?" (STANDARD AES S-box CONFIRMED)":""));

    var kTable = engine.base.add(0x2b450);
    send("[CRYPTO] SHA-256 K table @ " + kTable + " first16: " + hexdump(kTable, 16));
    // First constant of SHA-256 K: 0x428a2f98
    var k0 = kTable.readU32();
    send("[CRYPTO] K[0] = 0x" + k0.toString(16) + (k0===0x428a2f98?" (SHA-256 K CONFIRMED)":""));
}

// === B) Scan for PEM/DER key material in Dart heap (libapp writable ranges) ===
if (libapp) {
    send("\\n[DART-SCAN] Scanning Dart/libapp writable regions for key material...");
    var ranges = Process.enumerateRanges("rw-");
    var dartRanges = ranges.filter(function(r) {
        var a = r.base; var e = a.add(r.size);
        // Focus on ranges near libapp or in high heap
        return true; // scan all writable
    });
    
    var pemHits = 0, derHits = 0, aesKeyHits = 0;
    
    // Search for "-----BEGIN" (PEM format key)
    var pemBytes = [0x2d, 0x2d, 0x2d, 0x2d, 0x2d, 0x42, 0x45, 0x47, 0x49, 0x4e]; // -----BEGIN
    
    dartRanges.forEach(function(r) {
        if (r.size > 50 * 1024 * 1024) return; // skip huge
        try {
            var hits = Memory.scanSync(r.base, r.size, "2d 2d 2d 2d 2d 42 45 47 49 4e");
            hits.forEach(function(h) {
                pemHits++;
                if (pemHits <= 5) {
                    var content = "";
                    try { content = h.address.readCString().substring(0, 120); } catch(e) {}
                    send("[KEY-FOUND] PEM @ " + h.address + ": " + content);
                }
            });
        } catch(e) {}
    });
    send("[DART-SCAN] Total PEM markers found: " + pemHits);
    
    // Search for "RSA" string near key objects
    dartRanges.forEach(function(r) {
        if (r.size > 50 * 1024 * 1024) return;
        try {
            var hits = Memory.scanSync(r.base, r.size, "52 53 41"); // "RSA"
            if (hits.length > 0 && derHits < 3) {
                hits.slice(0, 2).forEach(function(h) {
                    derHits++;
                    send("[KEY-REF] 'RSA' string @ " + h.address + " ctx: " + hexdump(h.address.sub(4), 20));
                });
            }
        } catch(e) {}
    });
    
    // Search for PKCS8 DER header (30 82 xx xx 02 01 00) — private key
    dartRanges.forEach(function(r) {
        if (r.size > 50 * 1024 * 1024) return;
        try {
            var hits = Memory.scanSync(r.base, r.size, "30 82 ?? ?? 02 01 00");
            hits.forEach(function(h) {
                aesKeyHits++;
                if (aesKeyHits <= 5) {
                    send("[KEY-FOUND] PKCS8/DER header @ " + h.address + ": " + hexdump(h.address, 32));
                }
            });
        } catch(e) {}
    });
    send("[DART-SCAN] Total PKCS8-like DER headers: " + aesKeyHits);
}

// === C) Read Dart object pool strings for hardcoded keys/secrets ===
// The Dart object pool (pp.txt) was extracted statically; check if key-like constants survive in memory
if (libapp) {
    send("\\n[DART-POOL] Scanning for AES/RSA key constants from Dart pool...");
    // Search for "encryptedData" (the JSON field name — proves Dart crypto path)
    try {
        var encHits = Memory.scanSync(libapp.base, libapp.size, 
            "65 6e 63 72 79 70 74 65 64 44 61 74 61"); // "encryptedData"
        send("[DART-POOL] 'encryptedData' in libapp.so: " + encHits.length + " hits");
        encHits.slice(0, 3).forEach(function(h) {
            send("  @ " + h.address + " ctx: " + hexdump(h.address.sub(8), 40));
        });
    } catch(e) { send("[DART-POOL] scan err: " + e); }
    
    // deviceId
    try {
        var devHits = Memory.scanSync(libapp.base, libapp.size,
            "64 65 76 69 63 65 49 64"); // "deviceId"
        send("[DART-POOL] 'deviceId' in libapp.so: " + devHits.length + " hits");
    } catch(e) {}
    
    // timestamp  
    try {
        var tsHits = Memory.scanSync(libapp.base, libapp.size,
            "74 69 6d 65 73 74 61 6d 70"); // "timestamp"
        send("[DART-POOL] 'timestamp' in libapp.so: " + tsHits.length + " hits");
    } catch(e) {}
}

// === D) Monitor RWX pages created by libengine (code gen) — passive read ===
if (engine) {
    send("\\n[RWX] Checking for runtime-generated code pages...");
    var allRanges = Process.enumerateRanges("rwx");
    var rwxCount = 0;
    allRanges.forEach(function(r) {
        rwxCount++;
        if (rwxCount <= 5) {
            send("[RWX] " + r.base + " size=" + r.size + " (" + (r.file?r.file.path:"anon") + ")");
            // Dump first 32 bytes of RWX (runtime-generated code/data)
            send("  first32: " + hexdump(r.base, 32));
        }
    });
    send("[RWX] Total RWX pages: " + rwxCount);
}

send("\\n[DONE] Passive extraction complete.");
'''

session = device.attach(main_pid)
detached = [False]
def on_d(r, c):
    detached[0] = True
    print(f"  [DETACHED] reason={r}")
session.on("detached", on_d)

msgs = []
def on_msg(m, d):
    if m["type"] == "send":
        msgs.append(str(m["payload"]))
    elif m["type"] == "error":
        msgs.append("[ERR] " + str(m.get("description", "")))

script = session.create_script(JS_PASSIVE_EXTRACT)
script.on("message", on_msg)
t0 = time.time()
script.load()
print("Passive extraction running (30s)...")

for i in range(30):
    time.sleep(1)
    if detached[0]:
        print(f"Detached at +{time.time()-t0:.1f}s")
        break

try:
    script.unload()
    session.detach()
except:
    pass

print(f"\n{'='*70}")
print(f"  PASSIVE KEY EXTRACTION RESULTS — {len(msgs)} items")
print(f"{'='*70}")
for m in msgs:
    print(f"  {m}")
print(f"{'='*70}")
