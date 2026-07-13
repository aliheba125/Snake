"use strict";
// Capture x0 AND x1 before/after index 3 calls.
// Focus on x1 (destination) which is where the write happens.
//
// At 0x7d3d8c (blr x8 for index 3):
//   x0 = object passed to the index3 function (source)
//   x1 = x19 (the dispatcher's saved ptr = the "self" object)
// 
// After return at 0x7d3d90:
//   x19 still holds the same ptr

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _malloc = libc.findExportByName("malloc");
var wrapper_ra = eB.add(0x800290);

var activated = false;
var stalking = false;
var done = false;
var results = [];

function hexDump(ptr, size) {
    try {
        var buf = ptr.readByteArray(size);
        if (!buf) return "null";
        var arr = new Uint8Array(buf);
        var hex = "";
        for (var i = 0; i < arr.length; i++) hex += ("0" + arr[i].toString(16)).slice(-2);
        return hex;
    } catch(e) { return "err:" + e.message; }
}

function ptrAt(ptr) {
    try {
        var v = ptr.readPointer();
        if (v.compare(eB) >= 0 && v.compare(eEnd) < 0) return "eng+0x" + v.sub(eB).toString(16);
        if (v.isNull()) return "NULL";
        return v.toString();
    } catch(e) { return "?"; }
}

send({t:"ready"});

var pendingBefore = null;

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        var blr1 = eB.add(0x7d3d8c);
        var after1 = eB.add(0x7d3d90);
        var blr2 = eB.add(0x7d3e18);
        var after2 = eB.add(0x7d3e1c);
        
        Stalker.follow(tid, {
            events: {compile: true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    var addr = instr.address;
                    
                    if (addr.equals(blr1) || addr.equals(blr2)) {
                        var siteName = addr.equals(blr1) ? "disp1" : "disp2";
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var x0 = ctx.x0;
                            var x1 = ctx.x1;
                            pendingBefore = {
                                site: siteName,
                                x0_addr: x0.toString(),
                                x1_addr: x1.toString(),
                                x0_vtable: ptrAt(x0),
                                x1_vtable: ptrAt(x1),
                                x0_first32: hexDump(x0, 0x20),
                                x1_first32: hexDump(x1, 0x20),
                                x8_target: ptrAt(ctx.x8)
                            };
                            send({t:"BEFORE", d:pendingBefore});
                        });
                    }
                    
                    if (addr.equals(after1) || addr.equals(after2)) {
                        iterator.putCallout(function(ctx) {
                            if (done || !pendingBefore) return;
                            var x19 = ctx.x19;
                            // x19 = the dispatcher's self (was passed as x1 to index3)
                            // Also try reading x0 (return value from index3)
                            var x0_after = ctx.x0;
                            
                            var afterData = {
                                x19_addr: x19.toString(),
                                x19_vtable: ptrAt(x19),
                                x19_first32: hexDump(x19, 0x20),
                                x0_after: x0_after.toString()
                            };
                            
                            // Also re-read the original x1 address
                            var origX1 = ptr(pendingBefore.x1_addr);
                            afterData.origX1_vtable = ptrAt(origX1);
                            afterData.origX1_first32 = hexDump(origX1, 0x20);
                            
                            var x1_changed = pendingBefore.x1_first32 !== afterData.origX1_first32;
                            var x1_vtable_changed = pendingBefore.x1_vtable !== afterData.origX1_vtable;
                            
                            results.push({
                                before: pendingBefore,
                                after: afterData,
                                x1_data_changed: x1_changed,
                                x1_vtable_changed: x1_vtable_changed
                            });
                            
                            send({t:"RESULT", x1_changed:x1_changed, x1_vtable_changed:x1_vtable_changed,
                                  before_x1_vtable:pendingBefore.x1_vtable, after_x1_vtable:afterData.origX1_vtable,
                                  before_x1: pendingBefore.x1_first32, after_x1: afterData.origX1_first32});
                            pendingBefore = null;
                        });
                    }
                    
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        try { Stalker.invalidate(tid, blr1); } catch(e) {}
        try { Stalker.invalidate(tid, after1); } catch(e) {}
        try { Stalker.invalidate(tid, blr2); } catch(e) {}
        try { Stalker.invalidate(tid, after2); } catch(e) {}
        
        setTimeout(function() {
            done = true;
            try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
            send({t:"DONE", total:results.length, results:results});
        }, 3000);
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresults: function() { return results; }
};
