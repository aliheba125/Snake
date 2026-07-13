"use strict";
// Capture x2 at key_engine (0x81cb8) entry — this is the code struct.
// Read its content to prove it contains the Entry Key.
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
        var target = eB.add(0x81cb8);
        Stalker.follow(tid, {
            events:{compile:true},
            transform: function(iter) {
                var ins = iter.next();
                while (ins !== null) {
                    if (ins.address.equals(target) && !done) {
                        iter.putCallout(function(ctx) {
                            if (done) return;
                            done = true;
                            var x2 = ctx.x2;
                            result = {x2: x2.toString()};
                            try {
                                var dataPtr = x2.readPointer();
                                var field1 = x2.add(8).readPointer();
                                result.x2_0 = dataPtr.toString();
                                result.x2_8 = field1.toString();
                                if (!dataPtr.isNull() && dataPtr.compare(ptr(0x1000)) > 0) {
                                    var buf = dataPtr.readByteArray(16);
                                    var arr = new Uint8Array(buf);
                                    var hex = "", ascii = "";
                                    for (var i = 0; i < arr.length; i++) {
                                        hex += ("0"+arr[i].toString(16)).slice(-2);
                                        ascii += (arr[i]>=32&&arr[i]<127)?String.fromCharCode(arr[i]):".";
                                    }
                                    result.content_hex = hex;
                                    result.content_ascii = ascii;
                                }
                            } catch(e) { result.err = e.message; }
                            send({t:"R", result:result});
                        });
                    }
                    iter.keep();
                    ins = iter.next();
                }
            }
        });
        try{Stalker.invalidate(tid, target);}catch(e){}
        setTimeout(function(){try{Stalker.unfollow(tid);Stalker.flush();}catch(e){}},3000);
    }
});
rpc.exports = {arm: function(){activated=true; return "ok";}, getresult: function(){return result;}};
