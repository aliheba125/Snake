"use strict";
// Lightweight Interceptor-based worker probe.
// Instead of Stalker (too expensive on all threads), hook candidate points directly.
// Hooks are installed only AFTER arm() is called, avoiding startup interference.
var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _pc = libc.findExportByName("pthread_create");
var activated = false;
var attached = false;
var hits = [];

// Candidate offsets — proven-relevant worker addresses from prior analysis
var CANDIDATES = [
    { off: 0x81db8, tag: "start_routine" },
    { off: 0x7e148, tag: "FUN_0x7e148" },
    { off: 0x7e19c, tag: "tbz_decision" },   // tbz w0,0,0x7f5f8
    { off: 0x7d5f4, tag: "sub_0x7d5f4" },
    { off: 0x7b060, tag: "sub_0x7b060" },
    { off: 0x7f5f8, tag: "fail_target" },
    { off: 0x81cb8, tag: "key_engine_entry" }
];

send({t:"ready", engBase:eB.toString(), engSize:eng.size, candCount:CANDIDATES.length});

// Also hook pthread_create so we can log when worker starts
Interceptor.attach(_pc, {
    onEnter: function(args){
        if (!activated) return;
        var sr = args[2];
        if (sr.compare(eB) < 0 || sr.compare(eEnd) >= 0) return;
        var off = sr.sub(eB).toInt32();
        send({t:"PC_ENTER", routine:"0x"+off.toString(16), callerTid:Process.getCurrentThreadId()});
    }
});

function installCandidates() {
    if (attached) return;
    attached = true;
    var installed = [];
    CANDIDATES.forEach(function(c){
        try {
            Interceptor.attach(eB.add(c.off), {
                onEnter: function(args) {
                    var rec = {
                        off: "0x"+c.off.toString(16),
                        tag: c.tag,
                        tid: Process.getCurrentThreadId(),
                        x0: this.context.x0.toString(),
                        x1: this.context.x1.toString(),
                        x2: this.context.x2.toString(),
                        x19: this.context.x19.toString(),
                        x20: this.context.x20.toString(),
                        x21: this.context.x21.toString(),
                        lr: this.context.lr.toString()
                    };
                    // If x0 is a pointer within engine, report offset
                    try {
                        var x0 = this.context.x0;
                        if (x0.compare(eB) >= 0 && x0.compare(eEnd) < 0) {
                            rec.x0_eng_off = "0x"+x0.sub(eB).toString(16);
                        }
                    } catch(e){}
                    hits.push(rec);
                    send({t:"HIT", rec:rec});
                },
                onLeave: function(retval) {
                    // Also capture return value for functions that return status
                    var ret = {
                        off: "0x"+c.off.toString(16),
                        tag: c.tag + "_RET",
                        tid: Process.getCurrentThreadId(),
                        w0: (retval.and(0xffffffff)).toString(16),
                        x0: retval.toString()
                    };
                    hits.push(ret);
                    send({t:"RET", rec:ret});
                }
            });
            installed.push(c.tag);
        } catch(e) {
            send({t:"attach_err", off:"0x"+c.off.toString(16), tag:c.tag, e:e.toString()});
        }
    });
    send({t:"HOOKS_INSTALLED", installed:installed, count:installed.length});
}

rpc.exports = {
    arm: function(){
        activated = true;
        installCandidates();
        return Date.now();
    },
    getresults: function(){
        return { hits: hits, count: hits.length };
    }
};
