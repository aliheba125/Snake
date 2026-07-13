"use strict";
// Non-invasive: scan the decrypted-string mmap arena (near JNI name/sig ptrs, ~0x...70xx000)
// for verdict strings, and dump readable strings from those anon RX/RW pages.
// NO hooks on engine code => anti-tamper safe.
rpc.exports = {
    findarena: function(){
        // The JNI name/sig pointers pointed at 0x...70fX000 region. Enumerate ranges near there.
        var out = [];
        var ranges = Process.enumerateRanges('r--').concat(Process.enumerateRanges('rw-')).concat(Process.enumerateRanges('r-x'));
        ranges.forEach(function(r){
            out.push({base:r.base.toString(), size:r.size, prot:r.protection});
        });
        return out;
    },
    scanstr: function(needle){
        var results = [];
        var pat = needle.split("").map(function(c){ return ("0"+c.charCodeAt(0).toString(16)).slice(-2); }).join(" ");
        var ranges = Process.enumerateRanges('r--').concat(Process.enumerateRanges('rw-'));
        for (var i=0;i<ranges.length;i++){
            var r = ranges[i];
            try {
                var found = Memory.scanSync(r.base, r.size, pat);
                for (var j=0;j<found.length;j++){
                    var a = found[j].address;
                    var mod = Process.findModuleByAddress(a);
                    results.push({addr:a.toString(), module:(mod?mod.name:"(anon)"),
                                  prot:r.protection,
                                  ctx: (function(){ try{ return Memory.readUtf8String(a.sub(4), 60);}catch(e){return "?";} })() });
                    if (results.length>30) return results;
                }
            } catch(e){}
        }
        return results;
    },
    // dump all C-strings from a given range that contain a substring
    dumprange: function(baseStr, size, filterSub){
        var base = ptr(baseStr);
        var out = [];
        var i = 0;
        while (i < size && out.length < 400){
            try {
                var s = base.add(i).readCString();
                if (s && s.length >= 4){
                    if (!filterSub || s.indexOf(filterSub) >= 0)
                        out.push({off:"0x"+i.toString(16), s:s});
                    i += s.length + 1;
                } else { i += 1; }
            } catch(e){ i += 8; }
        }
        return out;
    }
};
