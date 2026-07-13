"use strict";
// Prove: read [sp+0x210] as pointer, then read what it points to.
// At case 7 entry (0xaa1a0), sp+0x210 should be a std::string-like object.
// Field layout guess: [sp+0x210]=data_ptr, [sp+0x218]=size/end, [sp+0x220]=capacity
// We read ALL of these and dump the pointed-to buffer content.

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var _malloc = libc.findExportByName("malloc");
var wrapper_ra = eB.add(0x800290);
var activated = false, stalking = false, done = false;
var result = null;

send({t:"ready"});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        stalking = true;
        var tid = Process.getCurrentThreadId();
        var target = eB.add(0xaa1a0);
        Stalker.follow(tid, {
            events:{compile:true},
            transform: function(iter) {
                var ins = iter.next();
                while (ins !== null) {
                    if (ins.address.equals(target) && !done) {
                        iter.putCallout(function(ctx) {
                            if (done) return;
                            done = true;
                            var sp = ctx.sp;
                            result = {};
                            
                            // Read sp+0x210 area (3 fields of 8 bytes each)
                            try {
                                var field0 = sp.add(0x210).readPointer(); // [sp+0x210]
                                var field1 = sp.add(0x218).readPointer(); // [sp+0x218]
                                var field2 = sp.add(0x220).readPointer(); // [sp+0x220]
                                
                                result.sp_210 = field0.toString();
                                result.sp_218 = field1.toString();
                                result.sp_220 = field2.toString();
                                
                                // Interpret field0 as a pointer and read its content
                                if (!field0.isNull() && field0.compare(ptr(0x1000)) > 0) {
                                    // Read up to 16 bytes from what field0 points to
                                    try {
                                        var buf = field0.readByteArray(16);
                                        var arr = new Uint8Array(buf);
                                        var hex = "", ascii = "";
                                        for (var i = 0; i < arr.length; i++) {
                                            hex += ("0"+arr[i].toString(16)).slice(-2);
                                            ascii += (arr[i]>=32&&arr[i]<127)?String.fromCharCode(arr[i]):".";
                                        }
                                        result.deref_hex = hex;
                                        result.deref_ascii = ascii;
                                    } catch(e) {
                                        result.deref_err = e.message;
                                    }
                                }
                                
                                // Also try: maybe sp+0x210 IS the inline buffer (SSO)
                                // Read sp+0x210 raw bytes directly
                                var rawBuf = sp.add(0x210).readByteArray(24);
                                var rawArr = new Uint8Array(rawBuf);
                                var rawHex = "", rawAscii = "";
                                for (var i = 0; i < rawArr.length; i++) {
                                    rawHex += ("0"+rawArr[i].toString(16)).slice(-2);
                                    rawAscii += (rawArr[i]>=32&&rawArr[i]<127)?String.fromCharCode(rawArr[i]):".";
                                }
                                result.raw_at_sp210 = rawHex;
                                result.raw_ascii = rawAscii;
                                
                            } catch(e) {
                                result.error = e.message;
                            }
                            
                            send({t:"RESULT", result:result});
                        });
                    }
                    iter.keep();
                    ins = iter.next();
                }
            }
        });
        try { Stalker.invalidate(tid, target); } catch(e) {}
        setTimeout(function() { try{Stalker.unfollow(tid);Stalker.flush();}catch(e){} }, 3000);
    }
});

rpc.exports = { arm: function(){activated=true; return "ok";}, getresult: function(){return result;} };
