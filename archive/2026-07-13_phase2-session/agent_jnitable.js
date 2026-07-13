"use strict";
// Read JNINativeMethod array from BSS. Each entry = {char* name; char* sig; void* fn}.
rpc.exports = {
    readtable: function(startOff, nEntries) {
        var eng = Process.findModuleByName("libengine.so");
        var base = eng.base, engEnd = base.add(eng.size);
        var out = { base: base.toString(), entries: [] };
        var p = base.add(startOff);
        for (var i = 0; i < nEntries; i++) {
            var entry = p.add(i * 24);
            var e = { idx: i };
            try {
                var namePtr = entry.readPointer();
                var sigPtr = entry.add(8).readPointer();
                var fnPtr = entry.add(16).readPointer();
                e.name = (function(){ try { return namePtr.readCString(); } catch(x){ return "?"; } })();
                e.sig = (function(){ try { return sigPtr.readCString(); } catch(x){ return "?"; } })();
                e.fn = fnPtr.toString();
                if (fnPtr.compare(base) >= 0 && fnPtr.compare(engEnd) < 0)
                    e.fnOff = "0x"+fnPtr.sub(base).toString(16);
                else e.fnOff = "(out of engine)";
            } catch(err) { e.err = err.toString(); }
            out.entries.push(e);
        }
        return out;
    }
};
