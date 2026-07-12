send("Multi TLS hook agent");

var flutter = Process.findModuleByName("libflutter.so");
if (!flutter) { send("NO libflutter!"); } 
else {
    send("libflutter @ " + flutter.base);

    // All s3_pkt.cc xref candidates (TLS write functions)
    var offsets = [0x6d4be8, 0x9ab14c, 0x9d0a38, 0x9d0a4c];
    
    for (var idx = 0; idx < offsets.length; idx++) {
        var off = offsets[idx];
        var addr = flutter.base.add(off);
        
        try {
            Interceptor.attach(addr, {
                onEnter: function(args) {
                    var hookIdx = this.hookIdx;
                    // Check all 6 args for readable text (HTTP plaintext)
                    for (var i = 0; i < 6; i++) {
                        try {
                            var ptr = args[i];
                            if (ptr.isNull()) continue;
                            var b0 = ptr.readU8();
                            if (b0 >= 0x20 && b0 < 0x7f) {
                                var str = ptr.readCString();
                                if (str && str.length > 10 && str.length < 2000) {
                                    // Filter: only show if it contains HTTP-like or form-encoded content
                                    if (str.indexOf("HTTP") >= 0 || str.indexOf("action=") >= 0 ||
                                        str.indexOf("POST") >= 0 || str.indexOf("deviceId") >= 0 ||
                                        str.indexOf("encryptedData") >= 0 || str.indexOf("timestamp") >= 0 ||
                                        str.indexOf("Content-") >= 0 || str.indexOf("host:") >= 0) {
                                        send("[OFF_" + hookIdx.toString(16) + " arg" + i + "] " + str.substring(0, 500));
                                    }
                                }
                            }
                        } catch(e) {}
                    }
                }
            });
            // Store hook index for identification
            var lastHook = Interceptor._replacements || {};
            send("Hooked 0x" + off.toString(16) + " OK");
        } catch(e) {
            send("Hook 0x" + off.toString(16) + " FAILED: " + e);
        }
    }

    // Also hook the write syscall wrapper in libc to catch POST body
    var libc = Process.findModuleByName("libc.so");
    var write_fn = libc.findExportByName("writev");
    if (write_fn) {
        // writev is used for HTTP/2 (multiple buffers at once)
        Interceptor.attach(write_fn, {
            onEnter: function(args) {
                var fd = args[0].toInt32();
                var iov = args[1];
                var iovcnt = args[2].toInt32();
                // Only care about small writes (API requests, not images)
                if (iovcnt > 0 && iovcnt < 10) {
                    for (var i = 0; i < iovcnt; i++) {
                        try {
                            var base = iov.add(i * 16).readPointer();
                            var len = iov.add(i * 16 + 8).readU64();
                            if (len > 10 && len < 500) {
                                var str = base.readCString();
                                if (str && (str.indexOf("action=") >= 0 || str.indexOf("POST") >= 0 ||
                                    str.indexOf("deviceId") >= 0 || str.indexOf("encryptedData") >= 0)) {
                                    send("[WRITEV fd=" + fd + " iov" + i + " len=" + len + "] " + str.substring(0, 400));
                                }
                            }
                        } catch(e) {}
                    }
                }
            }
        });
        send("writev hooked");
    }
}

send("All hooks active");
