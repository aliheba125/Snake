"use strict";
// Monitor ctx+0xE0 vs ctx+0xC0 at multiple points during Activate.
// Uses malloc burst to identify activation, then reads context at:
//   1. First burst malloc (start of activation)
//   2. After ~20 mallocs (mid-activation)
//   3. After ~60 mallocs (late activation)
//   4. After ~100 mallocs (near end)
//
// At each point: read ctx+0xC0 and ctx+0xE0, compare.
// ctx ptr = x24 (callee-saved from FUN_0017e148 entry)

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _malloc = libc.findExportByName("malloc");
var _pthread_create = libc.findExportByName("pthread_create");
var wrapper_ra = eB.add(0x800290);

var activated = false;
var done = false;
var callerTid = null;
var workerTid = null;
var samples = [];
var workerMallocCount = 0;
var SAMPLE_POINTS = [1, 10, 30, 60, 100];

send({t:"ready"});

// Detect pthread_create to know caller vs worker
Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || done) return;
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
        if (done || !activated) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        var myTid = Process.getCurrentThreadId();
        
        // Only track worker thread mallocs
        if (callerTid !== null && myTid === callerTid) return;
        if (callerTid === null) return; // wait for pthread_create first
        
        workerMallocCount++;
        
        if (SAMPLE_POINTS.indexOf(workerMallocCount) !== -1) {
            // x24 = ctx pointer (callee-saved from FUN_0017e148)
            var ctx = this.context.x24;
            
            var sample = {
                mallocNum: workerMallocCount,
                ctx: ctx.toString()
            };
            
            try {
                var ctx_c0_addr = ctx.add(0xC0);
                var ctx_e0_val = ctx.add(0xE0).readPointer();
                
                sample.ctx_c0_addr = ctx_c0_addr.toString();
                sample.ctx_e0_val = ctx_e0_val.toString();
                sample.equal = ctx_c0_addr.equals(ctx_e0_val);
                
                // Also read vtable at ctx+0xC0
                try {
                    var vtable = ctx_c0_addr.readPointer();
                    if (vtable.compare(eB) >= 0 && vtable.compare(eEnd) < 0) {
                        sample.vtable_at_c0 = "eng+0x" + vtable.sub(eB).toString(16);
                    } else {
                        sample.vtable_at_c0 = vtable.toString();
                    }
                } catch(e) { sample.vtable_at_c0 = "?"; }
                
                // Read what ctx+0xE0 points to (first 8 bytes = vtable of source obj)
                if (!ctx_e0_val.isNull()) {
                    try {
                        var src_vtable = ctx_e0_val.readPointer();
                        if (src_vtable.compare(eB) >= 0 && src_vtable.compare(eEnd) < 0) {
                            sample.source_obj_vtable = "eng+0x" + src_vtable.sub(eB).toString(16);
                        } else {
                            sample.source_obj_vtable = src_vtable.toString();
                        }
                    } catch(e) { sample.source_obj_vtable = "?"; }
                }
                
            } catch(e) {
                sample.error = e.message;
            }
            
            samples.push(sample);
            send({t:"SAMPLE", s:sample});
            
            if (workerMallocCount >= 100) {
                done = true;
            }
        }
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getsamples: function() { return samples; }
};
