var LOG = "/data/local/tmp/heap_scan.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== HEAP KEY SCAN ===");

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            try {
                var p = args[3];
                if (p.isNull()) return;
                var str = p.readCString();
                if (!str || str.indexOf("push-918") < 0) return;
                
                w("PUSH-918 INTERCEPTED - SCANNING HEAP FOR 32B KEY CANDIDATES");
                
                // Scan all writable ranges for 32-byte high-entropy sequences
                var ranges = Process.enumerateRanges("rw-");
                var candidates = [];
                
                for (var r = 0; r < ranges.length; r++) {
                    if (ranges[r].size > 50*1024*1024) continue;
                    if (ranges[r].size < 32) continue;
                    
                    try {
                        // Read the entire range
                        var base = ranges[r].base;
                        var size = ranges[r].size;
                        
                        // Sample every 8 bytes (aligned) looking for high-entropy 32B
                        for (var off = 0; off < size - 32; off += 8) {
                            var addr = base.add(off);
                            
                            // Quick check: first 4 bytes should not be 0 or ascii
                            var b0 = addr.readU8();
                            var b1 = addr.add(1).readU8();
                            var b2 = addr.add(2).readU8();
                            var b3 = addr.add(3).readU8();
                            
                            // Skip if looks like pointer (high bytes), zeros, or ascii
                            if (b0 === 0 && b1 === 0) continue;
                            if (b0 >= 0x20 && b0 < 0x7f && b1 >= 0x20 && b1 < 0x7f) continue;
                            
                            // Read full 32 bytes
                            var bytes = [];
                            for (var i = 0; i < 32; i++) bytes.push(addr.add(i).readU8());
                            
                            // Entropy check: need >20 unique bytes and <5 zeros
                            var unique = new Set(bytes).size;
                            var zeros = bytes.filter(function(b){return b===0}).length;
                            
                            if (unique >= 24 && zeros <= 2) {
                                var hex = bytes.map(function(b){return ("0"+b.toString(16)).slice(-2)}).join("");
                                candidates.push(hex);
                                if (candidates.length <= 50) {
                                    w("CAND @" + addr + ": " + hex);
                                }
                            }
                        }
                    } catch(e) {}
                }
                
                w("Total high-entropy 32B candidates: " + candidates.length);
                w("First 50 dumped to log");
                
            } catch(e) { w("ERR: " + e); }
        }
    });
    w("HOOK READY");
}

tryHook();
