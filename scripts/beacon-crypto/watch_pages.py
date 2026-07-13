#!/usr/bin/env python3
"""
Catch inline (strb) writes into the URL append region using MemoryAccessMonitor.
Once the prefix is written by libengine+0x801d80, mprotect the append pages
to PROT_NONE and let SIGSEGV catch every access. Capture backtrace at each hit.
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
    try { return Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 20).map(moduleOfAddr); }
    catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _prefix_hook_installed = false;
var _monitor_installed = false;
var accessCount = 0;

function armPageMonitor(url_dst) {
    if (_monitor_installed) return;
    _monitor_installed = true;
    // Compute page for URL buffer append region
    var region = url_dst.add(50);
    var pageSize = Process.pageSize;
    var page_start = region.and(ptr(-pageSize));
    send({t:"monitor_arm", url_dst:url_dst.toString(), page_start:page_start.toString(),
          pageSize:pageSize, ts:TS()});

    try {
        MemoryAccessMonitor.enable([{base: page_start, size: pageSize}], {
            onAccess: function(details) {
                accessCount++;
                if (accessCount > 200) return;  // cap
                // details: operation, address, from (call site), page_index, pages_completed, pages_total
                var from_mod = moduleOfAddr(details.from);
                var addr_off = null;
                try { addr_off = details.address.sub(url_dst).toInt32(); } catch(e){}
                // Sample byte content at access address
                var byte_val = "";
                try { byte_val = hexify(details.address.readByteArray(4)); } catch(e){}
                send({t:"MEM_ACCESS", op:details.operation, addr:details.address.toString(),
                      addr_off_in_url:addr_off,
                      from:details.from.toString(), from_mod:from_mod,
                      byte_val:byte_val, ts:TS()});
            }
        });
        send({t:"monitor_enabled", ts:TS()});
    } catch(e) {
        send({t:"monitor_error", err:e.toString()});
    }
}

function installPrefixHook(engine) {
    if (_prefix_hook_installed) return;
    var _memcpy = libc.findExportByName("memcpy");
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    Interceptor.attach(_memcpy, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            if (ra.equals(target_ra_prefix)) {
                this.hit_prefix = true;
                this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
                this.bt = bt(this.context);
            } else if (ra.equals(target_ra_full)) {
                this.hit_full = true;
                this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
                this.bt = bt(this.context);
            }
        },
        onLeave: function() {
            if (this.hit_prefix) {
                var src_str = ""; try { src_str = this.src.readCString(200); } catch(e){}
                var dst_hex = ""; try { dst_hex = hexify(this.dst.readByteArray(200), 200); } catch(e){}
                send({t:"PREFIX_WRITE", sz:this.sz, dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str, dst_after:dst_hex, bt:this.bt.slice(0,8), ts:TS()});
                // Now arm the monitor
                armPageMonitor(this.dst);
            } else if (this.hit_full) {
                var src_str = ""; try { src_str = this.src.readCString(300); } catch(e){}
                send({t:"FULL_READ", sz:this.sz, dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str, bt:this.bt.slice(0,8), ts:TS()});
            }
        }
    });
    _prefix_hook_installed = true;
    send({t:"prefix_hook_installed", ts:TS()});
}

// SINK
function installSinkHook(flutter) {
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
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS()});
    installPrefixHook(engine);
    installSinkHook(flutter);
    send({t:"init_ready", ts:TS()});
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
        if t == 'MEM_ACCESS':
            print(f"  [+{p.get('ts',0)}ms] ACCESS op={p.get('op')} addr={p.get('addr')} off={p.get('addr_off_in_url')} from={p.get('from_mod')} byte={p.get('byte_val','')[:8]}")
        elif t == 'PREFIX_WRITE':
            print(f"\n*** PREFIX_WRITE @ +{p.get('ts',0)}ms sz={p.get('sz')} dst={p.get('dst')} ***")
            print(f"  src_str: {p.get('src_str','')[:100]}")
        elif t == 'FULL_READ':
            print(f"\n*** FULL_READ @ +{p.get('ts',0)}ms sz={p.get('sz')} dst={p.get('dst')} src={p.get('src')} ***")
            print(f"  src_str: {p.get('src_str','')[:250]}")
        elif t == 'Z_SINK_HIT':
            print(f"\n[+{p.get('ts',0)}ms] *** Z_SINK: {p.get('data','')[:250]} ***")
        else:
            print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:200]}")
        sys.stdout.flush()

print("[*] Restart snake...")
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
time.sleep(40)

with open("/tmp/watch_pages.json", "w") as f: json.dump(results, f, indent=2, default=str)
mem_hits = [r for r in results if r.get('t') == 'MEM_ACCESS']
print(f"\n[*] Total events: {len(results)}, MEM_ACCESS: {len(mem_hits)}")
if mem_hits:
    print("[*] Unique writers to URL region:")
    writers = set(m.get('from_mod','') for m in mem_hits if m.get('op') == 'write')
    for w in writers: print(f"  {w}")
session.detach()
