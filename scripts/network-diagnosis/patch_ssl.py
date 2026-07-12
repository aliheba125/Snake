"""
Find and patch ssl_verify_peer_cert in libflutter.so (runtime)
to bypass certificate verification for MITM.
"""
import frida, time, subprocess

subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

SCRIPT = """
var flutter = Process.findModuleByName("libflutter.so");
send("flutter @ " + flutter.base + " size=" + flutter.size);

// Strategy: Find CERTIFICATE_VERIFY_FAILED string, then trace back
// to find the function that sets this error, and patch it.

// Step 1: Find the string in memory
var pattern = "434552544946494341544500565f5645524946595f4641494c4544"; // "CERTIFICATE.VERIFY_FAILED" 
// Actually search for exact: "CERTIFICATE_VERIFY_FAILED\\x00"
var cert_pattern = "434552544946494341544500565f5645524946595f4641494c454400";

// Simpler: search for "ssl_x509.cc" 
var ssl_x509_pattern = "73736c5f783530392e636300"; // "ssl_x509.cc\\x00"
var matches = Memory.scanSync(flutter.base, flutter.size, ssl_x509_pattern);
send("ssl_x509.cc matches: " + matches.length);
if (matches.length > 0) {
    send("  at flutter+0x" + matches[0].address.sub(flutter.base).toString(16));
}

// Step 2: Find 'x509_vfy.c' (X509_verify_cert lives here)
var x509_vfy_pattern = "783530395f7666792e6300"; // "x509_vfy.c\\x00"
var vfy_matches = Memory.scanSync(flutter.base, flutter.size, x509_vfy_pattern);
send("x509_vfy.c matches: " + vfy_matches.length);
if (vfy_matches.length > 0) {
    send("  at flutter+0x" + vfy_matches[0].address.sub(flutter.base).toString(16));
}

// Step 3: The known Flutter bypass technique:
// In Flutter's BoringSSL, there is a function that does:
//   ret = X509_verify_cert(...)
//   if (ret <= 0) { *out_alert = SSL_AD_CERTIFICATE_REQUIRED; return ssl_verify_invalid; }
//   return ssl_verify_ok;
//
// We want to patch this to ALWAYS return ssl_verify_ok (= 0 in BoringSSL enum, or 1 as int success)
//
// The ARM64 pattern near this check:
//   CBZ W0, <failure_branch>  (if X509_verify_cert returns 0, branch to fail)
//   or
//   CMP W0, #0; B.LE <failure>
//
// Patch: replace CBZ/CBNZ with NOP (0xD503201F) or make it unconditional

// Step 4: Use a known approach - search for the function by its behavior
// Hook X509_verify_cert (internal to libflutter) by finding it via pattern
// X509_verify_cert starts with a specific prologue and references x509_vfy.c

// Actually the SIMPLEST runtime bypass for Flutter:
// Intercept the Dart _SecureFilter which calls into BoringSSL
// But we need the Java bridge for that...

// Let's try the direct approach: find and NOP the cert check
// In BoringSSL ssl_x509.cc, the function ssl_crypto_x509_session_verify_cert_chain:
// - is about 200-400 bytes
// - calls X509_verify_cert
// - on failure, sets OPENSSL_PUT_ERROR(SSL, SSL_R_CERTIFICATE_VERIFY_FAILED)
// - the error code SSL_R_CERTIFICATE_VERIFY_FAILED = 134 (0x86)

// Search for the immediate value 134 (0x86) being loaded near the ssl_x509.cc xref
// MOV W1, #134 in ARM64 = 0x10C80052 (movz w1, #0x86)
var mov_134_pattern = "c10c8052"; // movz w1, #0x86 (134 decimal)
var mov_matches = Memory.scanSync(flutter.base, flutter.size, mov_134_pattern);
send("MOV W1, #134 matches: " + mov_matches.length);
for (var i = 0; i < Math.min(mov_matches.length, 10); i++) {
    var off = mov_matches[i].address.sub(flutter.base);
    send("  [" + i + "] flutter+0x" + off.toString(16));
}

// Among these matches, the one near ssl_x509.cc code section is our target
// ssl_x509.cc string is at ~0x1d7da1, so the code referencing it is nearby
// Look for MOV W1, #134 in range 0x100000 - 0x200000 (approximate .text for ssl code)
var candidates = mov_matches.filter(function(m) {
    var off = m.address.sub(flutter.base).toInt32();
    return off > 0x50000 && off < 0x200000;
});
send("Candidates in ssl code range: " + candidates.length);
for (var i = 0; i < candidates.length; i++) {
    var addr = candidates[i].address;
    var off = addr.sub(flutter.base).toInt32();
    // Read surrounding instructions to identify context
    var before = addr.sub(16).readByteArray(48);
    var hex = Array.prototype.map.call(new Uint8Array(before), function(b){return("0"+b.toString(16)).slice(-2)}).join("");
    send("  candidate flutter+0x" + off.toString(16) + " context: " + hex);
}

send("done");
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
