send("HMAC capture agent starting");

const flutter = Process.findModuleByName("libflutter.so");
if (!flutter) {
    send("libflutter NOT FOUND");
} else {
    send("libflutter @ " + flutter.base + " size=" + flutter.size);

    // Hook the TLS write function at offset 0x6d4be8 (s3_pkt.cc reference)
    const candidate = flutter.base.add(0x6d4be8);
    send("Hooking TLS write @ " + candidate);

    try {
        Interceptor.attach(candidate, {
            onEnter: function(args) {
                for (var i = 0; i < 4; i++) {
                    try {
                        var ptr = args[i];
                        var first4 = ptr.readByteArray(4);
                        if (first4) {
                            var arr = new Uint8Array(first4);
                            if (arr[0] >= 0x20 && arr[0] < 0x7f) {
                                var str = ptr.readCString();
                                if (str && str.length > 5 && str.length < 1000) {
                                    send("[HIT] arg" + i + ": " + str.substring(0, 400));
                                }
                            }
                        }
                    } catch(e) {}
                }
            }
        });
        send("Hook installed successfully");
    } catch(e) {
        send("Hook FAILED: " + e);
    }
}

send("Agent ready");
