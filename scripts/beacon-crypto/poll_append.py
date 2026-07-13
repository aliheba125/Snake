#!/usr/bin/env python3
"""
Poll the URL append region every 1ms for content changes.
Also, when the buffer becomes fully assembled, capture backtrace of current thread.
Also install Stalker on the current thread WHILE the append is happening.
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
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 256;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _prefix_hook_installed = false;

function pollAppend(url_dst, mainThreadId) {
    send({t:"poll_start", url_dst:url_dst.toString(), ts:TS()});
    var region = url_dst.add(50);
    var prev_bytes = "";
    var poll_count = 0;
    var no_change_count = 0;
    var interval;

    function checkOnce() {
        poll_count++;
        try {
            var cur = hexify(region.readByteArray(160), 160);
            if (cur !== prev_bytes) {
                // Trim to only new tail
                var change_offset = 0;
                var minlen = Math.min(cur.length, prev_bytes.length);
                for (change_offset = 0; change_offset < minlen; change_offset++) {
                    if (cur[change_offset] !== prev_bytes[change_offset]) break;
                }
                send({t:"POLL_CHANGE", poll:poll_count, offset_hex:change_offset,
                      before:prev_bytes.substring(0,160), after:cur.substring(0,160), ts:TS()});
                prev_bytes = cur;
                no_change_count = 0;
            } else {
                no_change_count++;
                if (no_change_count > 2000) {  // ~4 seconds of no change
                    clearInterval(interval);
                    send({t:"poll_stop", polls:poll_count, ts:TS()});
                }
            }
        } catch(e) {}
    }
    // First read
    try { prev_bytes = hexify(region.readByteArray(160), 160); } catch(e){}
    interval = setInterval(checkOnce, 2);
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
            } else if (ra.equals(target_ra_full)) {
                this.hit_full = true;
                this.dst = args[0]; this.src = args[1]; this.sz = args[2].toInt32();
                var src_str = ""; try { src_str = this.src.readCString(300); } catch(e){}
                send({t:"FULL_READ_ENTER", sz:this.sz, dst:this.dst.toString(), src:this.src.toString(),
                      src_str:src_str, ts:TS(),
                      thread_id: this.threadId});
            }
        },
        onLeave: function() {
            if (this.hit_prefix) {
                var src_str = ""; try { src_str = this.src.readCString(200); } catch(e){}
                send({t:"PREFIX_WRITE", sz:this.sz, dst:this.dst.toString(),
                      src_str:src_str, ts:TS(),
                      thread_id: this.threadId});
                pollAppend(this.dst, this.threadId);
            }
        }
    });
    _prefix_hook_installed = true;
    send({t:"prefix_hook_installed", ts:TS()});
}

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
        if t == 'POLL_CHANGE':
            print(f"  poll={p.get('poll')} @+{p.get('ts',0)}ms diff@offset={p.get('offset_hex')}")
            after = p.get('after','')
            before = p.get('before','')
            print(f"    before[:120]: {before[:120]}")
            print(f"    after [:120]: {after[:120]}")
        elif t == 'PREFIX_WRITE':
            print(f"\n*** PREFIX @ +{p.get('ts',0)}ms dst={p.get('dst')} ***")
        elif t == 'FULL_READ_ENTER':
            print(f"\n*** FULL_READ @ +{p.get('ts',0)}ms sz={p.get('sz')} ***")
            print(f"    src_str: {p.get('src_str','')[:200]}")
        elif t == 'Z_SINK_HIT':
            print(f"\n*** Z_SINK @ +{p.get('ts',0)}ms ***: {p.get('data','')[:200]}")
        elif t == 'poll_start':
            print(f"[+{p.get('ts',0)}ms] Poll started for {p.get('url_dst')}")
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
time.sleep(40)

with open("/tmp/poll_append.json", "w") as f: json.dump(results, f, indent=2, default=str)
polls = [r for r in results if r.get('t') == 'POLL_CHANGE']
print(f"\n[*] Total: {len(results)}, POLL_CHANGE: {len(polls)}")
session.detach()
