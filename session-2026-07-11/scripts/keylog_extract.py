"""
Extract TLS session keys using Frida Gadget script mode.
Approach: After TLS handshake completes (when app starts sending data),
read the SSL_SESSION master_secret from BoringSSL internal structures.

Alternative approach: hook the internal BoringSSL function that writes
to the socket AFTER TLS — this gives us plaintext directly.

Best approach for Flutter: hook the Dart-level HTTP response handler.
Since we can't hook Dart directly, we hook the BoringSSL internal 
function that decrypts incoming data: ssl3_read_app_data or similar.

Actually the SIMPLEST approach: use script-mode Gadget to write a
keylog file by hooking SSL_SESSION_get_master_key or equivalent.

But BoringSSL in Flutter doesn't export these. So let's try:
1. Find SSL_write internal function by tracing write() calls
2. Read the plaintext buffer BEFORE it goes into TLS encryption
"""
import subprocess, time, os

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

# The approach: use script-mode Gadget with a hook on write() that
# captures the PLAINTEXT data that Flutter sends through the TLS socket.
# 
# From our earlier capture: write() to fd=116 with TLS record type=23 (app data)
# carried 247 bytes. BEFORE this write, Flutter's BoringSSL encrypted the data.
# 
# So we need to hook BEFORE the encryption, not after.
# The plaintext passes through an internal BoringSSL buffer function.
#
# In BoringSSL: ssl3_write_app_data(SSL *ssl, int *out_needs_handshake,
#                                    const uint8_t *buf, int len)
# This is INTERNAL and not exported. But it calls do_ssl3_write which
# eventually calls write().
#
# BETTER APPROACH: instead of all this complexity, just observe that:
# When Flutter makes an HTTP request, the request goes through Dart code
# which passes it to _SecureFilter.processBuffer -> BoringSSL.
# After BoringSSL decrypts server response, it returns plaintext to Dart.
# 
# The Dart FFI boundary is in libflutter.so. The function that passes
# decrypted data back is detectable by its size pattern.
#
# SIMPLEST APPROACH that WORKS: 
# We already know the app connects to Cloud Run. Just capture the 
# ENCRYPTED traffic (TLS records via write/read) and simultaneously
# capture the BoringSSL session keys to decrypt offline with Wireshark.
#
# BoringSSL supports SSLKEYLOGFILE via SSL_CTX_set_keylog_callback.
# We need to:
# 1. Find SSL_CTX_set_keylog_callback in libflutter (pattern match)
# 2. Call it to register our callback that writes keys to file
# 3. OR: find the keylog function and hook it
#
# Actually in Flutter's BoringSSL there IS an exported symbol we might use:
# Let's check what libflutter actually exports

print("[*] Checking libflutter exports...")
# Use the live app to check
adb("am force-stop com.snake")
time.sleep(1)
# Use listen-mode config
os.system('printf \'{"interaction":{"type":"listen","address":"127.0.0.1","port":27052,"on_load":"resume"}}\' > /tmp/listen_cfg.json')
subprocess.run(["adb","push","/tmp/listen_cfg.json","/system/lib64/libskia_android.config.so"], capture_output=True, timeout=5)
adb('setprop wrap.com.snake "LD_PRELOAD=/system/lib64/libskia_android.so"')
adb("am start -n com.snake/com.Entry")
time.sleep(16)
subprocess.run(["adb","forward","tcp:27052","tcp:27052"], capture_output=True, timeout=5)

import frida
mgr = frida.get_device_manager()
device = mgr.add_remote_device("127.0.0.1:27052")
session = device.attach("Gadget")
print("[+] Attached")

# Check for any SSL-related symbols we can use
sc = session.create_script("""
var flutter = Process.findModuleByName("libflutter.so");
send("flutter @ " + flutter.base + " size=" + flutter.size);

/* Check symbols in libflutter */
var symbols = flutter.enumerateSymbols();
var ssl_syms = symbols.filter(function(s) {
    return s.name.indexOf("SSL") !== -1 || s.name.indexOf("ssl") !== -1 ||
           s.name.indexOf("keylog") !== -1 || s.name.indexOf("master") !== -1;
});
send("SSL symbols in libflutter: " + ssl_syms.length);
for (var i = 0; i < Math.min(ssl_syms.length, 20); i++) {
    send("  " + ssl_syms[i].name + " @ " + ssl_syms[i].address);
}

/* Also check exports */
var exports = flutter.enumerateExports();
var ssl_exp = exports.filter(function(e) {
    return e.name.indexOf("SSL") !== -1 || e.name.indexOf("ssl") !== -1;
});
send("SSL exports: " + ssl_exp.length);
for (var i = 0; i < Math.min(ssl_exp.length, 10); i++) {
    send("  " + ssl_exp[i].name + " @ " + ssl_exp[i].address);
}

/* Check for keylog pattern in memory */
var keylog_pattern = "434c49454e545f52414e444f4d"; /* "CLIENT_RANDOM" */
var ranges = Process.enumerateRanges("r--").filter(function(r) {
    return r.base.compare(flutter.base) >= 0 && r.base.compare(flutter.base.add(flutter.size)) < 0;
});
var found_keylog = false;
for (var i = 0; i < ranges.length && !found_keylog; i++) {
    try {
        var m = Memory.scanSync(ranges[i].base, ranges[i].size, keylog_pattern);
        if (m.length > 0) {
            send("CLIENT_RANDOM string at flutter+0x" + m[0].address.sub(flutter.base).toString(16));
            found_keylog = true;
        }
    } catch(e) {}
}
if (!found_keylog) send("No CLIENT_RANDOM string found");
""")

events = []
sc.on("message", lambda m,d: (events.append(m.get("payload","")), print("  "+str(m.get("payload",m.get("description","?"))))))
sc.load()
time.sleep(5)
session.detach()
print(f"\nTotal messages: {len(events)}")
