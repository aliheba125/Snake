// Search Dart heap for subscription-related data structures
// Looking for: game package names, subscription state booleans, lists

var app = Process.findModuleByName("libapp.so");
send({t: "info", msg: "libapp @ " + app.base + " size=" + app.size});

// Search for "com.miniclip.eightballpool" in all readable memory
var pattern = "636f6d2e6d696e69636c69702e65696768746261"; // "com.miniclip.eightba"
var found_game = [];

var ranges = Process.enumerateRanges("r--");
for (var i = 0; i < ranges.length; i++) {
    var r = ranges[i];
    if (r.size > 0x100000000) continue; // skip huge ranges
    try {
        var matches = Memory.scanSync(r.base, r.size, pattern);
        for (var j = 0; j < matches.length; j++) {
            var addr = matches[j].address;
            var str = addr.readUtf8String(50);
            found_game.push({addr: addr.toString(), range: r.base.toString(), str: str});
        }
    } catch(e) {}
}
send({t: "game_search", count: found_game.length, results: found_game.slice(0, 20)});

// Also search for "subscription" keyword
var sub_pattern = "7375627363726970"; // "subscrip"
var found_sub = [];
for (var i = 0; i < ranges.length; i++) {
    var r = ranges[i];
    if (r.size > 0x100000000) continue;
    try {
        var matches = Memory.scanSync(r.base, r.size, sub_pattern);
        for (var j = 0; j < matches.length; j++) {
            var addr = matches[j].address;
            try {
                var str = addr.readUtf8String(60);
                if (str.indexOf("subscription") !== -1) {
                    found_sub.push({addr: addr.toString(), str: str.substring(0, 60)});
                }
            } catch(e2) {}
        }
    } catch(e) {}
}
send({t: "sub_search", count: found_sub.length, results: found_sub.slice(0, 30)});

// Search for the account ID "391652" (mentioned in LIVE_DYNAMIC_ANALYSIS.md)
var acct_pattern = "333931363532"; // "391652"
var found_acct = [];
for (var i = 0; i < ranges.length; i++) {
    var r = ranges[i];
    if (r.size > 0x100000000) continue;
    try {
        var matches = Memory.scanSync(r.base, r.size, acct_pattern);
        for (var j = 0; j < matches.length; j++) {
            var addr = matches[j].address;
            try {
                // Read surrounding context (64 bytes before and after)
                var context = addr.sub(32).readByteArray(128);
                found_acct.push({addr: addr.toString()});
            } catch(e2) {}
        }
    } catch(e) {}
}
send({t: "acct_search", count: found_acct.length, results: found_acct.slice(0, 10)});

send({t: "done"});
