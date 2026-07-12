📦
2054 /agent_memscan.js
✄
// agent_memscan.ts
var t0 = Date.now();
function T() {
  return `[+${Date.now() - t0}ms]`;
}
send(`${T()} Memory scan agent starting`);
var found = 0;
var ranges = Process.enumerateRanges("rw-");
for (const r of ranges) {
  if (r.size > 100 * 1024 * 1024)
    continue;
  try {
    const hits = Memory.scanSync(r.base, r.size, "61 63 74 69 6f 6e 3d");
    for (const h of hits) {
      found++;
      if (found <= 20) {
        try {
          const str = h.address.readCString();
          if (str && str.length > 5 && str.length < 2e3) {
            send(`${T()} FOUND @${h.address}: "${str.substring(0, 300)}"`);
          }
        } catch (e) {
        }
      }
    }
  } catch (e) {
  }
}
send(`${T()} "action=" pattern: ${found} hits`);
var found2 = 0;
for (const r of ranges) {
  if (r.size > 100 * 1024 * 1024)
    continue;
  try {
    const hits = Memory.scanSync(r.base, r.size, "65 6e 63 72 79 70 74 65 64 44 61 74 61");
    for (const h of hits) {
      found2++;
      if (found2 <= 10) {
        try {
          const nearby = h.address.sub(20).readCString();
          send(`${T()} encryptedData @${h.address}: ctx="${nearby?.substring(0, 200)}"`);
        } catch (e) {
          try {
            const after = h.address.readCString();
            send(`${T()} encryptedData @${h.address}: "${after?.substring(0, 200)}"`);
          } catch (e2) {
          }
        }
      }
    }
  } catch (e) {
  }
}
send(`${T()} "encryptedData" pattern: ${found2} hits`);
var found3 = 0;
for (const r of ranges) {
  if (r.size > 100 * 1024 * 1024)
    continue;
  try {
    const hits = Memory.scanSync(r.base, r.size, "64 65 76 69 63 65 49 64");
    for (const h of hits) {
      found3++;
      if (found3 <= 10) {
        try {
          const str = h.address.readCString();
          if (str && str.length > 5)
            send(`${T()} deviceId @${h.address}: "${str.substring(0, 200)}"`);
        } catch (e) {
        }
      }
    }
  } catch (e) {
  }
}
send(`${T()} "deviceId" pattern: ${found3} hits`);
send(`${T()} scan complete`);
