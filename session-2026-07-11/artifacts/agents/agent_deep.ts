import Java from "frida-java-bridge";

const t0 = Date.now();
function T() { return `[+${Date.now()-t0}ms]`; }

send(`${T()} Deep extraction agent starting`);

Java.perform(() => {
    let found = false;
    Java.enumerateClassLoaders({
        onMatch(loader: any) {
            if (found) return;
            try {
                (Java.classFactory as any).loader = loader;
                const Native = Java.use("com.snake.helper.Native");
                found = true;
                send(`${T()} Native FOUND`);

                // === 1. SYSTEMATIC ilil SWEEP ===
                // The index format is 0xFGGHHII where G=group, H=subgroup, I=index
                // Sweep all groups 0x10-0x40, subgroups 01-09, indices 00-21
                send(`${T()} === SYSTEMATIC ilil SWEEP ===`);
                let ilCount = 0;
                const groups = [0xf1, 0xf2, 0xf3, 0xf4, 0xf5];
                const subgroups = [0x11, 0x12, 0x13, 0x14, 0x15, 0x16, 0x17, 0x18, 0x19, 0x21, 0x22, 0x31, 0x41];
                for (const g of groups) {
                    for (const sg of subgroups) {
                        for (let i = 0; i <= 0x30; i++) {
                            const idx = (g << 16) | (sg << 8) | i;
                            try {
                                const r = Native.ilil(idx);
                                if (r && r.length > 0) {
                                    ilCount++;
                                    send(`${T()} ilil(0x${idx.toString(16)}) = "${r.substring(0, 200)}"`);
                                }
                            } catch(e) {
                                // SIGSEGV on invalid index — skip silently
                                break; // this subgroup is empty, move on
                            }
                        }
                    }
                }
                send(`${T()} ilil sweep done: ${ilCount} strings found`);

                // === 2. djp EXTRACTION (byte arrays — may contain keys) ===
                send(`${T()} === djp EXTRACTION ===`);
                let djpCount = 0;
                for (const g of groups) {
                    for (const sg of subgroups) {
                        for (let i = 0; i <= 0x10; i++) {
                            const idx = (g << 16) | (sg << 8) | i;
                            try {
                                const r = Native.djp(idx);
                                if (r && r.length > 0) {
                                    djpCount++;
                                    let hex = "";
                                    for (let j = 0; j < Math.min(r.length, 96); j++)
                                        hex += ("0" + (r[j] & 0xff).toString(16)).slice(-2);
                                    send(`${T()} djp(0x${idx.toString(16)}) len=${r.length} = ${hex}`);
                                }
                            } catch(e) { break; }
                        }
                    }
                }
                send(`${T()} djp sweep done: ${djpCount} arrays found`);

                // === 3. Hook ALL native methods for observation ===
                send(`${T()} === HOOKING ALL Native METHODS ===`);

                // pjowqpxe(Object, Object, Object) — the mystery 3-arg function
                try {
                    Native.pjowqpxe.overload("java.lang.Object", "java.lang.Object", "java.lang.Object")
                        .implementation = function(this: any, a: any, b: any, c: any) {
                        send(`${T()} pjowqpxe(${a?.getClass?.()?.getName?.()}, ${b?.getClass?.()?.getName?.()}, ${c?.getClass?.()?.getName?.()})`);
                        const result = this.pjowqpxe(a, b, c);
                        return result;
                    };
                    send(`${T()} [HOOK] pjowqpxe OK`);
                } catch(e) { send(`${T()} pjowqpxe err: ${e}`); }

                // ic(Context) — init context
                try {
                    Native.ic.overload("android.content.Context").implementation = function(this: any, ctx: any) {
                        send(`${T()} ic(Context: ${ctx?.getPackageName?.()}) CALLED`);
                        return this.ic(ctx);
                    };
                    send(`${T()} [HOOK] ic OK`);
                } catch(e) { send(`${T()} ic err: ${e}`); }

                // update(Object, Method) — method hooking
                try {
                    Native.update.overload("java.lang.Object", "java.lang.reflect.Method")
                        .implementation = function(this: any, obj: any, method: any) {
                        send(`${T()} update(${obj?.getClass?.()?.getName?.()}, ${method?.getName?.()}) CALLED`);
                        return this.update(obj, method);
                    };
                    send(`${T()} [HOOK] update OK`);
                } catch(e) { send(`${T()} update err: ${e}`); }

                // aior — unknown
                try {
                    Native.aior.overload().implementation = function(this: any) {
                        send(`${T()} aior() CALLED`);
                        return this.aior();
                    };
                    send(`${T()} [HOOK] aior OK`);
                } catch(e) { send(`${T()} aior err: ${e}`); }

                // eio — unknown
                try {
                    Native.eio.overload().implementation = function(this: any) {
                        send(`${T()} eio() CALLED`);
                        return this.eio();
                    };
                    send(`${T()} [HOOK] eio OK`);
                } catch(e) { send(`${T()} eio err: ${e}`); }

                // awl — unknown
                try {
                    Native.awl.overload().implementation = function(this: any) {
                        send(`${T()} awl() CALLED`);
                        return this.awl();
                    };
                    send(`${T()} [HOOK] awl OK`);
                } catch(e) { send(`${T()} awl err: ${e}`); }

                send(`${T()} All hooks installed. Monitoring...`);
            } catch(e) {}
        },
        onComplete() { if (!found) send(`${T()} NOT FOUND`); }
    });
});

send(`${T()} Agent ready — waiting for native calls`);
