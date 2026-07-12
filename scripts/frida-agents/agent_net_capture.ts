import Java from "frida-java-bridge";

// Capture the app-layer HTTP request to rest.snakeseller.com
// Strategy: hook socket write/sendto filtered on backend fd — runs before user interaction triggers kill

const t0 = Date.now();
function T() { return `[+${Date.now()-t0}ms]`; }

const libc = Process.findModuleByName("libc.so")!;
const BACKEND = "92.205.103.45";
const beFds: {[fd: number]: boolean} = {};

// Track backend connections
Interceptor.attach(libc.findExportByName("connect")!, {
    onEnter(args) {
        try {
            const fd = args[0].toInt32();
            const sa = args[1];
            const fam = sa.readU16();
            if (fam === 2) {
                const port = (sa.add(2).readU8() << 8) | sa.add(3).readU8();
                const ip = `${sa.add(4).readU8()}.${sa.add(5).readU8()}.${sa.add(6).readU8()}.${sa.add(7).readU8()}`;
                if (ip === BACKEND && port > 0) {
                    beFds[fd] = true;
                    send(`${T()} CONNECT backend fd=${fd} ${ip}:${port}`);
                }
            }
        } catch(e) {}
    }
});

// Remove closed fds
Interceptor.attach(libc.findExportByName("close")!, {
    onEnter(args) {
        const fd = args[0].toInt32();
        if (beFds[fd]) {
            send(`${T()} CLOSE fd=${fd}`);
            delete beFds[fd];
        }
    }
});

// Capture ALL writes on backend fds (TLS-encrypted but we can measure timing + size)
// Also look for the actual HTTP layer — Dart may use writev
for (const fn of ["write", "writev", "sendto", "sendmsg", "send"]) {
    const p = libc.findExportByName(fn);
    if (!p) continue;
    Interceptor.attach(p, {
        onEnter(args) {
            (this as any).fd = args[0].toInt32();
            (this as any).buf = args[1];
            (this as any).fn = fn;
        },
        onLeave(retval) {
            const fd = (this as any).fd;
            const n = retval.toInt32();
            if (n > 0 && beFds[fd]) {
                // Dump first bytes to see if we catch TLS ClientHello or actual HTTP
                let preview = "";
                try {
                    const buf = (this as any).buf;
                    for (let i = 0; i < Math.min(n, 200); i++) {
                        const b = buf.add(i).readU8();
                        preview += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
                    }
                } catch(e) {}
                send(`${T()} ${(this as any).fn}(fd=${fd}, n=${n}) :: ${preview}`);
            }
        }
    });
}

// Reads too
for (const fn of ["read", "readv", "recvfrom", "recv", "recvmsg"]) {
    const p = libc.findExportByName(fn);
    if (!p) continue;
    Interceptor.attach(p, {
        onEnter(args) {
            (this as any).fd = args[0].toInt32();
            (this as any).buf = args[1];
            (this as any).fn = fn;
        },
        onLeave(retval) {
            const fd = (this as any).fd;
            const n = retval.toInt32();
            if (n > 0 && beFds[fd] && n < 100000) {
                let preview = "";
                try {
                    const buf = (this as any).buf;
                    for (let i = 0; i < Math.min(n, 200); i++) {
                        const b = buf.add(i).readU8();
                        preview += (b >= 32 && b < 127) ? String.fromCharCode(b) : ".";
                    }
                } catch(e) {}
                send(`${T()} ${(this as any).fn}(fd=${fd}, n=${n}) :: ${preview}`);
            }
        }
    });
}

send(`${T()} Net capture hooks installed. Backend=${BACKEND}`);
