"""
Test each cert-verify candidate with MITM.
For each candidate:
1. Start fresh MITM (port 8443) + relay (443->8443)  
2. DNS spoof push-918... -> host
3. Start app with script-mode patch (single function)
4. Check if MITM saw TLS handshake OK + plaintext

If TLS handshake succeeds = this IS the cert verify function.
"""
import subprocess, time, os, threading, socket, signal

def adb(cmd):
    return subprocess.run(["adb","shell",cmd], capture_output=True, text=True, timeout=10).stdout.strip()

def kill_procs():
    os.system("pkill -f mitm_run 2>/dev/null")
    os.system("sudo pkill -f 'bind.*443' 2>/dev/null")
    time.sleep(1)

# Host IP for docker
HOST_IP = "172.17.0.1"

candidates = [0x460e5c, 0x460ec0, 0x461264, 0x461a6c]
results = []

for idx, func_va in enumerate(candidates):
    print(f"\n{'='*60}")
    print(f"[{idx+1}/4] Testing 0x{func_va:x} with MITM")
    print(f"{'='*60}")
    
    # Kill old processes
    kill_procs()
    adb("am force-stop com.snake")
    time.sleep(2)
    
    # 1. Fresh MITM log
    os.system("rm -f /tmp/mitm_log.txt")
    
    # 2. Start MITM on 8443
    mitm_proc = subprocess.Popen(
        ["python3", "/tmp/mitm_run.py"],
        stdout=open("/tmp/mitm_stdout.txt","w"),
        stderr=subprocess.STDOUT
    )
    time.sleep(2)
    
    # Verify MITM is listening
    ss = subprocess.run(["ss","-tlnp"], capture_output=True, text=True).stdout
    if "8443" not in ss:
        print(f"  MITM failed to start!")
        results.append((func_va, "MITM_FAIL", ""))
        continue
    print(f"  MITM listening on 8443")
    
    # 3. Start relay 443->8443 (needs sudo - use setcap'd python or just try)
    # Actually use a different approach: just change MITM to listen on 443 directly
    # Let's kill MITM and restart on 443 with sudo
    mitm_proc.kill()
    time.sleep(1)
    os.system("rm -f /tmp/mitm_log.txt")
    
    # Modify mitm_run.py to use port 443
    os.system("sed -i 's/LISTEN_PORT = 8443/LISTEN_PORT = 443/' /tmp/mitm_run.py")
    
    # Start with sudo
    mitm_proc = subprocess.Popen(
        ["sudo", "python3", "/tmp/mitm_run.py"],
        stdout=open("/tmp/mitm_stdout.txt","w"),
        stderr=subprocess.STDOUT
    )
    time.sleep(2)
    
    ss2 = subprocess.run(["sudo","ss","-tlnp"], capture_output=True, text=True).stdout
    if ":443 " not in ss2:
        print(f"  MITM on 443 failed!")
        # Revert and try with relay
        os.system("sed -i 's/LISTEN_PORT = 443/LISTEN_PORT = 8443/' /tmp/mitm_run.py")
        results.append((func_va, "PORT_FAIL", ""))
        mitm_proc.kill()
        continue
    print(f"  MITM listening on 443 (sudo)")
    
    # 4. DNS spoofing
    adb(f"sed -i /push-918/d /etc/hosts")
    adb(f"sh -c 'echo {HOST_IP} push-918010152455.europe-west1.run.app >> /etc/hosts'")
    
    # 5. Write script that patches ONLY this candidate
    js = (
        'var f=new File("/data/local/tmp/patch_log.txt","w");'
        f'f.write("patch 0x{func_va:x}\\n");'
        'var n=0;var iv=setInterval(function(){'
        'n++;var fl=Process.findModuleByName("libflutter.so");'
        'if(fl){clearInterval(iv);'
        f'Memory.patchCode(fl.base.add({func_va}),8,function(c){{'
        'c.writeU32(0x52800000);c.add(4).writeU32(0xD65F03C0);});'
        'f.write("ok\\n");f.flush();}'
        'if(n>200){clearInterval(iv);}},50);'
    )
    with open("/tmp/single_patch.js", "w") as sf:
        sf.write(js)
    subprocess.run(["adb","push","/tmp/single_patch.js","/system/lib64/libskia_net.js"],
                  capture_output=True, timeout=5)
    
    # 6. Start app
    adb("rm -f /data/local/tmp/patch_log.txt; touch /data/local/tmp/patch_log.txt; chmod 666 /data/local/tmp/patch_log.txt")
    adb("am start -n com.snake/com.Entry")
    print(f"  App starting... waiting 20s")
    time.sleep(20)
    
    # 7. Check results
    patch_log = adb("cat /data/local/tmp/patch_log.txt")
    ps = adb("ps -A | grep com.snake$")
    app_alive = bool(ps)
    
    # Read MITM log
    mitm_log = ""
    try:
        with open("/tmp/mitm_log.txt") as mf:
            mitm_log = mf.read()
    except:
        pass
    
    # Check if TLS handshake succeeded
    tls_ok = "TLS handshake with client: OK" in mitm_log or "TLS handshake OK" in mitm_log or "REQUEST" in mitm_log
    has_plaintext = "REQUEST" in mitm_log or "RESPONSE" in mitm_log
    
    status = "TLS_OK" if tls_ok else ("ALIVE" if app_alive else "DEAD")
    
    print(f"  App alive: {app_alive}")
    print(f"  Patch log: {patch_log.strip()}")
    print(f"  TLS handshake OK: {tls_ok}")
    print(f"  Has plaintext: {has_plaintext}")
    if mitm_log:
        print(f"  MITM log (first 500):")
        print(f"    {mitm_log[:500]}")
    
    results.append((func_va, status, mitm_log[:200]))
    
    # Cleanup
    mitm_proc.kill()
    time.sleep(1)
    # Revert port
    os.system("sed -i 's/LISTEN_PORT = 443/LISTEN_PORT = 8443/' /tmp/mitm_run.py")

# Final cleanup
adb("sed -i /push-918/d /etc/hosts")

print(f"\n{'='*60}")
print("FINAL RESULTS:")
print(f"{'='*60}")
for va, status, log_snippet in results:
    print(f"  0x{va:x}: {status}")
    if "REQUEST" in log_snippet or "RESPONSE" in log_snippet:
        print(f"    *** PLAINTEXT CAPTURED! ***")
        print(f"    {log_snippet}")
print(f"{'='*60}")
