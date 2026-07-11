"""
Runtime SSL bypass: use Frida to find and patch the verify function.
The approach: use the known technique from reFlutter/objection:
Find ssl_crypto_x509_session_verify_cert_chain by pattern and NOP it.
"""
import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# The known Flutter SSL bypass from reFlutter project:
# Search for pattern: "2d 00 00 94 60 02 00 35"
# Which is: BL x509_verify; CBNZ W0, <fail>
# Or search for the function that contains both a BL and handles
# the return value as ssl_verify_result_t

SCRIPT = """
var flutter = Process.findModuleByName("libflutter.so");
var base = flutter.base;
send("flutter @ " + base + " size " + flutter.size);

// Known patterns for Flutter SSL bypass (various versions):
// Pattern 1 (reFlutter): "ff 03 05 d1 fc 6f 01 a9" (function prologue of session_verify_cert_chain)
// Pattern 2: search for x509_vfy.c string and trace callers

// Let's try multiple known patterns from community:
var patterns = [
    // reFlutter pattern for arm64 (common in Flutter 3.x)
    "ff0305d1fc6f01a9",
    // Alternative: FF C3 04 D1 (another prologue variant)
    "ffc304d1",
    // Another known pattern: STP with specific stack size for this function
    "ff8302d1fd7b03a9",
];

var found = null;
for (var i = 0; i < patterns.length && !found; i++) {
    var ranges = Process.enumerateRanges("r-x");
    for (var j = 0; j < ranges.length && !found; j++) {
        if (ranges[j].base.compare(base) >= 0 && ranges[j].base.compare(base.add(flutter.size)) < 0) {
            try {
                var matches = Memory.scanSync(ranges[j].base, ranges[j].size, patterns[i]);
                if (matches.length > 0) {
                    send("Pattern " + i + " (" + patterns[i] + ") found " + matches.length + " matches");
                    for (var k = 0; k < Math.min(matches.length, 3); k++) {
                        send("  at " + matches[k].address + " (flutter+0x" + matches[k].address.sub(base).toString(16) + ")");
                    }
                    if (matches.length <= 3) {
                        found = matches[0].address;
                    }
                }
            } catch(e) {}
        }
    }
}

if (!found) {
    // Broader search: find the function by looking for a specific return pattern
    // ssl_crypto_x509_session_verify_cert_chain returns ssl_verify_ok (0) or ssl_verify_invalid (1)
    // In many Flutter builds, this function is identifiable by:
    // SUB SP, SP, #0x... (specific frame size)
    // Its size is typically 100-300 bytes
    // Contains exactly one BL (to X509_verify_cert)
    
    // Try the "anti-pattern" approach: find where handshake_result is set to failure
    // and patch that specific branch
    
    send("Known patterns not found. Trying brute-force approach...");
    
    // Search for the specific sequence in this Flutter version:
    // STP x29, x30, [sp, #-0x30]! followed by specific register saves
    var pattern_broad = "fd7b03a9";  // STP X29, X30, [SP, #0x30]
    var text_ranges = Process.enumerateRanges("r-x").filter(function(r) {
        return r.base.compare(base) >= 0 && r.base.compare(base.add(flutter.size)) < 0;
    });
    
    for (var j = 0; j < text_ranges.length && !found; j++) {
        try {
            var ms = Memory.scanSync(text_ranges[j].base, text_ranges[j].size, pattern_broad);
            send("STP x29,x30,[sp,#0x30] matches: " + ms.length);
        } catch(e) {}
    }
}

if (found) {
    send("FOUND verify function at: " + found);
    // Read original bytes
    var original = found.readByteArray(8);
    send("Original: " + Array.prototype.map.call(new Uint8Array(original), function(b){return("0"+b.toString(16)).slice(-2)}).join(""));
    
    // Patch: MOV W0, #0 (ssl_verify_ok); RET
    // 0x52800000 = mov w0, #0
    // 0xD65F03C0 = ret
    Memory.patchCode(found, 8, function(code) {
        code.writeU32(0x52800000);  // MOV W0, #0
        code.add(4).writeU32(0xD65F03C0);  // RET
    });
    send("PATCHED! ssl verification bypassed.");
    
    // Verify patch
    var patched = found.readByteArray(8);
    send("After patch: " + Array.prototype.map.call(new Uint8Array(patched), function(b){return("0"+b.toString(16)).slice(-2)}).join(""));
} else {
    send("Could not find verify function with known patterns");
}
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        print("  " + str(m["payload"]))
    elif m["type"] == "error":
        print("  ERR: " + str(m.get("description",""))[:200])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(8)
session.detach()
print("\nDone. Found:", any("PATCHED" in str(e) for e in events))
