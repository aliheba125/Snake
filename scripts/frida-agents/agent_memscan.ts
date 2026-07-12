import Java from "frida-java-bridge";

// Scan writable memory for the API request plaintext
// It should contain "action" and "deviceId" as JSON or form-encoded

const t0 = Date.now();
function T() { return `[+${Date.now()-t0}ms]`; }

send(`${T()} Memory scan agent starting`);

// Scan for form-encoded "action=" pattern in writable memory
const actionBytes = [0x61, 0x63, 0x74, 0x69, 0x6f, 0x6e, 0x3d]; // "action="

let found = 0;
const ranges = Process.enumerateRanges("rw-");
for (const r of ranges) {
    if (r.size > 100 * 1024 * 1024) continue; // skip huge
    try {
        const hits = Memory.scanSync(r.base, r.size, "61 63 74 69 6f 6e 3d");
        for (const h of hits) {
            found++;
            if (found <= 20) {
                try {
                    const str = h.address.readCString();
                    if (str && str.length > 5 && str.length < 2000) {
                        send(`${T()} FOUND @${h.address}: "${str.substring(0, 300)}"`);
                    }
                } catch(e) {}
            }
        }
    } catch(e) {}
}
send(`${T()} "action=" pattern: ${found} hits`);

// Also scan for "encryptedData" 
let found2 = 0;
for (const r of ranges) {
    if (r.size > 100 * 1024 * 1024) continue;
    try {
        const hits = Memory.scanSync(r.base, r.size, "65 6e 63 72 79 70 74 65 64 44 61 74 61");
        for (const h of hits) {
            found2++;
            if (found2 <= 10) {
                try {
                    const nearby = h.address.sub(20).readCString();
                    send(`${T()} encryptedData @${h.address}: ctx="${nearby?.substring(0,200)}"`);
                } catch(e) {
                    try {
                        const after = h.address.readCString();
                        send(`${T()} encryptedData @${h.address}: "${after?.substring(0,200)}"`);
                    } catch(e2) {}
                }
            }
        }
    } catch(e) {}
}
send(`${T()} "encryptedData" pattern: ${found2} hits`);

// Scan for "deviceId" in writable memory
let found3 = 0;
for (const r of ranges) {
    if (r.size > 100 * 1024 * 1024) continue;
    try {
        const hits = Memory.scanSync(r.base, r.size, "64 65 76 69 63 65 49 64");
        for (const h of hits) {
            found3++;
            if (found3 <= 10) {
                try {
                    const str = h.address.readCString();
                    if (str && str.length > 5) send(`${T()} deviceId @${h.address}: "${str.substring(0,200)}"`);
                } catch(e) {}
            }
        }
    } catch(e) {}
}
send(`${T()} "deviceId" pattern: ${found3} hits`);

send(`${T()} scan complete`);
