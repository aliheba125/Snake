import frida, time, json

device = frida.get_usb_device(timeout=5)
procs = [p for p in device.enumerate_processes() if "snake" in p.name.lower()]
print("[+] Processes:", [(p.pid, p.name) for p in procs])

main_proc = [p for p in procs if "engine" not in p.name][0]
eng_proc = [p for p in procs if "engine" in p.name][0]

print("[+] Main (Flutter):", main_proc.pid, main_proc.name)
print("[+] Engine:", eng_proc.pid, eng_proc.name)

# Attach to ENGINE process - install KDF/AES hooks
s_eng = device.attach(eng_proc.pid)
ENG_SCRIPT = r"""
var eng = Process.findModuleByName("libengine.so");
if (eng) {
    Interceptor.attach(eng.base.add(0x161788), {
        onEnter: function(a) { send({t:"KDF",s1:a[1].toUInt32()>>>0,s2:a[2].toString()}); }
    });
    Interceptor.attach(eng.base.add(0x160208), {
        onEnter: function(a) {
            this.o = a[2];
            try { var p=a[1].readPointer(),e=a[1].add(8).readPointer(),l=e.sub(p).toInt32();
                  if(l>0&&l<65536) send({t:"AES_IN",len:l},p.readByteArray(Math.min(l,64))); } catch(x){}
        },
        onLeave: function() {
            try { var p=this.o.readPointer(),e=this.o.add(8).readPointer(),l=e.sub(p).toInt32();
                  if(l>0&&l<65536){var t=null;try{t=p.readUtf8String(Math.min(l,512))}catch(x){}
                  send({t:"AES_OUT",len:l,txt:t},p.readByteArray(Math.min(l,128)));}} catch(x){}
        }
    });
    try{Interceptor.attach(eng.base.add(0x17e148),{onEnter:function(){send({t:"CALL",fn:"0x17e148"})}})}catch(e){}
    try{Interceptor.attach(eng.base.add(0x189774),{onEnter:function(){send({t:"CALL",fn:"0x189774"})}})}catch(e){}
    send({t:"OK",msg:"Engine hooks @"+eng.base});
} else {
    send({t:"ERR",msg:"libengine not found"});
}
"""

# Attach to MAIN process - install Java + SSL hooks
s_main = device.attach(main_proc.pid)
MAIN_SCRIPT = r"""
var sslRead = Module.findExportByName(null, "SSL_read");
var sslWrite = Module.findExportByName(null, "SSL_write");
send({t:"OK",msg:"Main process. SSL_read="+sslRead+" SSL_write="+sslWrite});

if (sslRead) {
    Interceptor.attach(sslRead, {
        onEnter: function(a) { this.buf=a[1]; },
        onLeave: function(ret) {
            var n=ret.toInt32();
            if(n>0){try{var d=this.buf.readUtf8String(Math.min(n,4096));
            if(d&&d.length>5) send({t:"R",len:n,d:d.substring(0,2000)});}
            catch(e){send({t:"RB",len:n,h:Array.prototype.map.call(new Uint8Array(this.buf.readByteArray(Math.min(n,64))),function(b){return(0+b.toString(16)).slice(-2)}).join()});}}
        }
    });
}
if (sslWrite) {
    Interceptor.attach(sslWrite, {
        onEnter: function(a) {
            var n=a[2].toInt32();
            if(n>0){try{var d=a[1].readUtf8String(Math.min(n,4096));
            if(d&&d.length>5) send({t:"W",len:n,d:d.substring(0,2000)});}
            catch(e){send({t:"WB",len:n,h:Array.prototype.map.call(new Uint8Array(a[1].readByteArray(Math.min(n,64))),function(b){return(0+b.toString(16)).slice(-2)}).join()});}}
        }
    });
}
send({t:"OK",msg:"SSL hooks installed"});
"""

all_msgs = []
def on_eng(m, d):
    if m["type"] == "send":
        p = m["payload"]
        all_msgs.append(("ENG", p, d))
        t = p.get("t","")
        if t == "KDF":
            print("\n  *** ENGINE KDF: seed1=0x{:x} seed2={} ***".format(p["s1"], p["s2"]))
        elif t == "AES_OUT":
            print("  [ENG AES-OUT] len={} txt={}".format(p["len"], repr(p.get("txt","")[:200]) if p.get("txt") else ""))
            if d: print("    hex={}".format(d.hex()[:64]))
        elif t == "AES_IN":
            print("  [ENG AES-IN] len={}".format(p["len"]))
        elif t == "CALL":
            print("  [ENG DECRYPT-CALL] {}".format(p["fn"]))
        elif t in ("OK","ERR"):
            print("  [ENG] {}".format(p["msg"]))

def on_main(m, d):
    if m["type"] == "send":
        p = m["payload"]
        all_msgs.append(("MAIN", p, d))
        t = p.get("t","")
        if t == "R":
            print("\n  [MAIN SSL-READ] len={}\n    {}".format(p["len"], p["d"][:500]))
        elif t == "RB":
            print("  [MAIN SSL-READ-BIN] len={} hex={}".format(p["len"], p["h"][:80]))
        elif t == "W":
            print("\n  [MAIN SSL-WRITE] len={}\n    {}".format(p["len"], p["d"][:500]))
        elif t == "WB":
            print("  [MAIN SSL-WRITE-BIN] len={} hex={}".format(p["len"], p["h"][:80]))
        elif t in ("OK","ERR"):
            print("  [MAIN] {}".format(p["msg"]))
    elif m["type"] == "error":
        print("  [MAIN-ERR] {}".format(m.get("description","?")[:200]))

sc_eng = s_eng.create_script(ENG_SCRIPT)
sc_eng.on("message", on_eng)
sc_eng.load()

sc_main = s_main.create_script(MAIN_SCRIPT)
sc_main.on("message", on_main)
sc_main.load()

print("\n[+] All hooks active. Monitoring 60s...")
print("[*] The app should be making network requests to snakeseller.com\n")
time.sleep(60)

print("\n" + "="*60)
eng_msgs = [p for src,p,d in all_msgs if src == "ENG" and p.get("t") in ("KDF","AES_IN","AES_OUT","CALL")]
main_reads = [p for src,p,d in all_msgs if src == "MAIN" and p.get("t") in ("R","RB")]
main_writes = [p for src,p,d in all_msgs if src == "MAIN" and p.get("t") in ("W","WB")]
print("ENGINE crypto events: {}".format(len(eng_msgs)))
print("MAIN SSL reads: {}".format(len(main_reads)))
print("MAIN SSL writes: {}".format(len(main_writes)))

if main_reads:
    print("\n--- Server Responses (first 3) ---")
    for p in main_reads[:3]:
        print("  {}".format(p.get("d", p.get("h","?"))[:300]))

if main_writes:
    print("\n--- Client Requests (first 3) ---")
    for p in main_writes[:3]:
        print("  {}".format(p.get("d", p.get("h","?"))[:300]))

print("="*60)
s_eng.detach()
s_main.detach()
