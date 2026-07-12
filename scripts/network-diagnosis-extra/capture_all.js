var LOG = "/data/local/tmp/full_cap.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== FULL CAPTURE " + new Date().toISOString() + " ===");

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }
    w("libflutter @ " + flutter.base);

    // Hook the function that receives HTTP request data BEFORE TLS encryption
    // arg3 contains the HTTP plaintext (confirmed from previous captures)
    // But also dump arg0-arg5 as hex for non-text payloads
    
    var offsets = [0x6d4be8, 0x9ab14c, 0x9d0a38, 0x9d0a4c];
    
    for (var i = 0; i < offsets.length; i++) {
        (function(off) {
            try {
                Interceptor.attach(flutter.base.add(off), {
                    onEnter: function(args) {
                        // Dump arg3 (known to contain HTTP text)
                        try {
                            var p = args[3];
                            if (p.isNull()) return;
                            
                            // Read as much as possible
                            var len = 0;
                            try {
                                // Try to find length in arg4 or nearby
                                len = args[4] ? args[4].toInt32() : 0;
                                if (len <= 0 || len > 10000) len = 0;
                            } catch(e) {}
                            
                            if (len == 0) {
                                // Try reading as C string
                                var str = p.readCString();
                                if (str && str.length > 3) {
                                    w("[0x" + off.toString(16) + "] STR(" + str.length + "): " + str.substring(0, 800));
                                }
                            } else {
                                // Read as binary
                                var hex = "";
                                for (var j = 0; j < Math.min(len, 200); j++) {
                                    hex += ("0" + p.add(j).readU8().toString(16)).slice(-2);
                                }
                                var ascii = "";
                                for (var j = 0; j < Math.min(len, 200); j++) {
                                    var b = p.add(j).readU8();
                                    ascii += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
                                }
                                w("[0x" + off.toString(16) + "] BIN(" + len + "): " + hex);
                                w("  ASCII: " + ascii);
                            }
                        } catch(e) {}
                        
                        // Also check arg1 (sometimes contains data in different call contexts)
                        try {
                            var p1 = args[1];
                            if (!p1.isNull()) {
                                var str1 = p1.readCString();
                                if (str1 && str1.length > 10 && str1.length < 1000) {
                                    if (str1.indexOf("POST") >= 0 || str1.indexOf("action") >= 0 || 
                                        str1.indexOf("device") >= 0 || str1.indexOf("z=") >= 0 ||
                                        str1.indexOf("push-") >= 0) {
                                        w("[0x" + off.toString(16) + " arg1] " + str1.substring(0, 500));
                                    }
                                }
                            }
                        } catch(e) {}
                    }
                });
                w("Hooked 0x" + off.toString(16));
            } catch(e) { w("FAIL 0x" + off.toString(16) + ": " + e); }
        })(offsets[i]);
    }
    
    // ALSO hook libc connect to know WHEN backend connection happens
    var libc = Process.findModuleByName("libc.so");
    if (libc) {
        Interceptor.attach(libc.findExportByName("connect"), {
            onEnter: function(args) {
                try {
                    var sa = args[1]; var fam = sa.readU16();
                    if (fam === 2) {
                        var port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                        var ip = sa.add(4).readU8()+"."+sa.add(5).readU8()+"."+sa.add(6).readU8()+"."+sa.add(7).readU8();
                        if (port === 443) {
                            w("[CONNECT] " + ip + ":443 fd=" + args[0].toInt32());
                        }
                    }
                } catch(e) {}
            }
        });
        w("connect() hooked");
    }
    
    w("ALL HOOKS READY");
}

tryHook();
