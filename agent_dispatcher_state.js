"use strict";
// Monitor [x19+0x20] vs x19 at entry AND exit of dispatcher 0x7d3d14.
// This runs on CALLER THREAD (before pthread_create).
//
// Dispatcher 0x7d3d14:
//   ENTRY: 0x7d3d14 (stp x29,x30)
//   After self-ref check + first blr: 0x7d3d54 (ldr x8,[x20,0x20])
//   After second blr (if any): 0x7d3d90 (mov x0,x19)
//   EXIT: 0x7d3d9c (ret)
//
// Also monitor 0x7d3da0 (second dispatcher) similarly.
//
// Capture points:
//   A) 0x7d3d24 — after "ldr x0,[x0,0x20]" (x0 = [ctx+0xE0], x19 = ctx+0xC0)
//   B) 0x7d3d90 — after secondary dispatch returns
//   C) 0x7d3d9c — ret (exit)
//
// At each: record x19, [x19+0x20], and whether they're equal.

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _malloc = libc.findExportByName("malloc");
var wrapper_ra = eB.add(0x800290);

var activated = false;
var stalking = false;
var done = false;
var captures = [];

function pOff(v) {
    try {
        if (v.compare(eB) >= 0 && v.compare(eEnd) < 0)
            return "eng+0x" + v.sub(eB).toString(16);
        if (v.isNull()) return "NULL";
    } catch(e) {}
    return v.toString();
}

send({t:"ready"});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        // Use PROVEN working addresses: 0x7d3d8c and 0x7d3e18 (secondary blr sites)
        // These were captured successfully in the morph experiment.
        // At these points, x19 = ctx+0xC0 (or ctx+0xF0), and we can read [x19+0x20]
        var pointA = eB.add(0x7d3d8c); // disp1 secondary blr (PROVEN to work)
        var pointB = eB.add(0x7d3d90); // after disp1 secondary returns
        var pointD = eB.add(0x7d3e18); // disp2 secondary blr (PROVEN to work)
        var pointE = eB.add(0x7d3e1c); // after disp2 secondary returns
        
        Stalker.follow(tid, {
            events: {compile: true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    var addr = instr.address;
                    
                    if (addr.equals(pointA) || addr.equals(pointD)) {
                        var label = addr.equals(pointA) ? "disp1_at_blr" : "disp2_at_blr";
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var x19 = ctx.x19;
                            var x0 = ctx.x0; // object passed to index3 function
                            var slot;
                            try { slot = x19.add(0x20).readPointer(); } catch(e) { slot = ptr(0); }
                            captures.push({
                                pt: label,
                                x19: pOff(x19),
                                x0: pOff(x0),
                                slot_x19_20: pOff(slot),
                                x19_eq_slot: x19.equals(slot),
                                note: "x19=[ctx+0xC0 area], slot=[x19+0x20]=[ctx+0xE0]"
                            });
                            send({t:"PT", pt:label, eq:x19.equals(slot), x19:pOff(x19), slot:pOff(slot), x0:pOff(x0)});
                        });
                    }
                    
                    if (addr.equals(pointB) || addr.equals(pointE)) {
                        var label2 = addr.equals(pointB) ? "disp1_after_blr" : "disp2_after_blr";
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var x19 = ctx.x19;
                            var slot;
                            try { slot = x19.add(0x20).readPointer(); } catch(e) { slot = ptr(0); }
                            captures.push({
                                pt: label2,
                                x19: pOff(x19),
                                slot_x19_20: pOff(slot),
                                x19_eq_slot: x19.equals(slot)
                            });
                            send({t:"PT", pt:label2, eq:x19.equals(slot), x19:pOff(x19), slot:pOff(slot)});
                        });
                    }
                    
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        try { Stalker.invalidate(tid, pointA); } catch(e) {}
        try { Stalker.invalidate(tid, pointB); } catch(e) {}
        try { Stalker.invalidate(tid, pointC); } catch(e) {}
        try { Stalker.invalidate(tid, pointD); } catch(e) {}
        try { Stalker.invalidate(tid, pointE); } catch(e) {}
        
        setTimeout(function() {
            done = true;
            try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
            send({t:"DONE", n:captures.length, caps:captures});
        }, 3000);
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getcaptures: function() { return captures; }
};
