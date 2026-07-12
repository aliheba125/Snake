import Java from "frida-java-bridge";
const t0 = Date.now();
function T() { return `[+${Date.now()-t0}ms]`; }

Java.perform(() => {
    let found = false;
    Java.enumerateClassLoaders({
        onMatch(loader: any) {
            if (found) return;
            try {
                (Java.classFactory as any).loader = loader;
                const Native = Java.use("com.snake.helper.Native");
                found = true;
                send(`${T()} Native found`);

                // Exhaustive djp sweep with wider index range
                // Try simple sequential 0-100, then structured indices
                send(`=== djp sequential 0-50 ===`);
                for (let i = 0; i <= 50; i++) {
                    try {
                        const r = Native.djp(i);
                        if (r && r.length > 0) {
                            let hex = "";
                            for (let j = 0; j < Math.min(r.length, 128); j++)
                                hex += ("0"+(r[j]&0xff).toString(16)).slice(-2);
                            send(`djp(${i}) len=${r.length} = ${hex}`);
                        }
                    } catch(e) { /* SIGSEGV = invalid */ }
                }

                // Structured like ilil
                send(`=== djp structured (0xfXXXXX) ===`);
                const structIdx = [
                    0xf11301, 0xf11501, 0xf11520, 0xf11521, 0xf21501, 0xf31501,
                    0xf11001, 0xf11002, 0xf12001, 0xf13001, 0xf14001,
                    1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 100, 200, 256, 512, 1024
                ];
                for (const idx of structIdx) {
                    try {
                        const r = Native.djp(idx);
                        if (r && r.length > 0) {
                            let hex = "";
                            for (let j = 0; j < Math.min(r.length, 128); j++)
                                hex += ("0"+(r[j]&0xff).toString(16)).slice(-2);
                            send(`djp(0x${idx.toString(16)}) len=${r.length} = ${hex}`);
                        }
                    } catch(e) {}
                }

                // Also try to get method signatures of ALL Native methods
                send(`=== Native method signatures ===`);
                const methods = Native.class.getDeclaredMethods();
                for (let i = 0; i < methods.length; i++) {
                    send(`  ${methods[i].toString().substring(0, 150)}`);
                }

                send(`=== DONE ===`);
            } catch(e) { send(`err: ${e}`); }
        },
        onComplete() {}
    });
});
