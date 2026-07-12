#!/usr/bin/env python3
"""
Minimal SINK hook only. When z URL is seen, IMMEDIATELY dump the process's
rw memory to a file on the device, and later scan it for the raw z bytes.
This avoids the memcpy-hook overhead problem.
"""
import frida, json, time, sys, subprocess, os

SCRIPT = r"""
'use strict';
var t0 = Date.now();
send({t:"boot", ts:0, pid:Process.id});

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
    try {
        var frames = Thread.backtrace(ctx, Backtracer.ACCURATE).slice(0, 16);
        return frames.map(moduleOfAddr);
    } catch(e) { return []; }
}
function hexify(buf, maxlen) {
    if (maxlen === undefined) maxlen = 128;
    var arr = new Uint8Array(buf);
    var s = '';
    for (var i = 0; i < Math.min(arr.length, maxlen); i++) s += ('0'+arr[i].toString(16)).slice(-2);
    return s;
}

var _sink_installed = false;
function tryInstallSink() {
    if (_sink_installed) return;
    updateModules();
    var flutter = Process.findModuleByName("libflutter.so");
    var engine = Process.findModuleByName("libengine.so");
    var libapp = Process.findModuleByName("libapp.so");
    if (!flutter || !engine || !libapp) { setTimeout(tryInstallSink, 15); return; }
    send({t:"modules_ready", ts:Date.now()-t0, flutter:flutter.base.toString(),
          engine:engine.base.toString(), libapp:libapp.base.toString()});

    Interceptor.attach(flutter.base.add(0x6d4be8), {
        onEnter: function(args) {
            for (var i = 0; i < 4; i++) {
                try {
                    var p = args[i]; if (p.isNull()) continue;
                    var s = p.readCString(600);
                    if (s && s.indexOf("z=0c") !== -1) {
                        var m = s.match(/z=([0-9a-f]{98,})/i);
                        var z_hex_full = m ? m[1] : "";
                        var z48 = z_hex_full.length >= 98 ? z_hex_full.substring(2, 98) : "";
                        var iv_hex = z48.substring(0, 32);
                        var ct_hex = z48.substring(32);

                        // Build byte pattern for iv (16 bytes)
                        var iv_pattern = "";
                        for (var j = 0; j < 32; j += 2) { iv_pattern += iv_hex.substring(j, j+2); if (j < 30) iv_pattern += " "; }
                        // Also 8-byte prefix
                        var iv_prefix_pattern = "";
                        for (var j = 0; j < 16; j += 2) { iv_prefix_pattern += iv_hex.substring(j, j+2); if (j < 14) iv_prefix_pattern += " "; }
                        // Also full 48-byte pattern
                        var z48_pattern = "";
                        for (var j = 0; j < 96; j += 2) { z48_pattern += z48.substring(j, j+2); if (j < 94) z48_pattern += " "; }

                        // Attempt Memory.scanSync with tight error handling
                        var iv_locs = [], iv_prefix_locs = [], z48_locs = [];
                        var scan_errors = 0, scan_success = 0;
                        try {
                            var ranges = Process.enumerateRanges({protection: 'rw-'});
                            for (var rr = 0; rr < ranges.length; rr++) {
                                if (ranges[rr].size > 200000000) continue;
                                try {
                                    var found = Memory.scanSync(ranges[rr].base, ranges[rr].size, z48_pattern);
                                    scan_success++;
                                    if (found.length > 0) {
                                        for (var ff = 0; ff < found.length && z48_locs.length < 15; ff++) {
                                            var addr = found[ff].address;
                                            var context_hex = "";
                                            try { context_hex = hexify(addr.sub(48).readByteArray(48+96+48)); } catch(e){}
                                            z48_locs.push({addr:addr.toString(), mod:moduleOfAddr(addr),
                                                          region_base:ranges[rr].base.toString(),
                                                          region_size:ranges[rr].size,
                                                          context_hex:context_hex});
                                        }
                                    }
                                } catch(e) { scan_errors++; }
                                try {
                                    var found2 = Memory.scanSync(ranges[rr].base, ranges[rr].size, iv_pattern);
                                    if (found2.length > 0) {
                                        for (var ff = 0; ff < found2.length && iv_locs.length < 15; ff++) {
                                            var addr = found2[ff].address;
                                            var context_hex = "";
                                            try { context_hex = hexify(addr.sub(48).readByteArray(48+96+48)); } catch(e){}
                                            iv_locs.push({addr:addr.toString(), mod:moduleOfAddr(addr),
                                                          region_base:ranges[rr].base.toString(),
                                                          context_hex:context_hex});
                                        }
                                    }
                                } catch(e) {}
                            }
                        } catch(e) {}

                        send({t:"Z_SINK_HIT",
                              z_hex_full:z_hex_full, z48:z48, iv_hex:iv_hex, ct_hex:ct_hex,
                              n_z48_locs: z48_locs.length,
                              n_iv_locs: iv_locs.length,
                              z48_locs: z48_locs,
                              iv_locs: iv_locs,
                              scan_success:scan_success, scan_errors:scan_errors,
                              sink_bt: bt(this.context).slice(0, 12),
                              ts:Date.now()-t0});
                        return;
                    }
                } catch(e) {}
            }
        }
    });
    _sink_installed = true;
    send({t:"sink_installed", ts:Date.now()-t0});
}

setTimeout(tryInstallSink, 30);
send({t:"init_done", ts:1});
"""

