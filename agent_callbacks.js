"use strict";
// Non-invasive: read the dispatcher callback list. pjowqpxe (0xf33a8) does:
//   x8 = [bss+0x128]; ldp x24,x25,[x8,0x40];  loop: ldr x8,[x24],8; blr x8; cmp x24,x25
// So [bss+0x128] -> struct; at +0x40 = begin ptr, +0x48 = end ptr; the range [begin,end)
// is an array of 8-byte function pointers (the callbacks).
rpc.exports = {
    readcallbacks: function(){
        var eng = Process.findModuleByName("libengine.so");
        var base = eng.base, engEnd = base.add(eng.size);
        var out = { base: base.toString(), size: eng.size };
        try {
            var pStruct = base.add(0x828128).readPointer();   // [bss+0x128]
            out.structPtr = pStruct.toString();
            var begin = pStruct.add(0x40).readPointer();
            var end   = pStruct.add(0x48).readPointer();
            out.begin = begin.toString();
            out.end = end.toString();
            var n = end.sub(begin).toInt32() / 8;
            out.count = n;
            out.callbacks = [];
            for (var i = 0; i < n && i < 256; i++){
                var fn = begin.add(i*8).readPointer();
                var e = { idx:i, ptr:fn.toString() };
                if (fn.compare(base) >= 0 && fn.compare(engEnd) < 0)
                    e.engOff = "0x"+fn.sub(base).toString(16);
                else {
                    var mod = Process.findModuleByAddress(fn);
                    e.engOff = mod ? ("["+mod.name+"+0x"+fn.sub(mod.base).toString(16)+"]") : "(unknown)";
                }
                out.callbacks.push(e);
            }
        } catch(e) { out.err = e.toString(); }
        return out;
    },
    // generic: dump a struct region as pointers for manual inspection
    dumpptrs: function(addrStr, count){
        var base = Process.findModuleByName("libengine.so").base;
        var engEnd = base.add(Process.findModuleByName("libengine.so").size);
        var p = ptr(addrStr);
        var out = [];
        for (var i=0;i<count;i++){
            try {
                var v = p.add(i*8).readPointer();
                var e = {off:"0x"+(i*8).toString(16), val:v.toString()};
                if (v.compare(base)>=0 && v.compare(engEnd)<0) e.engOff="0x"+v.sub(base).toString(16);
                out.push(e);
            } catch(x){ out.push({off:"0x"+(i*8).toString(16), val:"ERR"}); }
        }
        return out;
    }
};
