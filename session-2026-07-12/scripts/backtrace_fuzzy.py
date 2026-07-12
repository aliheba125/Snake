#!/usr/bin/env python3
"""
Use Backtracer.FUZZY (heuristic stack walk) at the two memcpy sites.
Also manually walk x29 (frame pointer) chain to get parent frames.
Focus on identifying the FUNCTION containing 0x801d80 (URL prefix writer)
and 0x5b7f0 (URL final read).
"""
import frida, json, time, sys, subprocess

SCRIPT = r"""
'use strict';
var t0 = Date.now();
var TS = function() { return Date.now() - t0; };
send({t:"boot", ts:0, pid:Process.id});

var libc = Process.getModuleByName("libc.so");
var moduleList = [];
function updateModules() { moduleList = Process.enumerateModules(); return moduleList; }
function moduleOfAddr(addr) {
    for (var i = 0; i < moduleList.length; i++) {
        var b = moduleList[i].base;
        var e = b.add(moduleList[i].size);
        if (addr.compare(b) >= 0 && addr.compare(e) < 0) return moduleList[i].name + "+" + addr.sub(b).toInt32().toString(16);
    }
    return addr.toString();
}
function bt_acc(ctx) {
    try { return Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 24).map(function(a){ return moduleOfAddr(a); }); } catch(e) { return []; }
}
function bt_fuzzy(ctx) {
    try { return Thread.backtrace(ctx, Backtracer.FUZZY).slice(0, 40).map(function(a){ return moduleOfAddr(a); }); } catch(e) { return []; }
}
function walk_fp(fp_ptr) {
    // Manually walk the AArch64 frame pointer chain
    var frames = [];
    var cur = fp_ptr;
    for (var i = 0; i < 30; i++) {
        try {
            if (cur.isNull() || cur.compare(ptr(0x1000)) < 0) break;
            // [fp+0] = saved fp, [fp+8] = saved lr
            var saved_lr = cur.add(8).readPointer();
            var saved_fp = cur.readPointer();
            frames.push(moduleOfAddr(saved_lr));
            if (saved_fp.equals(cur)) break;
            cur = saved_fp;
        } catch(e) { break; }
    }
    return frames;
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _hook_installed = false;
function installHooks(engine, flutter) {
    if (_hook_installed) return;
    var _memcpy = libc.findExportByName("memcpy");
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    Interceptor.attach(_memcpy, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            var is_pref = ra.equals(target_ra_prefix);
            var is_full = ra.equals(target_ra_full);
            if (!is_pref && !is_full) return;
            this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
            this.is_pref = is_pref; this.is_full = is_full;

            // Read all registers explicitly
            this.regs = {};
            var reg_names = ['x0','x1','x2','x3','x4','x5','x6','x7','x8','x9','x10','x11','x12',
                             'x13','x14','x15','x16','x17','x18','x19','x20','x21','x22','x23','x24','x25','x26','x27','x28','fp','lr','sp','pc'];
            for (var i = 0; i < reg_names.length; i++) {
                try { this.regs[reg_names[i]] = this.context[reg_names[i]].toString(); } catch(e){}
            }

            this.bt_acc = bt_acc(this.context);
            this.bt_fuzzy = bt_fuzzy(this.context);
            try { this.bt_fp = walk_fp(this.context.fp); } catch(e){ this.bt_fp = []; }

            this.tid = Process.getCurrentThreadId();

            // Dump stack contents (top 256 bytes)
            var stack_hex = "";
            try { stack_hex = hexify(this.context.sp.readByteArray(256), 256); } catch(e){}
            this.stack_hex = stack_hex;
        },
        onLeave: function(rv) {
            if (!this.is_pref && !this.is_full) return;
            var src_hex = ""; try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200))); } catch(e){}
            var src_str = ""; try { src_str = this.src.readCString(Math.min(this.sz, 300)); } catch(e){}
            send({t: this.is_pref ? "PREFIX_WRITE" : "FULL_READ",
                  sz:this.sz, tid:this.tid, dst:this.dst.toString(), src:this.src.toString(),
                  src_str:src_str, src_hex:src_hex,
                  regs:this.regs, stack_hex:this.stack_hex.substring(0,400),
                  bt_acc:this.bt_acc, bt_fuzzy:this.bt_fuzzy, bt_fp:this.bt_fp, ts:TS()});
        }
    });
    _hook_installed = true;
    send({t:"hooks_ready", ts:TS()});

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        send({t:"Z_SINK_HIT", data:s.substring(0,500), ts:TS()});
                        return;
                    }
                } catch(e){}
            }
        }
    });
}

var _modules_ready = false;
function tryInit() {
    if (_modules_ready) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    if (!flutter || !engine) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS(), engine:engine.base.toString()});
    installHooks(engine, flutter);
}
setTimeout(tryInit, 30);
"""

