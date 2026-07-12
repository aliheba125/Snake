"""
Test each candidate individually with REAL server (no MITM).
If app survives: the function is cert verify (safe to patch).
If app dies: the function is essential for TLS (not cert verify).
"""
import subprocess, time, os

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

candidates = [0x4609a8, 0x460a9c, 0x460e5c, 0x460ec0, 0x461264, 0x461a6c, 0x468f44]

results = []

for i, func_va in enumerate(candidates):
    print(f"[{i+1}/7] Testing 0x{func_va:x} alone...")
    
    # Write script that patches ONLY this function
    js = (
        'var f=new File("/data/local/tmp/patch_log.txt","w");'
        f'f.write("test 0x{func_va:x}\\n");'
        'var n=0;var iv=setInterval(function(){'
        'n++;var fl=Process.findModuleByName("libflutter.so");'
        'if(fl){clearInterval(iv);'
        f'Memory.patchCode(fl.base.add({func_va}),8,function(c){{'
        'c.writeU32(0x52800000);c.add(4).writeU32(0xD65F03C0);});'
        'f.write("patched\\n");f.flush();}'
        'if(n>200){clearInterval(iv);}},50);'
    )
    
    with open("/tmp/single_test.js", "w") as sf:
        sf.write(js)
    
    subprocess.run(["adb","push","/tmp/single_test.js","/system/lib64/libskia_net.js"],
                  capture_output=True, timeout=5)
    
    adb("am force-stop com.snake")
    time.sleep(2)
    adb("rm -f /data/local/tmp/patch_log.txt; touch /data/local/tmp/patch_log.txt; chmod 666 /data/local/tmp/patch_log.txt")
    adb("am start -n com.snake/com.Entry")
    time.sleep(18)
    
    ps = adb("ps -A | grep com.snake$")
    alive = bool(ps)
    log = adb("cat /data/local/tmp/patch_log.txt")
    
    status = "ALIVE" if alive else "DEAD"
    results.append((func_va, status))
    print(f"  {status} | log: {log.strip()}")

print("\n" + "="*60)
print("RESULTS (single function, real server):")
for va, status in results:
    marker = " <<< CERT VERIFY" if status == "ALIVE" else " (essential TLS)"
    print(f"  0x{va:x}: {status}{marker}")
print("="*60)
