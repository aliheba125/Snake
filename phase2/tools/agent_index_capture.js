"use strict";
// Capture ALL vtable dispatch indices (w8 values) during Activate.
// Targets: all blr x8 sites in the dispatchers:
//   0x7d3d50 (dispatch1 - primary)
//   0x7d3d8c (dispatch1b - secondary)
//   0x7d3ddc (dispatch2 - primary)
//   0x7d3e18 (dispatch2b - secondary)
// 
// For each: capture w8 (index), x8 (function called), and context.
// Uses: malloc burst detection → Stalker.follow + invalidate

var eng = Process.findModuleByName("libengine.so");
var libc = Process.getModuleByName("libc.so");
var eB = eng.base;
var eEnd = eng.base.add(eng.size);
var _malloc = libc.findExportByName("malloc");
var wrapper_ra = eB.add(0x800290);

var activated = false;
var stalking = false;
var done = false;
var captures = [];

// All blr x8 sites in the dispatcher
var BLR_SITES = [
    {off: 0x7d3d50, name: "disp1_primary"},
    {off: 0x7d3d8c, name: "disp1_secondary"},
    {off: 0x7d3ddc, name: "disp2_primary"},
    {off: 0x7d3e18, name: "disp2_secondary"}
];

send({t:"ready", engBase:eB.toString()});

Interceptor.attach(_malloc, {
    onEnter: function(args) {
        if (done || !activated || stalking) return;
        if (!this.returnAddress.equals(wrapper_ra)) return;
        
        stalking = true;
        var tid = Process.getCurrentThreadId();
        send({t:"STALK", tid:tid});
        
        var targets = {};
        BLR_SITES.forEach(function(site) {
            targets[eB.add(site.off).toString()] = site.name;
        });
        
        Stalker.follow(tid, {
            events: {compile: true},
            transform: function(iterator) {
                var instr = iterator.next();
                while (instr !== null) {
                    var key = instr.address.toString();
                    if (key in targets) {
                        var label = targets[key];
                        iterator.putCallout(function(ctx) {
                            if (done) return;
                            var w8 = ctx.x8.toInt32() & 0xFF; // index is small
                            var x8_full = ctx.x8;
                            var x8_off = "?";
                            try {
                                if (x8_full.compare(eB) >= 0 && x8_full.compare(eEnd) < 0) {
                                    x8_off = "0x" + x8_full.sub(eB).toString(16);
                                }
                            } catch(e) {}
                            
                            // Also capture x0 (the object being dispatched on)
                            var x0_off = "?";
                            try {
                                var x0v = ctx.x0;
                                if (x0v.compare(eB) >= 0 && x0v.compare(eEnd) < 0) {
                                    x0_off = "0x" + x0v.sub(eB).toString(16);
                                }
                            } catch(e) {}
                            
                            var c = {
                                ts: Date.now(),
                                site: label,
                                w8_index: w8,
                                x8_target: x8_off,
                                x0: x0_off
                            };
                            captures.push(c);
                            send({t:"BLR", c:c});
                        });
                    }
                    iterator.keep();
                    instr = iterator.next();
                }
            }
        });
        
        // Invalidate all target pages
        BLR_SITES.forEach(function(site) {
            try { Stalker.invalidate(tid, eB.add(site.off)); } catch(e) {}
        });
        
        setTimeout(function() {
            done = true;
            try { Stalker.unfollow(tid); Stalker.flush(); } catch(e) {}
            send({t:"DONE", total:captures.length, captures:captures});
        }, 3000);
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getcaptures: function() { return captures; }
};
