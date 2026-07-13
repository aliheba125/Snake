"use strict";
// APPROACH: Instead of Stalker on worker thread (race condition),
// detect the Worker Thread by its FIRST malloc from wrapper 0x800290.
// We know the caller tid from pthread_create hook.
// Any malloc from wrapper on a DIFFERENT tid = Worker Thread!
// Then read stack to get register state of FUN_0017e148.

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);

var _pthread_create = libc.findExportByName("pthread_create");
var _malloc = libc.findExportByName("malloc");
var wrapper_ra = eB.add(0x800290);

var activated = false;
var captured = false;
var callerTid = null;
var result = null;

send({t:"ready", engBase:eB.toString()});

// Step 1: Hook pthread_create to learn the caller tid
Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        var off = sr.sub(eB).toInt32();
        if (off === 0x81db8) {
            callerTid = Process.getCurrentThreadId();
            send({t:"PTHREAD", callerTid:callerTid});
        }
    }
});

// Step 2: Hook malloc — detect when Worker Thread calls it
Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (!activated || captured || callerTid === null) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        var myTid = Process.getCurrentThreadId();
        if (myTid === callerTid) return; // Skip caller thread mallocs
        
        // This is the WORKER THREAD calling malloc from libengine wrapper!
        captured = true;
        
        send({t:"WORKER_MALLOC", workerTid:myTid, callerTid:callerTid});
        
        // Read the stack to find FUN_0017e148 frame
        // Call chain on worker: 0x81db8 → b 0x7e148 → FUN prologue → ... → 0x7b060 → ... → malloc
        // FUN_0017e148 prologue:
        //   0x7e148: str d8, [sp, -0x70]!     ← sp -= 0x70
        //   0x7e14c: stp x29, x30, [sp, 0x10] ← x30 at sp+0x18
        //   0x7e150: add x29, sp, 0x10
        //   0x7e154: stp x28, x27, [sp, 0x20]
        //   0x7e158: stp x26, x25, [sp, 0x30]
        //   0x7e15c: stp x24, x23, [sp, 0x40]
        //   0x7e160: stp x22, x21, [sp, 0x50]
        //   0x7e164: stp x20, x19, [sp, 0x60] ← x20 at sp+0x60, x19 at sp+0x68
        //   0x7e168: sub sp, sp, 0x600
        //
        // So from FUN_0017e148's frame:
        //   x30 at fp+8 (where fp = sp_after_prologue + 0x10)
        //   x19 at sp_after_prologue + 0x68
        //   x20 at sp_after_prologue + 0x60
        //   x24 at sp_after_prologue + 0x40 (actually x23)
        //
        // But we don't know exact stack depth from here (multiple frames between)
        // Instead: scan the stack for return addresses in libengine
        
        var sp = this.context.sp;
        var engAddrs = [];
        
        // Scan stack for all libengine addresses
        for (var i = 0; i < 0x2000; i += 8) {
            try {
                var val = sp.add(i).readPointer();
                if (val.compare(eB) >= 0 && val.compare(eEnd) < 0) {
                    var off = val.sub(eB).toInt32();
                    engAddrs.push({stackOff:i, engOff:"0x"+off.toString(16)});
                }
            } catch(e) { break; }
        }
        
        // Also capture current context (this thread's registers at malloc entry)
        var ctx = this.context;
        result = {
            ts: Date.now(),
            ev: "WORKER_THREAD_DETECTED",
            workerTid: myTid,
            callerTid: callerTid,
            isWorkerThread: true,
            // Current registers (at malloc entry, inside the call chain from 0x7e148)
            current_x0: ctx.x0.toString(),
            current_x19: ctx.x19.toString(),
            current_x20: ctx.x20.toString(),
            current_x21: ctx.x21.toString(),
            current_x22: ctx.x22.toString(),
            current_x24: ctx.x24.toString(),
            current_x30: (function(){ try { var v = ctx.x30; return v.compare(eB)>=0 && v.compare(eEnd)<0 ? "0x"+v.sub(eB).toString(16) : v.toString(); } catch(e) { return "?"; } })(),
            current_sp: ctx.sp.toString(),
            // Stack scan (libengine addresses found)
            stack_eng_addrs: engAddrs.slice(0, 30)
        };
        
        send({t:"CAPTURED", result:result});
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresult: function() { return result; }
};
