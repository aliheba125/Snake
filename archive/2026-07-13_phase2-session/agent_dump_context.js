"use strict";
// Dump the ActivationContext struct (x0 at FUN_0017e148 entry)
// by reading it from the Worker Thread during malloc.
// x24 = x0 at entry (saved by prologue, confirmed by mov x24,x0 at 0x7e170)
// We read x24 from Interceptor context (callee-saved, preserved across calls)

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

send({t:"ready"});

Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        if (sr.sub(eB).toInt32() === 0x81db8) {
            callerTid = Process.getCurrentThreadId();
        }
    }
});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (!activated || captured || callerTid === null) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        if (Process.getCurrentThreadId() === callerTid) return;
        
        captured = true;
        var myTid = Process.getCurrentThreadId();
        
        // x24 = x0 at FUN_0017e148 entry (callee-saved, preserved)
        var ctxPtr = this.context.x24;
        
        send({t:"WORKER", tid:myTid, ctxPtr:ctxPtr.toString()});
        
        // Dump the ActivationContext struct
        var dumpSize = 0x400; // 1024 bytes
        var dump = {};
        
        try {
            var raw = ctxPtr.readByteArray(dumpSize);
            if (raw) {
                var bytes = new Uint8Array(raw);
                // Convert to hex strings in 8-byte chunks (pointer-sized)
                var fields = [];
                for (var i = 0; i < dumpSize; i += 8) {
                    var val = ctxPtr.add(i).readPointer();
                    var hex = val.toString();
                    var inEng = val.compare(eB) >= 0 && val.compare(eEnd) < 0;
                    var field = {
                        off: "0x" + i.toString(16),
                        val: hex,
                        type: "?"
                    };
                    if (inEng) {
                        field.type = "eng_ptr";
                        field.engOff = "0x" + val.sub(eB).toString(16);
                    } else if (val.compare(ptr(0)) === 0) {
                        field.type = "null";
                    } else if (val.compare(ptr(0x100000)) < 0) {
                        field.type = "small_int";
                        field.intVal = val.toInt32();
                    } else if (hex.indexOf("b400") === 2 || hex.indexOf("b400") === 0) {
                        field.type = "heap_ptr";
                    }
                    // Only include non-zero fields
                    if (val.compare(ptr(0)) !== 0) {
                        fields.push(field);
                    }
                }
                dump.fields = fields;
                dump.fieldCount = fields.length;
                
                // Special focus on +0x348 area
                dump.at_0x348 = {};
                for (var off = 0x340; off <= 0x360; off += 8) {
                    try {
                        var v = ctxPtr.add(off).readPointer();
                        dump.at_0x348["0x" + off.toString(16)] = v.toString();
                    } catch(e) {}
                }
                
                // Also read first 64 bytes as hex string for pattern analysis
                var first64 = "";
                for (var j = 0; j < 64; j++) {
                    first64 += ("0" + bytes[j].toString(16)).slice(-2);
                }
                dump.first64hex = first64;
                
                // Read bytes around 0x348
                var around348 = "";
                for (var j = 0x340; j < 0x370 && j < dumpSize; j++) {
                    around348 += ("0" + bytes[j].toString(16)).slice(-2);
                }
                dump.hex_0x340_0x370 = around348;
            }
        } catch(e) {
            dump.error = e.message;
        }
        
        result = {
            ts: Date.now(),
            workerTid: myTid,
            ctxPtr: ctxPtr.toString(),
            dump: dump
        };
        
        send({t:"DUMP", result:result});
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresult: function() { return result; }
};
