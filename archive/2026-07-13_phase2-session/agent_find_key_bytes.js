"use strict";
// Find "135790" (hex: 313335373930) in Worker Thread memory
// Scan: ActivationContext (x24) + nearby heap + stack
// This proves WHERE the Entry Key bytes live during activation processing.

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

// "135790" as ASCII bytes
var KEY_BYTES = [0x31, 0x33, 0x35, 0x37, 0x39, 0x30]; // "135790"

send({t:"ready"});

Interceptor.attach(_pthread_create, {
    onEnter: function(args) {
        if (!activated || captured) return;
        var sr = args[2];
        if (sr.compare(eB) >= 0 && sr.compare(eEnd) < 0) {
            if (sr.sub(eB).toInt32() === 0x81db8) {
                callerTid = Process.getCurrentThreadId();
            }
        }
    }
});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (captured || !activated || callerTid === null) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        if (Process.getCurrentThreadId() === callerTid) return;
        
        // Worker thread!
        captured = true;
        send({t:"WORKER"});
        
        var ctx = this.context.x24; // ActivationContext pointer
        var sp = this.context.sp;
        var findings = [];
        
        // Scan 1: ActivationContext (first 0x400 bytes)
        try {
            var ctxBuf = new Uint8Array(ctx.readByteArray(0x400));
            for (var i = 0; i <= ctxBuf.length - 6; i++) {
                if (ctxBuf[i]==KEY_BYTES[0] && ctxBuf[i+1]==KEY_BYTES[1] && 
                    ctxBuf[i+2]==KEY_BYTES[2] && ctxBuf[i+3]==KEY_BYTES[3] &&
                    ctxBuf[i+4]==KEY_BYTES[4] && ctxBuf[i+5]==KEY_BYTES[5]) {
                    var ctxHex = "";
                    for (var j=Math.max(0,i-4);j<Math.min(ctxBuf.length,i+12);j++) 
                        ctxHex += ("0"+ctxBuf[j].toString(16)).slice(-2);
                    findings.push({where:"ctx+0x"+i.toString(16), ctx_offset:"0x"+i.toString(16), context_hex:ctxHex});
                    send({t:"FOUND", where:"ActivationContext+0x"+i.toString(16), ctx_offset:"0x"+i.toString(16), context_hex:ctxHex});
                }
            }
        } catch(e) {}
        
        // Scan 2: Stack (sp to sp+0x2000)
        try {
            var stackBuf = new Uint8Array(sp.readByteArray(0x2000));
            for (var i = 0; i <= stackBuf.length - 6; i++) {
                if (stackBuf[i]==KEY_BYTES[0] && stackBuf[i+1]==KEY_BYTES[1] && 
                    stackBuf[i+2]==KEY_BYTES[2] && stackBuf[i+3]==KEY_BYTES[3] &&
                    stackBuf[i+4]==KEY_BYTES[4] && stackBuf[i+5]==KEY_BYTES[5]) {
                    var stHex = "";
                    for (var j=Math.max(0,i-4);j<Math.min(stackBuf.length,i+12);j++) 
                        stHex += ("0"+stackBuf[j].toString(16)).slice(-2);
                    findings.push({where:"stack+0x"+i.toString(16), context_hex:stHex});
                    send({t:"FOUND", where:"stack(sp)+0x"+i.toString(16), ctx_offset:"N/A", context_hex:stHex});
                }
            }
        } catch(e) {}
        
        // Scan 3: Heap pointers in ctx (follow pointers and scan their content)
        try {
            for (var pOff = 0; pOff < 0x400; pOff += 8) {
                var ptr = ctx.add(pOff).readPointer();
                if (ptr.isNull()) continue;
                if (ptr.compare(ptr("0x1000")) < 0) continue;
                try {
                    var heapBuf = new Uint8Array(ptr.readByteArray(64));
                    for (var i = 0; i <= heapBuf.length - 6; i++) {
                        if (heapBuf[i]==KEY_BYTES[0] && heapBuf[i+1]==KEY_BYTES[1] && 
                            heapBuf[i+2]==KEY_BYTES[2] && heapBuf[i+3]==KEY_BYTES[3] &&
                            heapBuf[i+4]==KEY_BYTES[4] && heapBuf[i+5]==KEY_BYTES[5]) {
                            var hHex = "";
                            for (var j=Math.max(0,i-4);j<Math.min(heapBuf.length,i+12);j++) 
                                hHex += ("0"+heapBuf[j].toString(16)).slice(-2);
                            findings.push({where:"[ctx+0x"+pOff.toString(16)+"]+0x"+i.toString(16), context_hex:hHex});
                            send({t:"FOUND", where:"heap_via_ctx+0x"+pOff.toString(16)+"_offset_0x"+i.toString(16), ctx_offset:"indirect", context_hex:hHex});
                        }
                    }
                } catch(e2) {}
            }
        } catch(e) {}
        
        send({t:"SCAN_DONE", found:findings.length, details:findings});
    }
});

rpc.exports = { arm: function() { activated = true; return "ok"; } };
