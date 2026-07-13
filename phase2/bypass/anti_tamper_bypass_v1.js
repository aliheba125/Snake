// Frida script لتعطيل anti-tamper mechanisms
console.log("[+] Phase 2 Anti-Tamper Bypass v1");

// 1. تعطيل process_vm_readv (لكشف anti-tamper)
const process_vm_readv = Module.findExportByName(null, "process_vm_readv");
if (process_vm_readv) {
    console.log("[+] Found process_vm_readv @ " + process_vm_readv);
    
    Interceptor.attach(process_vm_readv, {
        onEnter: function(args) {
            console.log("[!] process_vm_readv called");
            console.log("    pid: " + args[0]);
            console.log("    local_iov: " + args[1]);
            
            // يمكننا return 0 (success) أو تخطي المنطق
            this.should_bypass = true;
        },
        onLeave: function(retval) {
            if (this.should_bypass) {
                console.log("[+] Bypassing process_vm_readv");
                retval.replace(0); // return success
            }
        }
    });
} else {
    console.log("[-] process_vm_readv not found");
}

// 2. تعطيل xcrash
const xcrash_init = Module.findExportByName(null, "xcrash_init");
if (xcrash_init) {
    Interceptor.attach(xcrash_init, {
        onEnter: function(args) {
            console.log("[+] xcrash_init prevented");
            this.returnValue = -1; // فشل التهيئة
        }
    });
}

// 3. مراقبة mprotect/mmap (للتعديلات الذاتية)
const mprotect = Module.findExportByName(null, "mprotect");
const mmap = Module.findExportByName(null, "mmap");

if (mprotect) {
    Interceptor.attach(mprotect, {
        onEnter: function(args) {
            var addr = args[0];
            var len = args[1];
            var prot = args[2];
            
            // PROT_READ | PROT_WRITE | PROT_EXEC = 7
            if (prot === 7) {
                console.log("[!] mprotect RWX @ " + addr + " (len: " + len + ")");
                console.log("    Likely self-modifying code or anti-tamper");
            }
        }
    });
}

// 4. البحث عن JNI functions والتعطيل الانتقائي
const libengine = Module.findBaseAddress("libengine.so");
if (libengine) {
    console.log("[+] libengine.so @ " + libengine);
    
    // العناوين المعروفة من Phase 1
    const known_offsets = {
        'JNI_OnLoad': 0xf3fa0,
        'ilil': 0xf1188,
        'pjowqpxe': 0xf33a8,
        'awl': 0xf1110,
        'aior': 0xf1084,
    };
    
    for (var name in known_offsets) {
        var addr = libengine.add(known_offsets[name]);
        console.log("[+] " + name + " expected @ " + addr);
    }
}

// 5. مراقبة seccomp إذا كان مستخدم
const seccomp = Module.findExportByName(null, "seccomp");
if (seccomp) {
    Interceptor.attach(seccomp, {
        onEnter: function(args) {
            console.log("[!] seccomp called - sandboxing active");
            console.log("    operation: " + args[0]);
            console.log("    flags: " + args[1]);
            console.log("    args: " + args[2]);
        }
    });
}

console.log("[+] Anti-tamper bypass loaded");
console.log("[+] Ready for Phase 2 testing");
