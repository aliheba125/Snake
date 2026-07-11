"""
Test remaining 3 cert-verify candidates + re-test 0x460e5c with MITM.
No sudo needed (setcap applied).
"""
import subprocess, time, os

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

HOST_IP = "172.17.0.1"
candidates = [0x460e5c, 0x460ec0, 0x461264, 0x461a6c]

# Ensure MITM script uses port 443
os.system("sed -i 's/LISTEN_PORT = 8443/LISTEN_PORT = 443/' /tmp/mitm_run.py")
os.system("sed -i 's/LISTEN_PORT = 443/LISTEN_PORT = 443/' /tmp/mitm_run.py")

results = []

for idx, func_va in enumerate(candidates):
    print(f"\n{'='*50}")
    print(f"[{idx+1}/4] 0x{func_va:x}")
    print(f"{'='*50}")
    
    # Kill old
    os.system("pkill -f mitm_run 2>/dev/null")
    adb("am force-stop com.snake")
    time.sleep(2)
    
    # Fresh MITM log
    try:
        os.remove("/tmp/mitm_log.txt")
    except:
        os.system("sudo rm -f /tmp/mitm_log.txt 2>/dev/null")
    
    # Start MITM on 443 (no sudo needed now)
    mitm = subprocess.Popen(["python3", "/tmp/mitm_run.py"],
                           stdout=open("/tmp/mitm_out.txt","w"), stderr=subprocess.STDOUT)
    time.sleep(2)
    
    # Verify
    ss = subprocess.run(["ss","-tlnp"], capture_output=True, text=True).stdout
    if ":443 " not in ss:
        print(f"  MITM port 443 not listening!")
        results.append((func_va, "NO_LISTEN", ""))
        mitm.kill()
        continue
    
    # DNS spoofing
    adb("sed -i /push-918/d /etc/hosts")
    adb(f"sh -c 'echo {HOST_IP} push-918010152455.europe-west1.run.app >> /etc/hosts'")
    
    # Write patch script for this candidate
    js = (
        'var f=new File("/data/local/tmp/patch_log.txt","w");'
        f'f.write("0x{func_va:x}\\n");'
        'var n=0;var iv=setInterval(function(){'
        'n++;var fl=Process.findModuleByName("libflutter.so");'
        'if(fl){clearInterval(iv);'
        f'Memory.patchCode(fl.base.add({func_va}),8,function(c){{'
        'c.writeU32(0x52800000);c.add(4).writeU32(0xD65F03C0);});'
        'f.write("ok\\n");f.flush();}'
        'if(n>200){clearInterval(iv);}},50);'
    )
    with open("/tmp/sp.js", "w") as sf:
        sf.write(js)
    subprocess.run(["adb","push","/tmp/sp.js","/system/lib64/libskia_net.js"], capture_output=True, timeout=5)
    
    # Start app
    adb("rm -f /data/local/tmp/patch_log.txt; touch /data/local/tmp/patch_log.txt; chmod 666 /data/local/tmp/patch_log.txt")
    adb("am start -n com.snake/com.Entry")
    print(f"  Waiting 22s...")
    time.sleep(22)
    
    # Results
    patch_log = adb("cat /data/local/tmp/patch_log.txt").strip()
    ps = adb("ps -A | grep com.snake$")
    alive = bool(ps)
    
    mitm_log = ""
    try:
        with open("/tmp/mitm_log.txt") as mf:
            mitm_log = mf.read()
    except:
        pass
    
    tls_ok = "TLS handshake" in mitm_log and "OK" in mitm_log
    has_request = "REQUEST" in mitm_log
    has_response = "RESPONSE" in mitm_log
    
    print(f"  Alive: {alive}")
    print(f"  Patch: {patch_log}")
    print(f"  TLS OK: {tls_ok}")
    print(f"  Request: {has_request}")
    print(f"  Response: {has_response}")
    
    if mitm_log:
        # Show relevant lines
        lines = mitm_log.split("\n")
        for line in lines:
            if "Connection" in line or "TLS" in line or "REQUEST" in line or "RESPONSE" in line:
                print(f"  >> {line[:200]}")
    
    status = "PLAINTEXT" if has_request or has_response else ("TLS_OK" if tls_ok else ("ALIVE" if alive else "DEAD"))
    results.append((func_va, status, mitm_log[:500]))
    
    mitm.kill()
    time.sleep(1)

# Cleanup
adb("sed -i /push-918/d /etc/hosts")

print(f"\n{'='*60}")
print("FINAL RESULTS:")
for va, status, log in results:
    marker = " *** WINNER ***" if status == "PLAINTEXT" else (" (cert bypassed)" if status == "TLS_OK" else "")
    print(f"  0x{va:x}: {status}{marker}")
    if "REQUEST" in log or "RESPONSE" in log:
        print(f"    LOG: {log[:300]}")
print(f"{'='*60}")
