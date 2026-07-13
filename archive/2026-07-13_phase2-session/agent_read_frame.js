"use strict";
// Read saved registers from FUN_0017e148's stack frame
// when Worker Thread is inside malloc (deeper in the call chain).
//
// FUN_0017e148 prologue:
//   0x7e148: str d8, [sp, -0x70]!      sp -= 0x70
//   0x7e14c: stp x29, x30, [sp, 0x10]  fp at sp+0x10, lr at sp+0x18
//   0x7e150: add x29, sp, 0x10         x29 = sp + 0x10 (frame pointer)
//   0x7e154: stp x28, x27, [sp, 0x20]
//   0x7e158: stp x26, x25, [sp, 0x30]
//   0x7e15c: stp x24, x23, [sp, 0x40]
//   0x7e160: stp x22, x21, [sp, 0x50]
//   0x7e164: stp x20, x19, [sp, 0x60]
//   0x7e168: sub sp, sp, 0x600
//
// So relative to x29 (frame pointer):
//   x29-0x10 = saved d8
//   x29+0x00 = saved x29 (caller's fp)
//   x29+0x08 = saved x30 (return address = who called FUN_0017e148)
//   x29+0x10 = saved x28
//   x29+0x18 = saved x27
//   x29+0x20 = saved x26
//   x29+0x28 = saved x25
//   x29+0x30 = saved x24
//   x29+0x38 = saved x23
//   x29+0x40 = saved x22
//   x29+0x48 = saved x21
//   x29+0x50 = saved x20
//   x29+0x58 = saved x19
//
// Also: x0 at entry is mov'd to x24 at 0x7e170 (mov x24, x0)
// So x24 in the saved regs = x0 at entry!

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

Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        if (sr.sub(eB).toInt32() === 0x81db8) {
            callerTid = Process.getCurrentThreadId();
            send({t:"PTHREAD", callerTid:callerTid});
        }
    }
});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (!activated || captured || callerTid === null) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        var myTid = Process.getCurrentThreadId();
        if (myTid === callerTid) return;
        
        // Worker Thread detected!
        captured = true;
        send({t:"WORKER", tid:myTid});
        
        // Strategy: scan stack for 0x7e190 (return addr inside FUN_0017e148 after bl 0x7b060)
        // Then compute FUN_0017e148's frame pointer from the stack layout
        var sp = this.context.sp;
        var frames = [];
        var found7e190 = -1;
        
        // Scan stack for libengine addresses
        for (var i = 0; i < 0x1000; i += 8) {
            try {
                var val = sp.add(i).readPointer();
                if (val.compare(eB) >= 0 && val.compare(eEnd) < 0) {
                    var off = val.sub(eB).toInt32();
                    frames.push({stackOff:i, engOff:"0x"+off.toString(16)});
                    if (off === 0x7e190) {
                        found7e190 = i;
                    }
                }
            } catch(e) { break; }
        }
        
        send({t:"STACK_SCAN", count:frames.length, found7e190:found7e190, addrs:frames.slice(0,20)});
        
        if (found7e190 >= 0) {
            // 0x7e190 is the return address stored by 0x7b060's frame.
            // 0x7b060 prologue: stp x29,x30,[sp,-0x60]! → x30 at sp+8
            // So 0x7e190 is at [0x7b060_frame_sp + 8]
            // 0x7b060_frame_sp = sp + found7e190 - 8
            // 0x7b060 saves: x29,x30 at [sp,0], x28,x27 at [sp,0x10], etc.
            // It allocs 0x250 extra: sub sp,sp,0x250
            // So 0x7b060_entry_sp = sp + found7e190 - 8 + ? (we need to figure out frame size)
            //
            // Actually simpler: FUN_0017e148's x29 (frame pointer) is saved by 0x7b060
            // at 0x7b060_frame_sp + 0 (stp x29,x30,[sp,-0x60]!)
            // So FUN_0017e148's fp = [sp + found7e190 - 8]
            //
            // Let's try: read the pointer at (found7e190 - 8) = saved x29 from 0x7b060's frame
            var fn_fp_candidate = sp.add(found7e190 - 8).readPointer();
            send({t:"FN_FP_CANDIDATE", fp:fn_fp_candidate.toString(), from:"sp+0x"+(found7e190-8).toString(16)});
            
            // Now try to read FUN_0017e148's saved regs from fn_fp_candidate
            var fn_fp = fn_fp_candidate;
                    
                    // Read saved registers from FUN_0017e148's frame
                    try {
                        var saved_x30 = fn_fp.add(0x08).readPointer();  // LR = who called FUN_0017e148
                        var saved_x28 = fn_fp.add(0x10).readPointer();
                        var saved_x27 = fn_fp.add(0x18).readPointer();
                        var saved_x26 = fn_fp.add(0x20).readPointer();
                        var saved_x25 = fn_fp.add(0x28).readPointer();
                        var saved_x24 = fn_fp.add(0x30).readPointer();  // = x0 at entry (mov x24, x0)
                        var saved_x23 = fn_fp.add(0x38).readPointer();
                        var saved_x22 = fn_fp.add(0x40).readPointer();
                        var saved_x21 = fn_fp.add(0x48).readPointer();
                        var saved_x20 = fn_fp.add(0x50).readPointer();
                        var saved_x19 = fn_fp.add(0x58).readPointer();
                        var saved_callerFP = fn_fp.readPointer();       // caller's x29
                        
                        function offStr(v) {
                            try {
                                if (v.compare(eB) >= 0 && v.compare(eEnd) < 0)
                                    return "0x" + v.sub(eB).toString(16);
                            } catch(e) {}
                            return v.toString();
                        }
                        
                        result = {
                            ts: Date.now(),
                            ev: "FN_0x7e148_FRAME_READ",
                            workerTid: myTid,
                            fn_fp: fn_fp.toString(),
                            saved_x30_LR: offStr(saved_x30),
                            saved_x28: saved_x28.toString(),
                            saved_x27: saved_x27.toString(),
                            saved_x26: saved_x26.toString(),
                            saved_x25: saved_x25.toString(),
                            saved_x24_eq_x0_at_entry: saved_x24.toString(),
                            saved_x23: saved_x23.toString(),
                            saved_x22: saved_x22.toString(),
                            saved_x21: saved_x21.toString(),
                            saved_x20: saved_x20.toString(),
                            saved_x19: saved_x19.toString(),
                            saved_callerFP: saved_callerFP.toString(),
                            // Also note: x0 at entry = x24 because of "mov x24, x0" at 0x7e170
                            note: "x24 = x0 at FUN entry (mov x24,x0 at 0x7e170)"
                        };
                        
                        send({t:"FRAME_READ", result:result});
                    } catch(e) {
                        send({t:"READ_ERR", err:e.message, fn_fp:fn_fp.toString()});
                    }
        } else {
            send({t:"NOT_FOUND", note:"0x7e190 not found in stack scan"});
        }
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresult: function() { return result; }
};
