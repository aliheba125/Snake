#!/usr/bin/env python3
"""
Deep backtrace + source content at both memcpy sites:
  - libengine+0x801d80 (URL prefix write)
  - libengine+0x5b7f0 (finished URL read out)

The source of the full memcpy IS the destination of the prefix memcpy
(same buffer). So the function containing 0x801d80 is the writer of the
hex chars too. Capture the FULL 16-frame stack at each site to identify
the parent function that owns the URL construction logic.

Do NOT speculate about mechanism — just record facts.
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
function bt(ctx) {
    try { return Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 20).map(function(a){
        return {addr:a.toString(), mod:moduleOfAddr(a)};
    }); }
    catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _hook_installed = false;
function installHooks(engine, flutter) {
    if (_hook_installed) return;
    var _memcpy = libc.findExportByName("memcpy");
    var _memmove = libc.findExportByName("memmove");
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    function mkhook(name) {
        return {
            onEnter: function(args) {
                var ra = this.returnAddress;
                var is_pref = ra.equals(target_ra_prefix);
                var is_full = ra.equals(target_ra_full);
                if (!is_pref && !is_full) return;
                this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
                this.is_pref = is_pref; this.is_full = is_full;
                this.bt = bt(this.context);
                this.tid = Process.getCurrentThreadId();
                this.stack_reg = this.context.sp.toString();
                this.fp_reg = this.context.x29.toString();
                // Read regs likely to hold this-pointer / URL builder state
                this.x0 = this.context.x0.toString(); this.x1 = this.context.x1.toString();
                this.x19 = this.context.x19.toString(); this.x20 = this.context.x20.toString();
                this.x21 = this.context.x21.toString(); this.x22 = this.context.x22.toString();
                this.x23 = this.context.x23.toString(); this.x24 = this.context.x24.toString();
            },
            onLeave: function(rv) {
                if (!this.is_pref && !this.is_full) return;
                var src_hex = ""; try { src_hex = hexify(this.src.readByteArray(Math.min(this.sz, 200))); } catch(e){}
                var src_str = ""; try { src_str = this.src.readCString(Math.min(this.sz, 300)); } catch(e){}
                var dst_hex = ""; try { dst_hex = hexify(this.dst.readByteArray(Math.min(this.sz, 200))); } catch(e){}
                send({t: this.is_pref ? "PREFIX_WRITE" : "FULL_READ",
                      hook_name:name, sz:this.sz, tid:this.tid,
                      dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str.substring(0,300), src_hex:src_hex.substring(0,400),
                      dst_hex_after:dst_hex.substring(0,400),
                      regs:{x0:this.x0,x1:this.x1,x19:this.x19,x20:this.x20,x21:this.x21,x22:this.x22,x23:this.x23,x24:this.x24, sp:this.stack_reg, fp:this.fp_reg},
                      bt:this.bt, ts:TS()});
            }
        };
    }

    Interceptor.attach(_memcpy, mkhook("memcpy"));
    Interceptor.attach(_memmove, mkhook("memmove"));
    _hook_installed = true;
    send({t:"hooks_ready", ts:TS()});

    // Also install sink hook
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
    send({t:"modules_ready", ts:TS(), engine:engine.base.toString(), flutter:flutter.base.toString()});
    installHooks(engine, flutter);
}
setTimeout(tryInit, 30);
send({t:"boot_done", ts:1});
"""

results = []
def on_msg(msg, data):
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'PREFIX_WRITE':
            print(f"\n=== PREFIX_WRITE @ +{p.get('ts',0)}ms tid={p.get('tid')} ===")
            print(f"  sz={p.get('sz')} dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:100]}")
            regs = p.get('regs',{})
            print(f"  regs: x19={regs.get('x19')} x20={regs.get('x20')} x21={regs.get('x21')} x22={regs.get('x22')} x23={regs.get('x23')} x24={regs.get('x24')}")
            print(f"        sp={regs.get('sp')} fp={regs.get('fp')}")
            print(f"  BACKTRACE (up to 20 frames):")
            for f in p.get('bt',[]):
                print(f"    {f.get('mod')} ({f.get('addr')})")
        elif t == 'FULL_READ':
            print(f"\n=== FULL_READ @ +{p.get('ts',0)}ms tid={p.get('tid')} ===")
            print(f"  sz={p.get('sz')} dst={p.get('dst')} src={p.get('src')}")
            print(f"  src_str: {p.get('src_str','')[:250]}")
            regs = p.get('regs',{})
            print(f"  regs: x19={regs.get('x19')} x20={regs.get('x20')} x21={regs.get('x21')} x22={regs.get('x22')} x23={regs.get('x23')} x24={regs.get('x24')}")
            print(f"  BACKTRACE (up to 20 frames):")
            for f in p.get('bt',[]):
                print(f"    {f.get('mod')} ({f.get('addr')})")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] *** Z_SINK: {p.get('data','')[:200]}")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
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
time.sleep(20)

with open("/tmp/backtrace_deep.json", "w") as f: json.dump(results, f, indent=2, default=str)
pw = [r for r in results if r.get('t') == 'PREFIX_WRITE']
fr = [r for r in results if r.get('t') == 'FULL_READ']
print(f"\n[*] PREFIX_WRITE: {len(pw)}, FULL_READ: {len(fr)}")
session.detach()
