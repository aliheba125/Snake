"use strict";
var t0 = Date.now();
function TS() { return Date.now() - t0; }
var eng, libc;
var activated = false, done = false;
var captures = [];

function init() {
    eng = Process.findModuleByName("libengine.so");
    libc = Process.getModuleByName("libc.so");
    if (!eng || !libc) { setTimeout(init, 10); return; }
    var eB = eng.base;
    var eEnd = eng.base.add(eng.size);
    var _pthread_create = libc.findExportByName("pthread_create");
    var _malloc = libc.findExportByName("malloc");
    var wrapper_ra = eB.add(0x800290);
    var target_thread_func = eB.add(0x81db8);
    var target_fn = eB.add(0x7e148);
    send({t:"ready", ts:TS()});
    Interceptor.attach(_pthread_create, {
        onEnter: function(args) {
            if (!activated || done) return;
            var start_routine = args[2];
            var inEng = start_routine.compare(eB) >= 0 && start_routine.compare(eEnd) < 0;
            if (inEng) {
                var offset = "0x" + start_routine.sub(eB).toString(16);
                var isTarget = start_routine.equals(target_thread_func);
                var c = {ts:TS(), ev:"pthread", routine:offset, is81db8:isTarget, callerTid:Process.getCurrentThreadId()};
                captures.push(c);
                send({t:"PTHREAD", c:c});
            }
        }
    });
    var mallocCount = 0;
    var activationTid = null;
    Interceptor.attach(_malloc, {
        onEnter: function(args) {
            if (!activated || done) return;
            if (!this.returnAddress.equals(wrapper_ra)) return;
            mallocCount++;
            if (mallocCount === 1) {
                activationTid = Process.getCurrentThreadId();
                send({t:"ACT_THREAD", tid:activationTid, ts:TS()});
            }
            if (mallocCount === 30 && !done) {
                var threads = Process.enumerateThreads();
                send({t:"THREADS", count:threads.length, ts:TS()});
                threads.forEach(function(thread) {
                    if (thread.id === activationTid) return;
                    try {
                        Stalker.follow(thread.id, {
                            transform: function(iterator) {
                                var instr = iterator.next();
                                while (instr !== null) {
                                    if (instr.address.equals(target_fn)) {
                                        iterator.putCallout(function(ctx) {
                                            if (done) return;
                                            done = true;
                                            var c = {ts:TS(), ev:"HIT_0x7e148", tid:Process.getCurrentThreadId(), isNew:(Process.getCurrentThreadId() !== activationTid)};
                                            captures.push(c);
                                            send({t:"FN_HIT", c:c});
                                        });
                                    }
                                    iterator.keep();
                                    instr = iterator.next();
                                }
                            }
                        });
                        setTimeout(function() { try { Stalker.unfollow(thread.id); } catch(e) {} }, 3000);
                    } catch(e) {}
                });
            }
        }
    });
}
init();
rpc.exports = { setact: function() { activated = true; return TS(); }, getcaptures: function() { return captures; } };
