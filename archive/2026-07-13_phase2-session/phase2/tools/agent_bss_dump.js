"use strict";
// Lightweight BSS reader — NO Interceptor, NO Stalker (avoid anti-tamper).
// Reads libengine.so .bss region from the live process after JNI_OnLoad ran.
rpc.exports = {
    dumpbss: function(startOff, len) {
        var eng = Process.findModuleByName("libengine.so");
        if (!eng) return {err:"no libengine"};
        var base = eng.base;
        var addr = base.add(startOff);
        var out = { base: base.toString(), size: eng.size, startOff: startOff, len: len, words: [] };
        // read as 8-byte words; classify each: 0 / in-engine-ptr / other
        var engEnd = base.add(eng.size);
        for (var o = 0; o < len; o += 8) {
            try {
                var v = addr.add(o).readPointer();
                var cls = "other";
                if (v.isNull()) cls = "zero";
                else if (v.compare(base) >= 0 && v.compare(engEnd) < 0) cls = "ENG";
                out.words.push({ off: "0x"+(startOff+o).toString(16), val: v.toString(),
                                 engOff: (cls==="ENG" ? "0x"+v.sub(base).toString(16) : null), cls: cls });
            } catch(e) {
                out.words.push({ off: "0x"+(startOff+o).toString(16), val: "UNREADABLE", cls:"err" });
            }
        }
        return out;
    },
    modinfo: function() {
        var eng = Process.findModuleByName("libengine.so");
        return { base: eng.base.toString(), size: eng.size };
    }
};