results = []
first_prefix = None
first_full = None
def on_msg(msg, data):
    global first_prefix, first_full
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'PREFIX_WRITE' and first_prefix is None:
            first_prefix = p
            print(f"\n{'='*80}")
            print(f"*** FIRST PREFIX_WRITE @ +{p.get('ts',0)}ms tid={p.get('tid')} ***")
            print(f"  sz={p.get('sz')} dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:70]}")
            regs = p.get('regs', {})
            print(f"  Registers:")
            for r in ['x0','x1','x2','x19','x20','x21','x22','x23','x24','x25','x26','x27','x28','fp','lr','sp','pc']:
                print(f"    {r} = {regs.get(r)}")
            print(f"  BT ACCURATE ({len(p.get('bt_acc',[]))} frames):")
            for f in p.get('bt_acc', []): print(f"    {f}")
            print(f"  BT FUZZY ({len(p.get('bt_fuzzy',[]))} frames):")
            for f in p.get('bt_fuzzy', [])[:25]: print(f"    {f}")
            print(f"  BT FP-WALK ({len(p.get('bt_fp',[]))} frames):")
            for f in p.get('bt_fp', []): print(f"    {f}")
            print(f"  STACK[0:256]:")
            sh = p.get('stack_hex','')
            for i in range(0, min(256, len(sh)), 32): print(f"    +{i//2:03x}: {sh[i:i+32]}")
        elif t == 'FULL_READ' and first_full is None:
            first_full = p
            print(f"\n{'='*80}")
            print(f"*** FIRST FULL_READ @ +{p.get('ts',0)}ms tid={p.get('tid')} ***")
            print(f"  sz={p.get('sz')} dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:200]}")
            regs = p.get('regs', {})
            print(f"  Registers:")
            for r in ['x0','x1','x2','x19','x20','x21','x22','x23','x24','x25','x26','x27','x28','fp','lr','sp','pc']:
                print(f"    {r} = {regs.get(r)}")
            print(f"  BT ACCURATE ({len(p.get('bt_acc',[]))} frames):")
            for f in p.get('bt_acc', []): print(f"    {f}")
            print(f"  BT FUZZY ({len(p.get('bt_fuzzy',[]))} frames):")
            for f in p.get('bt_fuzzy', [])[:25]: print(f"    {f}")
            print(f"  BT FP-WALK ({len(p.get('bt_fp',[]))} frames):")
            for f in p.get('bt_fp', []): print(f"    {f}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] Z_SINK: {p.get('data','')[:250]}")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:250]}")
        sys.stdout.flush()

subprocess.run(["adb","-s","localhost:5555","shell","setprop","wrap.com.snake","LD_PRELOAD=/system/lib64/libskia_android.so"], timeout=5)
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=5)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=5)

t_start = time.time()
device = None
for i in range(90):
    time.sleep(0.15)
    try:
        d = frida.get_device_manager().add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs: device = d; print(f"[+{time.time()-t_start:.3f}s] Gadget PID {procs[0].pid}"); break
    except: pass
if not device: print("[!] no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
time.sleep(15)

with open("/tmp/backtrace_fuzzy.json", "w") as f: json.dump(results, f, indent=2, default=str)
print(f"\n[*] Events: {len(results)}")
session.detach()
