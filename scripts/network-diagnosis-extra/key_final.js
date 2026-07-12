var LOG = "/data/local/tmp/key_final.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== FINAL KEY EXTRACTION ===");

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }
    w("flutter @ " + flutter.base);

    // Hook the TLS write function
    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            try {
                var p = args[3];
                if (p.isNull()) return;
                var str = p.readCString();
                if (!str || str.indexOf("push-918") < 0) return;

                w("*** INTERCEPTED push-918 ***");
                
                // Dump the current thread context (registers)
                // In ARM64, x0-x7 are argument registers, x8-x18 are caller-saved
                // The encryption just happened, so registers may still hold key-related data
                w("arg0=" + args[0] + " arg1=" + args[1] + " arg2=" + args[2]);
                w("arg3=" + args[3] + " arg4=" + args[4] + " arg5=" + args[5]);
                
                // Dump this (context pointer) - often holds the SSL state which contains keys
                var ctx = this.context;
                w("pc=" + ctx.pc + " sp=" + ctx.sp + " fp=" + ctx.fp);
                
                // Dump stack (128 bytes from SP) — may contain key residue
                var sp = ctx.sp;
                var stackDump = "";
                for (var i = 0; i < 256; i++) {
                    stackDump += ("0" + sp.add(i).readU8().toString(16)).slice(-2);
                }
                w("STACK(256B from SP): " + stackDump);
                
                // arg0 points to the SSL connection context (ssl_st structure)
                // In BoringSSL, ssl->s3->aead_write_ctx contains the key
                // Lets try to walk the structure
                var ssl = args[0];
                try {
                    // Dump first 512 bytes of SSL context
                    var sslDump = "";
                    for (var i = 0; i < 512; i++) {
                        sslDump += ("0" + ssl.add(i).readU8().toString(16)).slice(-2);
                    }
                    w("SSL_CTX(512B): " + sslDump);
                } catch(e) { w("SSL ctx read err: " + e); }
                
                // Also try: arg1 often points to BIO or buffer context
                var arg1 = args[1];
                try {
                    var bioDump = "";
                    for (var i = 0; i < 256; i++) {
                        bioDump += ("0" + arg1.add(i).readU8().toString(16)).slice(-2);
                    }
                    w("ARG1(256B): " + bioDump);
                } catch(e) { w("arg1 read err: " + e); }
                
                // MOST PROMISING: Walk pointers from SSL context
                // In BoringSSL: ssl->s3 (offset varies) -> aead_write_ctx -> key
                // Lets read several pointer-sized values from the SSL struct
                // and dereference them looking for 32-byte sequences
                for (var offset = 0; offset < 400; offset += 8) {
                    try {
                        var ptr = ssl.add(offset).readPointer();
                        if (ptr.isNull()) continue;
                        // Try to read 32 bytes from this pointer
                        var data = "";
                        var valid = true;
                        for (var j = 0; j < 32; j++) {
                            var b = ptr.add(j).readU8();
                            data += ("0" + b.toString(16)).slice(-2);
                        }
                        // Check if it looks like a key (not all zeros, not all same, not ascii)
                        var bytes = [];
                        for (var j = 0; j < 32; j++) bytes.push(ptr.add(j).readU8());
                        var unique = new Set(bytes).size;
                        var zeros = bytes.filter(function(b){return b===0}).length;
                        if (unique > 20 && zeros < 5) {
                            w("KEY_CANDIDATE @ssl+" + offset + " -> " + ptr + ": " + data);
                        }
                    } catch(e) {}
                }
                
            } catch(e) { w("HOOK ERR: " + e); }
        }
    });
    w("Hook ready");
}

tryHook();
