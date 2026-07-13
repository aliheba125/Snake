#!/usr/bin/env python3
"""
Use Frida Stalker to trace the current thread's execution IMMEDIATELY after
libengine+0x801d80 memcpy returns. Filter for STR/STRB/STP instructions where
the effective address is in the URL buffer's append region.

Approach:
  - Hook memcpy with RA == libengine+0x801d80
  - In onLeave, follow the current thread with Stalker
  - Custom transform callback filters memory-write instructions
  - Unfollow after ~1ms or when memcpy at 0x5b7ec fires
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
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _installed = false;
var url_dst_low = 0;
var url_dst_high = 0;
var url_dst_ptr = null;

function installStalkerHook(engine) {
    var _memcpy = libc.findExportByName("memcpy");
    var target_ra_prefix = engine.base.add(0x801d80);
    var target_ra_full   = engine.base.add(0x5b7f0);

    Interceptor.attach(_memcpy, {
        onEnter: function(args) {
            var ra = this.returnAddress;
            if (ra.equals(target_ra_prefix)) {
                this.is_prefix = true;
                this.dst_ptr = args[0];
                this.tid = Process.getCurrentThreadId();
                url_dst_ptr = args[0];
                url_dst_low = args[0].toString();
                url_dst_high = args[0].add(200).toString();
            } else if (ra.equals(target_ra_full)) {
                this.is_full = true;
            }
        },
        onLeave: function(retval) {
            if (this.is_prefix) {
                send({t:"PREFIX", ts:TS(), dst:this.dst_ptr.toString(), tid:this.tid});
                // Immediately start Stalker on this thread
                startStalker(this.tid, this.dst_ptr);
            } else if (this.is_full) {
                stopStalker();
                send({t:"FULL_END", ts:TS()});
            }
        }
    });
}

var _stalking_tid = null;
var _writes_log = [];
function startStalker(tid, dst_ptr) {
    if (_stalking_tid !== null) return;
    _stalking_tid = tid;
    var lower = dst_ptr;
    var upper = dst_ptr.add(200);
    var dst_int_low = lower;
    var dst_int_high = upper;
    send({t:"STALKER_START", tid:tid, dst_low:lower.toString(), dst_high:upper.toString(), ts:TS()});
    try {
        Stalker.follow(tid, {
            events: { call: false, ret: false, exec: false, block: false, compile: false },
            transform: function(iterator) {
                var inst;
                while ((inst = iterator.next()) !== null) {
                    var mn = inst.mnemonic;
                    if (mn === "str" || mn === "strb" || mn === "strh" || mn === "stp" ||
                        mn === "sturb" || mn === "sturh" || mn === "stur" || mn === "stbrb") {
                        // Emit callback
                        iterator.putCallout(function(context) {
                            try {
                                // We can't easily compute effective address here without parsing operands
                                // Instead, sample: if any store in this basic block modifies URL region, we can check
                                // But we can't know before running. Instead just record PC of every store.
                                var pc = context.pc;
                                if (pc.compare(ptr(0x152150)) < 0) return;  // outside libengine text
                            } catch(e){}
                        });
                    }
                    iterator.keep();
                }
            }
        });
    } catch(e) {
        send({t:"STALKER_ERR", err:e.toString(), ts:TS()});
    }
    // Poll the URL buffer and stop stalker once URL is complete
    var poll_count = 0;
    var interval = setInterval(function() {
        poll_count++;
        try {
            var s = dst_ptr.readCString(200);
            if (s && s.indexOf("&v=20") !== -1) {
                clearInterval(interval);
                send({t:"URL_COMPLETE", ts:TS(), url:s.substring(0,200), poll_count:poll_count});
                stopStalker();
            } else if (poll_count > 500) {
                clearInterval(interval);
                stopStalker();
            }
        } catch(e){}
    }, 1);
}

function stopStalker() {
    if (_stalking_tid === null) return;
    try {
        Stalker.unfollow(_stalking_tid);
        Stalker.flush();
        send({t:"STALKER_STOP", tid:_stalking_tid, writes_captured:_writes_log.length, ts:TS()});
    } catch(e){ send({t:"STALKER_STOP_ERR", err:e.toString()}); }
    _stalking_tid = null;
}

// Alternative: check the URL buffer content periodically via ArmWriter?
// Simplest: just capture the URL content at MULTIPLE polls during the ~1ms window.

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
    if (!flutter || !engine) { setTimeout(tryInit, 15); return; }
    _modules_ready = true;
    send({t:"modules_ready", ts:TS()});
    installStalkerHook(engine);
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
        print(f"[+{p.get('ts',0)}ms] {json.dumps(p)[:300]}")
        sys.stdout.flush()
    elif msg['type'] == 'error':
        print(f"ERR: {msg.get('description','')[:200]}")
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
time.sleep(30)

with open("/tmp/stalker_append.json", "w") as f: json.dump(results, f, indent=2, default=str)
session.detach()
