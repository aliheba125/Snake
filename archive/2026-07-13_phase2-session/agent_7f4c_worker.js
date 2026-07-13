"use strict";
// Before/After of 0x7d7f4c on WORKER THREAD
var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _malloc = libc.findExportByName("malloc");
var _pc = libc.findExportByName("pthread_create");
var wrapper_ra = eB.add(0x800290);
var activated = false;
var stalking = false;
var done = false;
var callerTid = null;
var results = [];
var beforeSnap = null;

function hexD(p, n) {
    try {
        var b = new Uint8Array(p.readByteArray(n));
        var h = "";
        for (var i = 0; i < b.length; i++) h += ("0"+b[i].toString(16)).slice(-2);
        return h;
    } catch(e) { return "err"; }
}

send({t:"ready"});

Interceptor.attach(_pc, {
    onEnter: function(args) {
        if (!activated || done) return;
        var sr = args[2];
        if (sr.compare(eB) >= 0 && sr.compare(eEnd) < 0) {
            if (sr.sub(eB).toInt32() === 0x81db8) {
                callerTid = Process.getCurrentThreadId();
                send({t:"PC", callerTid:callerTid});
            }
        }
    }
});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking || callerTid === null) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        if (Process.getCurrentThreadId() === callerTid) return;
        
        // Worker thread!
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        var callSite = eB.add(0x7dc958);
        var afterSite = eB.add(0x7dc95c);
        
        Stalker.follow(tid, {
            events: {compile:true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    if (instr.address.equals(callSite) && !done) {
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var sp = ctx.sp;
                            beforeSnap = {
                                vec1: hexD(sp.add(0x38), 16),
                                vec2: hexD(sp.add(0x50), 16),
                                vec3: hexD(sp.add(0x68), 16),
                                full: hexD(sp, 0x80)
                            };
                            send({t:"BEFORE"});
                        });
                    }
                    if (instr.address.equals(afterSite) && !done && beforeSnap) {
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            done = true;
                            var sp = ctx.sp;
                            var afterS = {
                                vec1: hexD(sp.add(0x38), 16),
                                vec2: hexD(sp.add(0x50), 16),
                                vec3: hexD(sp.add(0x68), 16),
                                full: hexD(sp, 0x80)
                            };
                            var r = {
                                any_changed: beforeSnap.full !== afterS.full,
                                v1: beforeSnap.vec1 !== afterS.vec1,
                                v2: beforeSnap.vec2 !== afterS.vec2,
                                v3: beforeSnap.vec3 !== afterS.vec3
                            };
                            results.push(r);
                            send({t:"R", changed:r.any_changed, v1:r.v1, v2:r.v2, v3:r.v3,
                                  bv1:beforeSnap.vec1, av1:afterS.vec1,
                                  bv2:beforeSnap.vec2, av2:afterS.vec2,
                                  bv3:beforeSnap.vec3, av3:afterS.vec3});
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

rpc.exports = { arm: function() { activated = true; return "ok"; } };
