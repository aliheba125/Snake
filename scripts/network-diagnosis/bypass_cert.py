"""
Flutter SSL bypass via runtime memory patching.
Uses the known technique: find ssl_crypto_x509_session_verify_cert_chain
by searching for its unique pattern in libflutter.so .text and patch
its first instruction to: MOV W0, #1; RET
"""
import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# The approach: search libflutter executable sections for
# the known pattern of ssl_verify_peer_cert / ssl_crypto_x509_session_verify_cert_chain
# Then patch it to always return success.
#
# Known Flutter SSL bypass (from https://blog.nviso.eu/2020/06/12/):
# Find the function by looking for a specific byte sequence near the
# CERTIFICATE_VERIFY_FAILED string reference.
#
# Alternative simpler approach: just use Memory.patchCode to replace
# the first instruction of every function that's called during TLS handshake
# with MOV W0, #1; RET  — but we need to know which function.
#
# BEST approach for this specific binary: we know from offline analysis that
# CERTIFICATE_VERIFY_FAILED is at file offset 0x26b610.
# At runtime this maps to flutter.base + (some segment offset).
# The function that references it can be found by scanning for ADRP/ADD
# instructions that compute this address.

SCRIPT = """
var flutter = Process.findModuleByName("libflutter.so");
var base = flutter.base;
send("flutter @ " + base + " size=" + flutter.size);

// Find CERTIFICATE_VERIFY_FAILED in readable memory
var cert_str = null;
var ranges = Process.enumerateRanges("r--");
for (var i = 0; i < ranges.length; i++) {
    if (ranges[i].base.compare(base) >= 0 && ranges[i].base.compare(base.add(flutter.size)) < 0) {
        try {
            var m = Memory.scanSync(ranges[i].base, ranges[i].size, "434552544946494341544500565f5645524946595f4641494c454400");
            if (m.length > 0) { cert_str = m[0].address; break; }
        } catch(e) {}
    }
}

if (!cert_str) {
    // Try shorter pattern
    for (var i = 0; i < ranges.length; i++) {
        if (ranges[i].base.compare(base) >= 0 && ranges[i].base.compare(base.add(flutter.size)) < 0) {
            try {
                var m = Memory.scanSync(ranges[i].base, ranges[i].size, "434552544946494341544500565f5645524946595f4641494c4544");
                if (m.length > 0) { cert_str = m[0].address; break; }
            } catch(e) {}
        }
    }
}

if (cert_str) {
    send("CERT_VERIFY_FAILED string at " + cert_str + " (flutter+0x" + cert_str.sub(base).toString(16) + ")");
} else {
    send("CERT_VERIFY_FAILED NOT found in readable memory - trying offset from file");
    // Use known file offset: 0x26b610
    // In a PIE binary, the loadable segments have a fixed offset from base
    // Let's try reading at base + 0x26b610
    try {
        var test = base.add(0x26b610).readUtf8String(30);
        send("At base+0x26b610: " + test);
        cert_str = base.add(0x26b610);
    } catch(e) {
        send("Cannot read base+0x26b610: " + e.message);
    }
}

// Now the key bypass: instead of finding the exact function,
// use the Flutter-specific approach:
// In Flutter's Dart runtime, TLS certificate errors are handled by
// _onBadCertificateWrapper which can be overridden.
// But at the BoringSSL level, the simplest bypass is:
// Find any executable code that reads from the CERT_VERIFY_FAILED string
// page and patch the conditional branch after X509_verify_cert call.

// Actually, let's try the SIMPLEST possible approach:
// Patch the Dart _SecureFilter handshake to ignore cert errors.
// This is done by finding the 'handshake' native function in the Dart snapshot.

// For now, let's just confirm we can write to flutter .text section
var textStart = null;
for (var i = 0; i < ranges.length; i++) {
    if (ranges[i].base.compare(base) >= 0 && ranges[i].base.compare(base.add(flutter.size)) < 0) {
        if (ranges[i].protection.indexOf("x") !== -1) {
            textStart = ranges[i].base;
            send("Flutter .text at " + textStart + " prot=" + ranges[i].protection + " size=" + ranges[i].size);
            break;
        }
    }
}

// Try to make the page writable and patch
// Actually with Memory.patchCode we can write without changing permissions
send("Will attempt Memory.patchCode on a test address...");
if (textStart) {
    try {
        // Just verify we CAN patch (don't actually change anything yet)
        var testAddr = textStart.add(0x1000);
        var original = testAddr.readByteArray(8);
        send("Original bytes at test: " + Array.prototype.map.call(new Uint8Array(original), function(b){return("0"+b.toString(16)).slice(-2)}).join(""));
        send("Memory.patchCode available: " + (typeof Memory.patchCode));
    } catch(e) {
        send("Read test error: " + e.message);
    }
}

send("done");
"""

events = []
def on_msg(m, d):
    if m["type"] == "send":
        events.append(m["payload"])
        print("  " + str(m["payload"]))
    elif m["type"] == "error":
        print("  ERR: " + str(m.get("description",""))[:150])

sc = session.create_script(SCRIPT)
sc.on("message", on_msg)
sc.load()
time.sleep(8)
session.detach()
