"use strict";
// Trace calls to 0x8d824 ("store to bss_8228") during Activate.
// Capture: who called it (x30), what data it stores (x0 struct fields).
// 
// 0x8d824 arg: x0 = struct with:
//   [+0x00] = vtable or type marker
//   [+0x08] = source data pointer
//   [+0x10] = size
//
// Safe approach: hook via Stalker on Worker Thread (where 0x8d824 runs)

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
var results = [];

function pOff(v) {
    try {
        if (v.compare(eB) >= 0 && v.compare(eEnd) < 0) return "eng+0x" + v.sub(eB).toString(16);
        if (v.isNull()) return "NULL";
    } catch(e) {} return v.toString();
}

function hexStr(ptr, n) {
    try {
        var b = new Uint8Array(ptr.readByteArray(n));
        var s = ""; for (var i = 0; i < b.length; i++) s += ("0"+b[i].toString(16)).slice(-2);
        return s;
    } catch(e) { return "err"; }
}

function asciiStr(ptr, n) {
    try {
        var b = new Uint8Array(ptr.readByteArray(n));
        var s = ""; for (var i = 0; i < b.length; i++) {
            var c = b[i];
            if (c >= 32 && c < 127) s += String.fromCharCode(c);
            else if (c === 0) break;
            else s += ".";
        }
        return s;
    } catch(e) { return "err"; }
}

send({t:"ready"});

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

// Hook on CALLER THREAD (same thread that does key_engine + malloc burst)
Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (captured || !activated) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        // Start Stalker on THIS thread (caller thread where key_engine runs)
        captured = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        var target = eB.add(0x8d824);
        
        Stalker.follow(tid, {
            events: {compile:true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    if (instr.address.equals(target)) {
                        iterator.putCallout(function(ctx) {
                            var x0 = ctx.x0; // arg struct
                            
                            var result = {
                                ts: Date.now(),
                                caller_x30: "?"
                            }; 
                            try { result.caller_x30 = pOff(ctx.x30 || ptr(0)); } catch(e) {}
                            
                            // Read arg struct fields
                            try {
                                var field0 = x0.readPointer();
                                var field8 = x0.add(8).readPointer();
                                var field10 = x0.add(0x10).readPointer();
                                
                                result.struct_0 = pOff(field0);
                                result.struct_8_dataPtr = field8.toString();
                                result.struct_10_size = field10.toInt32();
                                
                                var readLen = Math.min(field10.toInt32(), 80);
                                if (readLen > 0 && readLen < 1000) {
                                    result.data_hex = hexStr(field8, readLen);
                                    result.data_ascii = asciiStr(field8, readLen);
                                }
                            } catch(e) {
                                result.read_err = e.message;
                            }
                            
                            results.push(result);
                            send({t:"STORE", result:result});
                        });
                    }
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        try { Stalker.invalidate(tid, target); } catch(e) {}
        
        setTimeout(function() {
            try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
            send({t:"DONE", total:results.length, results:results});
        }, 4000);
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresults: function() { return results; }
};
