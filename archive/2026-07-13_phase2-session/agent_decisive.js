"use strict";
// agent_decisive.js — THE DECISIVE EXPERIMENT
// Goal: Prove that Worker Thread enters FUN_0017e148 and capture register state.
//
// Strategy:
//   1. Hook pthread_create (libc — SAFE)
//   2. When start_routine == 0x81db8, follow the new thread with Stalker
//   3. Callout at 0x7e148 (FUN entry) captures all registers
//   4. Done.
//
// SAFE: only libc hooks + Stalker (no .text modification of libengine)

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);

var _pthread_create = libc.findExportByName("pthread_create");
var TARGET_ENTRY = 0x81db8;
var FN_ENTRY = 0x7e148;

var activated = false;
var captured = false;
var result = null;

send({t:"ready", engBase:eB.toString(), target:"0x81db8->0x7e148"});

Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        var off = sr.sub(eB).toInt32();
        if (off !== TARGET_ENTRY) return;

        // Found our target pthread_create!
        this._isTarget = true;
        this._callerTid = Process.getCurrentThreadId();
        this._threadPtr = args[0]; // pointer to pthread_t (will contain new thread handle)
        this._preThreads = Process.enumerateThreads().map(function(t){return t.id;});
        send({t:"PTHREAD_FOUND", callerTid:this._callerTid, routine:"0x81db8", preThreadCount:this._preThreads.length});
    },
    onLeave: function(retval) {
        if (!this._isTarget) return;
        if (retval.toInt32() !== 0) {
            send({t:"PTHREAD_FAILED", retval:retval.toInt32()});
            return;
        }

        send({t:"PTHREAD_SUCCESS", note:"thread created, finding new thread"});

        // Find the NEW thread by diffing pre/post thread lists
        var callerTid = this._callerTid;
        var preThreads = this._preThreads;
        var fnAddr = eB.add(FN_ENTRY);

        // Wait briefly for thread to actually start executing
        setTimeout(function() {
            var postThreads = Process.enumerateThreads();
            var postTids = postThreads.map(function(t){return t.id;});
            // New threads = in post but not in pre
            var newTids = postTids.filter(function(tid) { return preThreads.indexOf(tid) === -1; });

            send({t:"FOLLOWING", newTids:newTids, postCount:postTids.length});

            // Follow the NEW threads (should be 1-2 max)
            var toFollow = newTids.length > 0 ? newTids : postTids.filter(function(t){return t !== callerTid;}).slice(-5);

            toFollow.forEach(function(tid) {
                try {
                    Stalker.follow(tid, {
                        transform: function(iterator) {
                            var instr = iterator.next();
                            while (instr !== null) {
                                if (instr.address.equals(fnAddr) && !captured) {
                                    iterator.putCallout(function(ctx) {
                                        if (captured) return;
                                        captured = true;

                                        result = {
                                            ts: Date.now(),
                                            ev: "FN_0x7e148_ENTRY",
                                            tid: Process.getCurrentThreadId(),
                                            isWorkerThread: (Process.getCurrentThreadId() !== callerTid),
                                            pc: ctx.pc.toString(),
                                            sp: ctx.sp.toString(),
                                            x0: ctx.x0.toString(),
                                            x1: ctx.x1.toString(),
                                            x2: ctx.x2.toString(),
                                            x3: ctx.x3.toString(),
                                            x4: ctx.x4.toString(),
                                            x5: ctx.x5.toString(),
                                            x6: ctx.x6.toString(),
                                            x7: ctx.x7.toString(),
                                            x8: ctx.x8.toString(),
                                            x19: ctx.x19.toString(),
                                            x20: ctx.x20.toString(),
                                            x21: ctx.x21.toString(),
                                            x22: ctx.x22.toString(),
                                            x23: ctx.x23.toString(),
                                            x24: ctx.x24.toString(),
                                            x25: ctx.x25.toString(),
                                            x28: ctx.x28.toString(),
                                            x29: ctx.x29.toString(),
                                            x30: ctx.x30.toString()
                                        };

                                        try {
                                            var x0v = ctx.x0;
                                            if (x0v.compare(eB) >= 0 && x0v.compare(eEnd) < 0) {
                                                result.x0_eng = "0x" + x0v.sub(eB).toString(16);
                                            }
                                        } catch(e) {}
                                        try {
                                            var x30v = ctx.x30;
                                            if (x30v.compare(eB) >= 0 && x30v.compare(eEnd) < 0) {
                                                result.x30_eng = "0x" + x30v.sub(eB).toString(16);
                                            }
                                        } catch(e) {}

                                        send({t:"CAPTURED", result:result});
                                    });
                                }
                                iterator.keep();
                                instr = iterator.next();
                            }
                        }
                    });

                    setTimeout(function() {
                        try { Stalker.unfollow(tid); } catch(e) {}
                    }, 4000);
                } catch(e) {}
            });
        }, 100); // 100ms delay for thread to start
    }
});

rpc.exports = {
    arm: function() {
        activated = true;
        return "armed";
    },
    getresult: function() {
        return result;
    }
};