results = []
z_captured = None
def on_msg(msg, data):
    global z_captured
    if msg['type'] == 'send':
        p = msg['payload']
        results.append(p)
        t = p.get('t','')
        if t == 'Z_SINK_HIT':
            z_captured = p
            print("\n" + "="*80)
            print("*** Z SINK HIT @ +%dms ***" % p.get('ts',0))
            print("z48:", p.get('z48'))
            print("iv :", p.get('iv_hex'))
            print("ct :", p.get('ct_hex'))
            print(f"scan_success: {p.get('scan_success')}, scan_errors: {p.get('scan_errors')}")
            print(f"z48 raw locations found: {p.get('n_z48_locs')}")
            for loc in p.get('z48_locs', [])[:10]:
                print(f"  Z48 @ {loc.get('addr')} mod={loc.get('mod')} region_base={loc.get('region_base')} size={loc.get('region_size')}")
                print(f"    context_hex[:96]: {loc.get('context_hex','')[:96]}")
            print(f"iv-only locations: {p.get('n_iv_locs')}")
            for loc in p.get('iv_locs', [])[:6]:
                print(f"  IV @ {loc.get('addr')} mod={loc.get('mod')} region_base={loc.get('region_base')}")
                print(f"    context_hex[:96]: {loc.get('context_hex','')[:96]}")
            print("SINK backtrace:")
            for f in p.get('sink_bt', []): print("  ", f)
            print("="*80)
        else:
            print("[+%dms] %s" % (p.get('ts',0), json.dumps(p)[:200]))
        sys.stdout.flush()

print("[*] Force-stop + start snake...")
subprocess.run(["adb","-s","localhost:5555","shell","am","force-stop","com.snake"], timeout=10)
time.sleep(2)
subprocess.run(["adb","-s","localhost:5555","shell","am","start","-n","com.snake/com.Entry"], timeout=10)

t_start = time.time()
device = None
for i in range(80):
    time.sleep(0.15)
    try:
        dm = frida.get_device_manager()
        d = dm.add_remote_device("127.0.0.1:27052")
        procs = d.enumerate_processes()
        if procs: device = d; print("[+%.3fs] Gadget PID %d" % (time.time()-t_start, procs[0].pid)); break
    except Exception: pass
if not device: print("[!] no gadget"); sys.exit(1)

session = device.attach(device.enumerate_processes()[0].pid)
script = session.create_script(SCRIPT)
script.on('message', on_msg)
script.load()
print(f"[+{time.time()-t_start:.3f}s] script loaded")
time.sleep(35)

with open("/tmp/sink_and_dump.json", "w") as f:
    json.dump(results, f, indent=2, default=str)
print("[*] Saved.")

# If we got z, dump the process memory now (before app exits) for offline scan
if z_captured:
    # Get snake PID from adb
    pid_r = subprocess.run(["adb","-s","localhost:5555","shell","pidof","com.snake"],capture_output=True,text=True,timeout=5)
    snake_pid = pid_r.stdout.strip().split()[0] if pid_r.stdout.strip() else None
    print(f"[*] Snake PID: {snake_pid}")
    print("[*] z=", z_captured['z48'])

session.detach()
