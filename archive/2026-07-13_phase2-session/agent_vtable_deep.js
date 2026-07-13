"use strict";
// Deep dive: read the vtable chain from ActivationContext
// Follow: ctx+0xC0 → [+0x20] → object → [0] → vtable → [4*8] or [5*8] → function
// And:    ctx+0xF0 → [+0x20] → object → [0] → vtable → [4*8] or [5*8] → function

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

function offStr(v) {
    try {
        if (v.compare(eB) >= 0 && v.compare(eEnd) < 0)
            return "eng+0x" + v.sub(eB).toString(16);
    } catch(e) {}
    return v.toString();
}

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
        var ctxPtr = this.context.x24;
        
        result = {ts:Date.now(), ctx:ctxPtr.toString()};
        
        // Read vtable chain 1: ctx+0xC0
        try {
            var vt1_base = ctxPtr.add(0xC0);
            var vt1_obj_ptr_loc = vt1_base.add(0x20); // [ctx+0xE0]
            var vt1_obj = vt1_obj_ptr_loc.readPointer();
            var vt1_vtable = vt1_obj.readPointer(); // first ptr in object = vtable
            var vt1_func4 = vt1_vtable.add(4*8).readPointer(); // index 4
            var vt1_func5 = vt1_vtable.add(5*8).readPointer(); // index 5
            
            result.chain1 = {
                base: offStr(vt1_base),
                obj_ptr_at: "ctx+0xE0",
                obj: vt1_obj.toString(),
                vtable: offStr(vt1_vtable),
                func_idx4: offStr(vt1_func4),
                func_idx5: offStr(vt1_func5)
            };
            
            // Read first 8 vtable entries
            result.chain1.vtable_entries = [];
            for (var i = 0; i < 8; i++) {
                var entry = vt1_vtable.add(i*8).readPointer();
                result.chain1.vtable_entries.push({idx:i, val:offStr(entry)});
            }
        } catch(e) { result.chain1_err = e.message; }
        
        // Read vtable chain 2: ctx+0xF0
        try {
            var vt2_base = ctxPtr.add(0xF0);
            var vt2_obj_ptr_loc = vt2_base.add(0x20); // [ctx+0x110]
            var vt2_obj = vt2_obj_ptr_loc.readPointer();
            var vt2_vtable = vt2_obj.readPointer();
            var vt2_func4 = vt2_vtable.add(4*8).readPointer();
            var vt2_func5 = vt2_vtable.add(5*8).readPointer();
            
            result.chain2 = {
                base: offStr(vt2_base),
                obj_ptr_at: "ctx+0x110",
                obj: vt2_obj.toString(),
                vtable: offStr(vt2_vtable),
                func_idx4: offStr(vt2_func4),
                func_idx5: offStr(vt2_func5)
            };
            
            result.chain2.vtable_entries = [];
            for (var i = 0; i < 8; i++) {
                var entry = vt2_vtable.add(i*8).readPointer();
                result.chain2.vtable_entries.push({idx:i, val:offStr(entry)});
            }
        } catch(e) { result.chain2_err = e.message; }
        
        // Also read the previously-captured blr x8 targets for comparison
        // From previous session: blr x8 at 0x7d3d50 → 0x7d7780 (ret stub)
        // Let's check if that matches our vtable reads
        result.note = "Compare func_idx4/5 with known blr x8 targets: 0x7d7780, 0x7d3f8c, 0x7d4004, 0x7d3ff0";
        
        send({t:"VTABLE", result:result});
    }
});

rpc.exports = {
    arm: function() { activated = true; return "armed"; },
    getresult: function() { return result; }
};
