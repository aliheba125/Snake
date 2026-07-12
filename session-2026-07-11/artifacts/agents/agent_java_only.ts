import Java from "frida-java-bridge";

const t0 = Date.now();
function T() { return `[+${Date.now()-t0}ms]`; }

send(`${T()} Agent starting (Java-only, no libengine reads)`);

Java.perform(() => {
    send(`${T()} Java.perform entered`);
    
    let found = false;
    Java.enumerateClassLoaders({
        onMatch(loader: any) {
            if (found) return;
            try {
                (Java.classFactory as any).loader = loader;
                const Native = Java.use("com.snake.helper.Native");
                found = true;
                send(`${T()} Native class FOUND`);
                
                // Active ilil extraction (proven working in prior analysis)
                const known = [0xf11301, 0xf11501, 0xf11520, 0xf11521, 0xf21501, 0xf31501];
                for (const idx of known) {
                    try {
                        const r = Native.ilil(idx);
                        send(`${T()} ilil(0x${idx.toString(16)}) = "${r}"`);
                    } catch(e) {
                        send(`${T()} ilil(0x${idx.toString(16)}) CRASHED`);
                    }
                }
                
                // Explore undiscovered indices
                const explore = [
                    0xf11001, 0xf11002, 0xf11003, 0xf11100, 0xf11200, 0xf11400,
                    0xf11600, 0xf11700, 0xf11800, 0xf11900, 0xf11a00,
                    0xf21001, 0xf21101, 0xf31001, 0xf31101, 0xf31201
                ];
                for (const idx of explore) {
                    try {
                        const r = Native.ilil(idx);
                        if (r && r.length > 0) send(`${T()} ilil(0x${idx.toString(16)}) = "${r.substring(0,120)}"`);
                    } catch(e) {}
                }
                
                send(`${T()} ilil extraction done`);
            } catch(e) {}
        },
        onComplete() { if (!found) send(`${T()} Native NOT found`); }
    });
});

send(`${T()} agent done`);
