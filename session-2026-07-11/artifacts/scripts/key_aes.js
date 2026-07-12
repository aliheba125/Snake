var LOG = "/data/local/tmp/aes_key.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== AES KEY INTERCEPT ===");
var callCount = 0;

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }
    w("flutter @ " + flutter.base);

    // Hook at the point where AES key is loaded (just before BL to AES encrypt)
    // Offset 0x38ceec = first BL to AES block
    var hookAddr = flutter.base.add(0x38ceec);
    
    try {
        Interceptor.attach(hookAddr, {
            onEnter: function(args) {
                callCount++;
                if (callCount > 3) return; // Only first few calls
                
                w("*** AES ENCRYPT CALL #" + callCount + " ***");
                
                // x0 typically points to the key schedule or context
                // Dump x0 pointed memory (first 256 bytes — contains expanded key)
                var ctx = args[0];
                try {
                    var dump = "";
                    for (var i = 0; i < 256; i++) {
                        dump += ("0" + ctx.add(i).readU8().toString(16)).slice(-2);
                    }
                    w("x0->" + ctx + " dump(256B): " + dump);
                } catch(e) { w("x0 read err: " + e); }
                
                // x1 might be plaintext buffer
                try {
                    var dump1 = "";
                    for (var i = 0; i < 64; i++) {
                        dump1 += ("0" + args[1].add(i).readU8().toString(16)).slice(-2);
                    }
                    w("x1(64B): " + dump1);
                } catch(e) {}
                
                // x2 might be output buffer or length
                w("x2=" + args[2] + " x3=" + args[3]);
            }
        });
        w("Hooked AES BL @ " + hookAddr);
    } catch(e) { w("Hook failed: " + e); }
    
    // Also hook 0x699594 (higher-level GCM wrapper)
    try {
        Interceptor.attach(flutter.base.add(0x699594), {
            onEnter: function(args) {
                callCount++;
                if (callCount > 5) return;
                w("*** GCM WRAPPER CALL ***");
                w("x0=" + args[0] + " x1=" + args[1] + " x2=" + args[2] + " x3=" + args[3]);
                // Dump first 64 bytes of each arg
                for (var a = 0; a < 4; a++) {
                    try {
                        var dump = "";
                        for (var i = 0; i < 64; i++) {
                            dump += ("0" + args[a].add(i).readU8().toString(16)).slice(-2);
                        }
                        w("  arg" + a + "(64B): " + dump);
                    } catch(e) {}
                }
            }
        });
        w("Hooked GCM wrapper @ " + flutter.base.add(0x699594));
    } catch(e) { w("GCM hook failed: " + e); }
}

tryHook();
