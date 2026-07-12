var LOG = "/data/local/tmp/key2.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== KEY EXTRACTION v2 ===");

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }

    var libc = Process.findModuleByName("libc.so");
    w("flutter=" + flutter.base + " libc=" + libc.base);

    // Strategy: The z-value is built by:
    // 1. Generate plaintext (deviceId + timestamp + ?)
    // 2. Encrypt with AES key -> 48 bytes ciphertext 
    // 3. Prepend version byte 0x0c
    // 4. Hex-encode -> 98 char string
    // 5. Build URL with z=<hex>&v=20
    //
    // The KEY is used in step 2. In pointycastle (pure Dart), AES operates on List<int>.
    // The key is a 32-byte List<int> object in Dart heap.
    //
    // APPROACH: Hook the TLS write, and when we see push-918 request,
    // do a MEMORY SCAN for all 32-byte sequences that LOOK like keys
    // (high entropy, not all zeros, not ascii text).
    // Then try each one to decrypt z.

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            try {
                var p = args[3];
                if (p.isNull()) return;
                var str = p.readCString();
                if (!str || str.indexOf("push-918") < 0) return;
                
                w("*** PUSH-918 REQUEST INTERCEPTED ***");
                var zMatch = str.match(/z=([0-9a-f]+)/);
                if (!zMatch) return;
                var zHex = zMatch[1];
                w("z=" + zHex);
                
                // The z-value was JUST built. The AES key should still be
                // reachable from Dart heap. Scan for it.
                // 
                // Key insight: In Dart AOT, a List<int> storing 32 bytes
                // has a specific object layout:
                //   [tag/header] [length=32] [byte0] [byte1] ... [byte31]
                // OR for typed_data (Uint8List):
                //   [header] [length] [data...]
                //
                // We can search for the LENGTH field (32 = 0x20) followed by
                // high-entropy bytes.
                //
                // SIMPLER: Just dump all 32-byte aligned sequences from the
                // Dart isolate heap that have high entropy.
                // 
                // ACTUALLY SIMPLEST: The z payload starts with version 0x0c.
                // The ENCRYPTED part is z[1:] = 48 bytes.
                // If AES-GCM: nonce(12) + ct(20) + tag(16)
                // The plaintext (20 bytes) likely contains: 
                //   android_id_raw(8) + timestamp(4) + counter/random(8)
                //
                // We have android_id = "8840bf6a81679fc4" = raw bytes: 88 40 bf 6a 81 67 9f c4
                // Search for THESE 8 bytes near the z-construction area
                
                var androidIdBytes = "88 40 bf 6a 81 67 9f c4";
                w("Searching for android_id raw bytes: " + androidIdBytes);
                
                var ranges = Process.enumerateRanges("rw-");
                var aidFound = 0;
                for (var r = 0; r < ranges.length; r++) {
                    if (ranges[r].size > 50*1024*1024) continue;
                    try {
                        var hits = Memory.scanSync(ranges[r].base, ranges[r].size, androidIdBytes);
                        for (var h = 0; h < hits.length && aidFound < 10; h++) {
                            aidFound++;
                            var addr = hits[h].address;
                            // Dump 64 bytes around (might show key/nonce/context)
                            var ctx = "";
                            for (var b = 0; b < 96; b++) {
                                ctx += ("0" + addr.sub(32).add(b).readU8().toString(16)).slice(-2);
                            }
                            w("android_id_raw @" + addr + " ctx(-32,+64): " + ctx);
                        }
                    } catch(e) {}
                }
                w("android_id raw hits: " + aidFound);
                
                // Also search for timestamp as uint32 (big-endian)
                // Current time ~1783822000 = 0x6A4F_xxxx
                var tsNow = Math.floor(Date.now() / 1000);
                var tsHex = ("0" + ((tsNow >> 24) & 0xff).toString(16)).slice(-2) + " " +
                           ("0" + ((tsNow >> 16) & 0xff).toString(16)).slice(-2) + " " +
                           ("0" + ((tsNow >> 8) & 0xff).toString(16)).slice(-2) + " " +
                           ("0" + (tsNow & 0xff).toString(16)).slice(-2);
                w("Searching for timestamp bytes (BE): " + tsHex + " (ts=" + tsNow + ")");
                
            } catch(e) { w("ERR: " + e); }
        }
    });
    w("Hook ready");
}

tryHook();
