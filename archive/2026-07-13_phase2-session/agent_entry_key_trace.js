"use strict";
// Capture stack state at case 7 entry (0xaa1a0) to identify Entry Key location
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
                            var fields = {};
                            // Read stack fields in range of interest
                            for (var off = 0x140; off <= 0x220; off += 8) {
                                try {
                                    var v = sp.add(off).readPointer();
                                    if (v.compare(ptr(0x10000)) < 0) {
                                        fields["sp+0x"+off.toString(16)] = "int:" + v.toInt32();
                                    } else if (v.compare(eB)>=0 && v.compare(eB.add(eng.size))<0) {
                                        fields["sp+0x"+off.toString(16)] = "eng+0x"+v.sub(eB).toString(16);
                                    } else {
                                        fields["sp+0x"+off.toString(16)] = v.toString();
                                    }
                                } catch(e) { fields["sp+0x"+off.toString(16)] = "err"; }
                            }
                            // Try reading sp+0x210 area as ASCII (possible code string)
                            try {
                                var buf = sp.add(0x210).readByteArray(32);
                                var arr = new Uint8Array(buf);
                                var hex = "", ascii = "";
                                for (var i=0;i<arr.length;i++) {
                                    hex += ("0"+arr[i].toString(16)).slice(-2);
                                    ascii += (arr[i]>=32&&arr[i]<127)?String.fromCharCode(arr[i]):".";
                                }
                                fields["sp+0x210_hex"] = hex;
                                fields["sp+0x210_ascii"] = ascii;
                            } catch(e) {}
                            // sp+0x148 is loaded into x20 and compared with 0x100
                            try {
                                var v148 = sp.add(0x148).readPointer();
                                fields["sp+0x148_raw"] = v148.toString();
                                fields["sp+0x148_int"] = v148.toInt32();
                            } catch(e) {}
                            result = fields;
                            send({t:"CAP", fields:fields});
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
