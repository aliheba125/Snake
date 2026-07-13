"use strict";
var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _pc = libc.findExportByName("pthread_create");
var activated = false;
var caps = [];
var workerTid = null;

send({t:"ready", engBase:eB.toString()});

// Hook pthread_create to catch the new thread
Interceptor.attach(_pc, {
    onEnter: function(args) {
        if (!activated) return;
        var sr = args[2];
        if (sr.compare(eB) >= 0 && sr.compare(eEnd) < 0) {
            var off = sr.sub(eB).toInt32();
            if (off === 0x81db8) {
                // This is our target! Save the thread_ptr to read tid later
                this._threadPtr = args[0];
                this._arg = args[3];
                send({t:"PC_ENTER", routine:"0x81db8", callerTid:Process.getCurrentThreadId(), arg:args[3].toString()});
            }
        }
    },
    onLeave: function(retval) {
        if (this._threadPtr && retval.toInt32() === 0) {
            // Thread created successfully. Read the new thread's pthread_t
            // We need to follow it. The thread is now running at 0x81db8.
            // Strategy: use Stalker on the new thread.
            // Problem: we don't have the kernel tid yet from pthread_t.
            // Alternative: enumerate threads and find the new one.
            send({t:"PC_CREATED", retval:retval.toInt32()});
            
            // Give the thread a moment to start, then enumerate
            setTimeout(function() {
                var target_fn = eB.add(0x7e148);
                var threads = Process.enumerateThreads();
                var callerTid = Process.getCurrentThreadId();
                
                threads.forEach(function(thread) {
                    if (thread.id === callerTid) return;
                    try {
                        Stalker.follow(thread.id, {
                            transform: function(iterator) {
                                var instr = iterator.next();
                                while (instr !== null) {
                                    if (instr.address.equals(target_fn)) {
                                        iterator.putCallout(function(ctx) {
                                            if (workerTid !== null) return; // already captured
                                            workerTid = Process.getCurrentThreadId();
                                            var c = {
                                                ts: Date.now(),
                                                ev: "FN_0x7e148_ENTRY",
                                                tid: workerTid,
                                                isWorker: true,
                                                x0: ctx.x0.toString(),
                                                x1: ctx.x1.toString(),
                                                x19: ctx.x19.toString(),
                                                x20: ctx.x20.toString(),
                                                x21: ctx.x21.toString(),
                                                x22: ctx.x22.toString(),
                                                x24: ctx.x24.toString(),
                                                sp: ctx.sp.toString()
                                            };
                                            // Read x0 as offset from engBase if possible
                                            try {
                                                var x0v = ctx.x0;
                                                if (x0v.compare(eB) >= 0 && x0v.compare(eEnd) < 0) {
                                                    c.x0_eng_offset = "0x" + x0v.sub(eB).toString(16);
                                                }
                                            } catch(e) {}
                                            caps.push(c);
                                            send({t:"WORKER_ENTRY", c:c});
                                        });
                                    }
                                    // Also capture first few BL calls from within 0x7e148
                                    var addr = instr.address;
                                    var addrOff = addr.sub(eB).toInt32();
                                    // 0x7e148 to 0x7e200: first ~50 instrs of the function
                                    if (addrOff >= 0x7e17c && addrOff <= 0x7e1a0) {
                                        if (instr.mnemonic === "bl") {
                                            iterator.putCallout(function(ctx) {
                                                var c2 = {ts:Date.now(), ev:"BL_inside_7e148", pc:"0x"+ctx.pc.sub(eB).toString(16), x0:ctx.x0.toString(), x30_off:"0x"+ctx.x30.sub(eB).toString(16)};
                                                caps.push(c2);
                                                send({t:"BL", c:c2});
                                            });
                                        }
                                    }
                                    iterator.keep();
                                    instr = iterator.next();
                                }
                            }
                        });
                        setTimeout(function() { try { Stalker.unfollow(thread.id); } catch(e) {} }, 4000);
                    } catch(e) {}
                });
            }, 50); // 50ms delay for thread to start
        }
    }
});

rpc.exports = {
    arm: function() { activated = true; return Date.now(); },
    getcaps: function() { return caps; }
};
