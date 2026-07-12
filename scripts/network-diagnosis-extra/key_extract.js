var LOG = "/data/local/tmp/key_extract.log";
function w(line) { try { var f = new File(LOG, "a"); f.write(line + "\n"); f.flush(); f.close(); } catch(e) {} }

w("=== KEY EXTRACTION AGENT " + new Date().toISOString() + " ===");

function tryHook() {
    var flutter = Process.findModuleByName("libflutter.so");
    if (!flutter) { setTimeout(tryHook, 50); return; }
    w("libflutter @ " + flutter.base);

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            try {
                var p = args[3];
                if (p.isNull()) return;
                var str = p.readCString();
                if (!str || str.indexOf("push-918") < 0) return;
                
                w("*** CAUGHT push-918 request! ***");
                w("Full request: " + str.substring(0, 300));
                
                // Extract z value from the URL
                var zMatch = str.match(/z=([0-9a-f]+)/);
                if (!zMatch) return;
                var zHex = zMatch[1];
                w("z hex: " + zHex);
                
                // Convert z to raw bytes for memory search
                var zBytes = [];
                for (var i = 0; i < zHex.length; i += 2) {
                    zBytes.push(parseInt(zHex.substr(i, 2), 16));
                }
                w("z raw bytes (first 16): " + zBytes.slice(0, 16).map(function(b){return ("0"+b.toString(16)).slice(-2)}).join(""));
                
                // Search for the raw z bytes in writable memory
                // The encryption output (before hex-encoding) should be somewhere in heap
                var searchPattern = zBytes.slice(0, 16).map(function(b){return ("0"+b.toString(16)).slice(-2)}).join(" ");
                w("Searching for pattern: " + searchPattern);
                
                var ranges = Process.enumerateRanges("rw-");
                var found = 0;
                for (var r = 0; r < ranges.length; r++) {
                    if (ranges[r].size > 100*1024*1024) continue;
                    try {
                        var hits = Memory.scanSync(ranges[r].base, ranges[r].size, searchPattern);
                        for (var h = 0; h < hits.length; h++) {
                            found++;
                            var addr = hits[h].address;
                            w("FOUND z-bytes @ " + addr);
                            
                            // Dump 256 bytes BEFORE (likely contains key/nonce/context)
                            var before = "";
                            try {
                                for (var b = 0; b < 256; b++) {
                                    before += ("0" + addr.sub(256).add(b).readU8().toString(16)).slice(-2);
                                }
                                w("  256B BEFORE: " + before);
                            } catch(e) { w("  before read err"); }
                            
                            // Dump the z-value itself + 64 bytes after
                            var after = "";
                            try {
                                for (var b = 0; b < 112; b++) {
                                    after += ("0" + addr.add(b).readU8().toString(16)).slice(-2);
                                }
                                w("  z + 64B after: " + after);
                            } catch(e) {}
                        }
                    } catch(e) {}
                }
                w("Total z-byte locations found: " + found);
                
                // Also search for the z HEX STRING (as it appears in the URL)
                var hexSearchPattern = [];
                for (var i = 0; i < Math.min(zHex.length, 32); i++) {
                    hexSearchPattern.push(("0" + zHex.charCodeAt(i).toString(16)).slice(-2));
                }
                var hexPattern = hexSearchPattern.join(" ");
                w("Searching for hex-string pattern: " + hexPattern);
                
                var hexFound = 0;
                for (var r = 0; r < ranges.length; r++) {
                    if (ranges[r].size > 100*1024*1024) continue;
                    try {
                        var hits = Memory.scanSync(ranges[r].base, ranges[r].size, hexPattern);
                        for (var h = 0; h < hits.length && hexFound < 5; h++) {
                            hexFound++;
                            var addr = hits[h].address;
                            w("FOUND z-hex-string @ " + addr);
                            // Dump 128 bytes before
                            var before = "";
                            try {
                                for (var b = 0; b < 128; b++) {
                                    var byte = addr.sub(128).add(b).readU8();
                                    before += (byte >= 32 && byte < 127) ? String.fromCharCode(byte) : ".";
                                }
                                w("  128B before (ascii): " + before);
                            } catch(e) {}
                        }
                    } catch(e) {}
                }
                w("Total hex-string locations: " + hexFound);
                
            } catch(e) { w("ERR: " + e); }
        }
    });
    w("Hook installed - waiting for push-918 request...");
}

tryHook();
