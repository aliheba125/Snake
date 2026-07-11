// Read context around account ID and game package to understand data structure
// Account "391652" found at 0xfd5000849bc0, 0xfd522f6564b8, 0xfd522f65a498, 0xfd522f65cd38
// Game "com.miniclip.eightballpool" at 0x72e530ca, 0xfd532f624ac3

// First, dump 256 bytes around each account ID location
var acct_addrs = [
    ptr("0xfd522f6564b8"),
    ptr("0xfd522f65a498"),
    ptr("0xfd522f65cd38")
];

for (var i = 0; i < acct_addrs.length; i++) {
    try {
        var addr = acct_addrs[i];
        // Read 128 bytes before and 256 bytes after
        var before = addr.sub(64).readByteArray(64);
        var after = addr.readByteArray(256);
        send({t: "acct_ctx", idx: i, addr: addr.toString()}, after);
        // Also try to read as utf8 around it
        try {
            var text = addr.sub(32).readUtf8String(400);
            send({t: "acct_txt", idx: i, text: text.substring(0, 400)});
        } catch(e) {
            // Try without the leading bytes
            var text2 = addr.readUtf8String(200);
            send({t: "acct_txt", idx: i, text: text2.substring(0, 200)});
        }
    } catch(e) {
        send({t: "acct_err", idx: i, msg: e.message});
    }
}

// Now dump context around game package name
try {
    var game_addr = ptr("0xfd532f624ac3");
    var text = game_addr.readUtf8String(200);
    send({t: "game_txt", text: text.substring(0, 200)});
    
    // Read 512 bytes to see the full structure
    var data = game_addr.sub(64).readByteArray(512);
    send({t: "game_ctx"}, data);
} catch(e) {
    send({t: "game_err", msg: e.message});
}

// Search for any JSON-like structures containing game names or subscription data
// Pattern: "eightball" in various contexts
var ranges = Process.enumerateRanges("r--");
var json_pattern = "22636f6d2e6d696e69636c6970"; // '"com.miniclip'
for (var i = 0; i < ranges.length; i++) {
    var r = ranges[i];
    if (r.size > 0x10000000) continue;
    try {
        var ms = Memory.scanSync(r.base, r.size, json_pattern);
        for (var j = 0; j < ms.length; j++) {
            try {
                var str = ms[j].address.sub(50).readUtf8String(300);
                if (str.indexOf("{") !== -1 || str.indexOf("[") !== -1) {
                    send({t: "json_near_game", addr: ms[j].address.toString(), text: str.substring(0, 300)});
                }
            } catch(e2) {}
        }
    } catch(e) {}
}

send({t: "done"});
