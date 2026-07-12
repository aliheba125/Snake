📦
2545 /agent_net_capture.js
✄
// agent_net_capture.ts
var t0 = Date.now();
function T() {
  return `[+${Date.now() - t0}ms]`;
}
var libc = Process.findModuleByName("libc.so");
var BACKEND = "92.205.103.45";
var beFds = {};
Interceptor.attach(libc.findExportByName("connect"), {
  onEnter(args) {
    try {
      const fd = args[0].toInt32();
      const sa = args[1];
      const fam = sa.readU16();
      if (fam === 2) {
        const port = sa.add(2).readU8() << 8 | sa.add(3).readU8();
        const ip = `${sa.add(4).readU8()}.${sa.add(5).readU8()}.${sa.add(6).readU8()}.${sa.add(7).readU8()}`;
        if (ip === BACKEND && port > 0) {
          beFds[fd] = true;
          send(`${T()} CONNECT backend fd=${fd} ${ip}:${port}`);
        }
      }
    } catch (e) {
    }
  }
});
Interceptor.attach(libc.findExportByName("close"), {
  onEnter(args) {
    const fd = args[0].toInt32();
    if (beFds[fd]) {
      send(`${T()} CLOSE fd=${fd}`);
      delete beFds[fd];
    }
  }
});
for (const fn of ["write", "writev", "sendto", "sendmsg", "send"]) {
  const p = libc.findExportByName(fn);
  if (!p)
    continue;
  Interceptor.attach(p, {
    onEnter(args) {
      this.fd = args[0].toInt32();
      this.buf = args[1];
      this.fn = fn;
    },
    onLeave(retval) {
      const fd = this.fd;
      const n = retval.toInt32();
      if (n > 0 && beFds[fd]) {
        let preview = "";
        try {
          const buf = this.buf;
          for (let i = 0; i < Math.min(n, 200); i++) {
            const b = buf.add(i).readU8();
            preview += b >= 32 && b < 127 ? String.fromCharCode(b) : ".";
          }
        } catch (e) {
        }
        send(`${T()} ${this.fn}(fd=${fd}, n=${n}) :: ${preview}`);
      }
    }
  });
}
for (const fn of ["read", "readv", "recvfrom", "recv", "recvmsg"]) {
  const p = libc.findExportByName(fn);
  if (!p)
    continue;
  Interceptor.attach(p, {
    onEnter(args) {
      this.fd = args[0].toInt32();
      this.buf = args[1];
      this.fn = fn;
    },
    onLeave(retval) {
      const fd = this.fd;
      const n = retval.toInt32();
      if (n > 0 && beFds[fd] && n < 1e5) {
        let preview = "";
        try {
          const buf = this.buf;
          for (let i = 0; i < Math.min(n, 200); i++) {
            const b = buf.add(i).readU8();
            preview += b >= 32 && b < 127 ? String.fromCharCode(b) : ".";
          }
        } catch (e) {
        }
        send(`${T()} ${this.fn}(fd=${fd}, n=${n}) :: ${preview}`);
      }
    }
  });
}
send(`${T()} Net capture hooks installed. Backend=${BACKEND}`);
