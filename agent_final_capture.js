"use strict";
// DECISIVE EXPERIMENT — Capture registers at 0x7e148 on Worker Thread
// Strategy: Hook pthread_create, extract new thread's tid from pthread_t,
//           then Stalker.follow that tid immediately.
// On Android bionic (64-bit), pthread_internal_t has tid at various offsets.
// We try reading tid from the pthread_t structure after creation.

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);

var _pthread_create = libc.findExportByName("pthread_create");
var _gettid = libc.findExportByName("gettid");
var TARGET_ENTRY = 0x81db8;
var FN_ENTRY = 0x7e148;

var activated = false;
var captured = false;
var result = null;

send({t:"ready", engBase:eB.toString(), fn:"0x7e148", gadget_pid:Process.id});

Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        var off = sr.sub(eB).toInt32();
        if (off !== TARGET_ENTRY) return;

        this._isTarget = true;
        this._threadPtrPtr = args[0]; // pthread_t* (pointer to pointer)
        this._callerTid = Process.getCurrentThreadId();
        send({t:"PTHREAD_ENTER", callerTid:this._callerTid});
    },
    onLeave: function(retval) {
        if (!this._isTarget) return;
        if (retval.toInt32() !== 0) {
            send({t:"PTHREAD_FAIL", ret:retval.toInt32()});
            return;
        }

        // pthread_create succeeded. Read the new thread's tid.
        // On bionic: pthread_t = pthread_internal_t*
        // pthread_internal_t layout (arm64):
        //   offset 0:  next/prev pointers (linked list)
        //   offset ~8-16: tid (pid_t, 4 bytes)
        // Actually on modern bionic: tid is at offset 16 typically.
        // Let's try multiple offsets and find a reasonable pid value.
        
        var pthreadPtr = this._threadPtrPtr.readPointer(); // pthread_t value = ptr to internal struct
        var newTid = -1;
        
        // Read tid from pthread_internal_t
        // On Android bionic arm64, tid is typically at offset 16
        var tidCandidates = [];
        for (var off = 0; off <= 32; off += 4) {
            try {
                var val = pthreadPtr.add(off).readS32();
                if (val > 1000 && val < 500000) {
                    tidCandidates.push({off:off, val:val});
                }
            } catch(e) {}
        }
        
        send({t:"TID_CANDIDATES", ptr:pthreadPtr.toString(), candidates:tidCandidates});
        
        // Use tid at offset 16 (bionic arm64 standard)
        // Filter: must be > callerTid (newly created) and != gadget_pid
        var bestTid = -1;
        for (var i = 0; i < tidCandidates.length; i++) {
            var c = tidCandidates[i];
            if (c.val > callerTid && c.val !== Process.id) {
                bestTid = c.val;
                break;
            }
        }
        if (bestTid <= 0) {
            // Fallback: use offset 16 directly
            try { bestTid = pthreadPtr.add(16).readS32(); } catch(e) {}
        }
        newTid = bestTid;
        
        // Alternative: enumerate threads to find new one
        var callerTid = this._callerTid;
        var allThreads = Process.enumerateThreads();
        var tids = allThreads.map(function(t){return t.id;});
        
        // Find tid that's not the caller and is close to caller tid (just created)
        var possibleNew = tids.filter(function(t) {
            return t !== callerTid && t > callerTid;
        }).sort(function(a,b){return a-b;});
        
        send({t:"THREAD_SEARCH", newTid:newTid, possibleFromEnum:possibleNew.slice(0,5), 
              callerTid:callerTid, totalThreads:tids.length});
        
        // Decide which tid to follow
        var targetTid = newTid > 0 ? newTid : (possibleNew.length > 0 ? possibleNew[0] : -1);
        
        if (targetTid <= 0) {
            send({t:"NO_TID", note:"could not determine worker tid"});
            return;
        }
        
        send({t:"FOLLOWING", tid:targetTid});
        
        // Follow the worker thread with Stalker IMMEDIATELY (no delay)
        // The thread may not have started yet — Stalker will catch it when it does
        var fnAddr = eB.add(FN_ENTRY);
        var entryAddr = eB.add(TARGET_ENTRY); // 0x81db8
        try {
            Stalker.follow(targetTid, {
                transform: function(iterator) {
                    var instr = iterator.next();
                    while (instr !== null) {
                        if ((instr.address.equals(fnAddr) || instr.address.equals(entryAddr)) && !captured) {
                            var isEntry = instr.address.equals(entryAddr);
                            var isFn = instr.address.equals(fnAddr);
                            iterator.putCallout(function(ctx) {
                                if (captured) return;
                                
                                var atAddr = "unknown";
                                // Detect which address we hit
                                var pc = ctx.pc;
                                if (pc.equals(fnAddr)) atAddr = "0x7e148";
                                else if (pc.equals(entryAddr)) atAddr = "0x81db8";
                                else atAddr = "0x" + pc.sub(eB).toString(16);
                                
                                // Only capture full state at 0x7e148
                                if (pc.equals(fnAddr)) {
                                    captured = true;
                                    result = {
                                        ts: Date.now(),
                                        ev: "FN_0x7e148_ENTRY",
                                        tid: Process.getCurrentThreadId(),
                                        isWorkerThread: (Process.getCurrentThreadId() !== callerTid),
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
                                        x30: ctx.x30.toString(),
                                        sp: ctx.sp.toString(),
                                        pc: ctx.pc.toString()
                                    };
                                    ["x0","x1","x30"].forEach(function(reg) {
                                        try {
                                            var v = ctx[reg];
                                            if (v.compare(eB) >= 0 && v.compare(eEnd) < 0) {
                                                result[reg + "_eng"] = "0x" + v.sub(eB).toString(16);
                                            }
                                        } catch(e) {}
                                    });
                                    send({t:"CAPTURED", result:result});
                                } else {
                                    // Hit entry point 0x81db8 — log but don't stop
                                    send({t:"ENTRY_HIT", addr:atAddr, tid:Process.getCurrentThreadId()});
                                }
                            });
                        }
                        iterator.keep();
                        instr = iterator.next();
                    }
                }
            });
            
            // Invalidate BOTH the entry point and the target to force recompilation
            try { Stalker.invalidate(targetTid, fnAddr); } catch(e) {}
            try { Stalker.invalidate(targetTid, entryAddr); } catch(e) {}
            
            setTimeout(function() {
                try { Stalker.unfollow(targetTid); Stalker.flush(); } catch(e) {}
                if (!captured) {
                    send({t:"TIMEOUT", note:"stalker timeout without capture", tid:targetTid});
                }
            }, 5000);
        } catch(e) {
            send({t:"FOLLOW_ERR", err:e.message, tid:targetTid});
        }
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresult: function() { return result; }
};
