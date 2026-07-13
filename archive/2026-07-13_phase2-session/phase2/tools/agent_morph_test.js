"use strict";
// PROVE MORPH: snapshot object before/after index 3 dispatch.
// 
// index 3 dispatches happen at:
//   0x7d3d8c (disp1_secondary) — after first dispatch in 0x7d3d14
//   0x7d3e18 (disp2_secondary) — after first dispatch in 0x7d3da0
//
// Instructions:
//   0x7d3d88: ldr x8, [x8, 0x18]    ← loads vtable[3] into x8
//   0x7d3d8c: blr x8                 ← CALL index 3
//   0x7d3d90: mov x0, x19            ← AFTER RETURN
//
// At blr x8: x0 = the object being morphed, x1 = another object
// At 0x7d3d90: the call has returned, object at x19 may be changed
//
// Strategy: 
//   callout at 0x7d3d8c → read [x0, 0x80] (BEFORE)
//   callout at 0x7d3d90 → read [x19, 0x80] (AFTER)
//   compare!

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
        for (var i = 0; i < arr.length; i++) {
            hex += ("0" + arr[i].toString(16)).slice(-2);
        }
        return hex;
    } catch(e) {
        return "err:" + e.message;
    }
}

function ptrInfo(val) {
    try {
        if (val.isNull()) return "NULL";
        if (val.compare(eB) >= 0 && val.compare(eEnd) < 0)
            return "eng+0x" + val.sub(eB).toString(16);
        return val.toString();
    } catch(e) { return "?"; }
}

send({t:"ready"});

var beforeState = null;

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        var blr1 = eB.add(0x7d3d8c);   // disp1 secondary blr
        var after1 = eB.add(0x7d3d90);  // instruction after blr1
        var blr2 = eB.add(0x7d3e18);    // disp2 secondary blr
        var after2 = eB.add(0x7d3e1c);  // instruction after blr2
        
        Stalker.follow(tid, {
            events: {compile: true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    var addr = instr.address;
                    
                    // BEFORE index 3 dispatch (disp1)
                    if (addr.equals(blr1)) {
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            // x0 = object being passed to index3 function
                            // x1 = second arg (the source object)
                            var obj = ctx.x0;
                            var obj_hex = hexDump(obj, 0x80);
                            var vtable_ptr = "?";
                            try { vtable_ptr = ptrInfo(obj.readPointer()); } catch(e) {}
                            
                            beforeState = {
                                site: "disp1_before",
                                obj_addr: obj.toString(),
                                vtable: vtable_ptr,
                                first_0x80: obj_hex,
                                x1: ctx.x1.toString(),
                                x8_target: ptrInfo(ctx.x8)
                            };
                            send({t:"BEFORE", state: beforeState});
                        });
                    }
                    
                    // AFTER index 3 dispatch (disp1)
                    if (addr.equals(after1)) {
                        iterator.putCallout(function(ctx) {
                            if (done || !beforeState) return;
                            // x19 = the object (preserved across call in dispatcher)
                            var obj = ctx.x19;
                            var obj_hex = hexDump(obj, 0x80);
                            var vtable_ptr = "?";
                            try { vtable_ptr = ptrInfo(obj.readPointer()); } catch(e) {}
                            
                            var afterState = {
                                site: "disp1_after",
                                obj_addr: obj.toString(),
                                vtable: vtable_ptr,
                                first_0x80: obj_hex
                            };
                            
                            // Compare
                            var changed = beforeState.first_0x80 !== obj_hex;
                            var vtable_changed = beforeState.vtable !== vtable_ptr;
                            
                            results.push({
                                before: beforeState,
                                after: afterState,
                                changed: changed,
                                vtable_changed: vtable_changed
                            });
                            
                            send({t:"AFTER", afterState: afterState, changed: changed, vtable_changed: vtable_changed});
                            beforeState = null;
                        });
                    }
                    
                    // BEFORE index 3 dispatch (disp2)
                    if (addr.equals(blr2)) {
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var obj = ctx.x0;
                            var obj_hex = hexDump(obj, 0x80);
                            var vtable_ptr = "?";
                            try { vtable_ptr = ptrInfo(obj.readPointer()); } catch(e) {}
                            
                            beforeState = {
                                site: "disp2_before",
                                obj_addr: obj.toString(),
                                vtable: vtable_ptr,
                                first_0x80: obj_hex,
                                x1: ctx.x1.toString(),
                                x8_target: ptrInfo(ctx.x8)
                            };
                            send({t:"BEFORE", state: beforeState});
                        });
                    }
                    
                    // AFTER index 3 dispatch (disp2)
                    if (addr.equals(after2)) {
                        iterator.putCallout(function(ctx) {
                            if (done || !beforeState) return;
                            var obj = ctx.x19;
                            var obj_hex = hexDump(obj, 0x80);
                            var vtable_ptr = "?";
                            try { vtable_ptr = ptrInfo(obj.readPointer()); } catch(e) {}
                            
                            var afterState = {
                                site: "disp2_after",
                                obj_addr: obj.toString(),
                                vtable: vtable_ptr,
                                first_0x80: obj_hex
                            };
                            
                            var changed = beforeState.first_0x80 !== obj_hex;
                            var vtable_changed = beforeState.vtable !== vtable_ptr;
                            
                            results.push({
                                before: beforeState,
                                after: afterState,
                                changed: changed,
                                vtable_changed: vtable_changed
                            });
                            
                            send({t:"AFTER", afterState: afterState, changed: changed, vtable_changed: vtable_changed});
                            beforeState = null;
                        });
                    }
                    
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        // Invalidate all target pages
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
