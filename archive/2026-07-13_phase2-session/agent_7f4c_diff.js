"use strict";
// Before/After snapshot of vectors around bl 0x7d7f4c (at 0x7dc958)
// Read sp+0x00..0x80 before the call and after return (0x7dc95c)
// Compare to determine if 0x7d7f4c modifies the vectors.

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
var beforeSnap = null;

function hexD(p, n) {
    try {
        var b = new Uint8Array(p.readByteArray(n));
        var h = "";
        for (var i = 0; i < b.length; i++) h += ("0"+b[i].toString(16)).slice(-2);
        return h;
    } catch(e) { return "err:"+e.message; }
}

send({t:"ready"});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        // bl 0x7d7f4c is at 0x7dc958, return addr = 0x7dc95c
        var callSite = eB.add(0x7dc958);
        var afterSite = eB.add(0x7dc95c);
        
        Stalker.follow(tid, {
            events: {compile:true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    if (instr.address.equals(callSite)) {
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var sp = ctx.sp;
                            // Read vectors area: sp+0x00 to sp+0x80
                            beforeSnap = {
                                sp: sp.toString(),
                                full_hex: hexD(sp, 0x80),
                                vec1_38_48: hexD(sp.add(0x38), 16),
                                vec2_50_60: hexD(sp.add(0x50), 16),
                                vec3_68_78: hexD(sp.add(0x68), 16)
                            };
                            send({t:"BEFORE", snap:beforeSnap});
                        });
                    }
                    if (instr.address.equals(afterSite)) {
                        iterator.putCallout(function(ctx) {
                            if (done || !beforeSnap) return;
                            done = true;
                            var sp = ctx.sp;
                            var afterSnap = {
                                sp: sp.toString(),
                                full_hex: hexD(sp, 0x80),
                                vec1_38_48: hexD(sp.add(0x38), 16),
                                vec2_50_60: hexD(sp.add(0x50), 16),
                                vec3_68_78: hexD(sp.add(0x68), 16)
                            };
                            
                            var changed = beforeSnap.full_hex !== afterSnap.full_hex;
                            var vec1_changed = beforeSnap.vec1_38_48 !== afterSnap.vec1_38_48;
                            var vec2_changed = beforeSnap.vec2_50_60 !== afterSnap.vec2_50_60;
                            var vec3_changed = beforeSnap.vec3_68_78 !== afterSnap.vec3_68_78;
                            
                            results.push({
                                before: beforeSnap,
                                after: afterSnap,
                                any_changed: changed,
                                vec1_changed: vec1_changed,
                                vec2_changed: vec2_changed,
                                vec3_changed: vec3_changed
                            });
                            
                            send({t:"RESULT", changed:changed, v1:vec1_changed, v2:vec2_changed, v3:vec3_changed,
                                  before_v1:beforeSnap.vec1_38_48, after_v1:afterSnap.vec1_38_48,
                                  before_v2:beforeSnap.vec2_50_60, after_v2:afterSnap.vec2_50_60,
                                  before_v3:beforeSnap.vec3_68_78, after_v3:afterSnap.vec3_68_78});
                        });
                    }
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        try { Stalker.invalidate(tid, callSite); } catch(e) {}
        try { Stalker.invalidate(tid, afterSite); } catch(e) {}
        
        setTimeout(function() {
            try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
            if (!done) send({t:"TIMEOUT"});
            send({t:"DONE", n:results.length});
        }, 4000);
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresults: function() { return results; }
};
