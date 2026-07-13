"use strict";
// Scan live process memory for the verdict string to locate its origin module/heap.
rpc.exports = {
    scan: function(needle, utf16) {
        var results = [];
        var ranges = Process.enumerateRanges('r--').concat(Process.enumerateRanges('rw-'));
        var pattern;
        if (utf16) {
            pattern = needle.split("").map(function(c){
                return ("0" + c.charCodeAt(0).toString(16)).slice(-2) + " 00";
            }).join(" ");
        } else {
            pattern = needle.split("").map(function(c){
                return ("0" + c.charCodeAt(0).toString(16)).slice(-2);
            }).join(" ");
        }
        for (var i = 0; i < ranges.length; i++) {
            var r = ranges[i];
            try {
                var found = Memory.scanSync(r.base, r.size, pattern);
                for (var j = 0; j < found.length; j++) {
                    var addr = found[j].address;
                    var mod = Process.findModuleByAddress(addr);
                    results.push({
                        addr: addr.toString(),
                        module: mod ? mod.name : "(heap/anon)",
                        modBase: mod ? mod.base.toString() : null,
                        offset: mod ? "0x"+addr.sub(mod.base).toString(16) : null,
                        rangeProt: r.protection,
                        context: (function(){ try { return Memory.readUtf8String(addr.sub(16), 80); } catch(e){ return "?"; } })()
                    });
                    if (results.length > 40) return results;
                }
            } catch(e) {}
        }
        return results;
    },
    dumparound: function(addrStr) {
        var addr = ptr(addrStr);
        var out = {};
        try { out.before32 = Memory.readByteArray(addr.sub(32), 32); } catch(e){ out.before32=null; }
        try { out.at64 = Memory.readByteArray(addr, 64); } catch(e){ out.at64=null; }
        // Dart OneByteString: header is [tag(8)] then [length as smi]. Length precedes chars by 8 or 16.
        try { out.hdr16 = Memory.readByteArray(addr.sub(16), 16); } catch(e){}
        return out;
    },
    modules: function() {
        return Process.enumerateModules().filter(function(m){
            return m.name.indexOf("libapp")>=0 || m.name.indexOf("libengine")>=0 || m.name.indexOf("libflutter")>=0;
        }).map(function(m){ return {name:m.name, base:m.base.toString(), size:m.size}; });
    }
};
