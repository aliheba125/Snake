// Find the real PP (pool pointer) by hooking a known Dart function
// and reading x27 from its context
var app = Process.findModuleByName("libapp.so");
send({t:"info", msg:"libapp @ "+app.base+" size="+app.size});

// From pp.txt, "pool heap offset: 0x480080" — this is the offset within the
// Dart heap/snapshot, NOT necessarily from libapp.so base.
// The real pool pointer is in register x27 during Dart execution.

// Let's hook a small stub that we know exists (the first few bytes of .text in libapp)
// and capture x27 from there.
// libapp.so .text typically starts after headers. Let's try hooking at a known
// entry point. The Dart entry stub is usually near the beginning.

// Alternative approach: scan memory for known string content
// "https://rest.snakeseller.com/api/request/" should be findable
var pattern = "68747470733a2f2f726573742e736e616b6573656c6c65722e636f6d"; // "https://rest.snakeseller.com"
var ranges = Process.enumerateRanges("r--");
var found = null;
for (var i = 0; i < ranges.length && !found; i++) {
    var r = ranges[i];
    if (r.size > 0x100000 && r.size < 0x1000000) {
        try {
            var matches = Memory.scanSync(r.base, r.size, pattern);
            if (matches.length > 0) {
                found = matches[0].address;
                send({t:"found", msg:"snakeseller string @ " + found + " in range " + r.base + " size " + r.size});
            }
        } catch(e) {}
    }
}

if (!found) {
    // Try in libapp range specifically
    try {
        var matches = Memory.scanSync(app.base, app.size, pattern);
        if (matches.length > 0) {
            found = matches[0].address;
            send({t:"found", msg:"snakeseller in libapp @ " + found});
        }
    } catch(e) {
        send({t:"info", msg:"scan error: " + e.message});
    }
}

// Also search for "You don't have any active subscription"
var subPattern = "596f7520646f6e277420686176"; // "You don't hav"
var allRanges = Process.enumerateRanges("r--");
for (var i = 0; i < allRanges.length; i++) {
    var r = allRanges[i];
    try {
        var ms = Memory.scanSync(r.base, r.size, subPattern);
        if (ms.length > 0) {
            var addr = ms[0].address;
            var str = addr.readUtf8String(80);
            send({t:"sub_str", addr: addr.toString(), range_base: r.base.toString(), str: str});
        }
    } catch(e) {}
}

send({t:"done"});
