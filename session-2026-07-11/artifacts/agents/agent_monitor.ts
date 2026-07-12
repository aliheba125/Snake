import Java from "frida-java-bridge";

const t0 = Date.now();
function T() { return `[+${((Date.now()-t0)/1000).toFixed(1)}s]`; }

send(`${T()} Monitor agent`);

Java.perform(() => {
    let found = false;
    Java.enumerateClassLoaders({
        onMatch(loader: any) {
            if (found) return;
            try {
                (Java.classFactory as any).loader = loader;
                const Native = Java.use("com.snake.helper.Native");
                found = true;
                send(`${T()} Native class found — installing all hooks`);

                // pjowqpxe(Object, Object, Object)
                Native.pjowqpxe.overload("java.lang.Object", "java.lang.Object", "java.lang.Object")
                    .implementation = function(this: any, a: any, b: any, c: any) {
                    const aType = a ? (a.getClass ? a.getClass().getName() : typeof a) : "null";
                    const bType = b ? (b.getClass ? b.getClass().getName() : typeof b) : "null";
                    const cType = c ? (c.getClass ? c.getClass().getName() : typeof c) : "null";
                    send(`${T()} >>> pjowqpxe(${aType}, ${bType}, ${cType})`);
                    if (typeof a === "string" || (a && a.toString)) send(`    a=${a.toString().substring(0,200)}`);
                    if (typeof b === "string" || (b && b.toString)) send(`    b=${b.toString().substring(0,200)}`);
                    if (typeof c === "string" || (c && c.toString)) send(`    c=${c.toString().substring(0,200)}`);
                    return this.pjowqpxe(a, b, c);
                };

                // aior(String, String)
                Native.aior.overload("java.lang.String", "java.lang.String")
                    .implementation = function(this: any, s1: any, s2: any) {
                    send(`${T()} >>> aior("${s1}", "${s2}")`);
                    return this.aior(s1, s2);
                };

                // awl(String)
                Native.awl.overload("java.lang.String")
                    .implementation = function(this: any, s: any) {
                    send(`${T()} >>> awl("${s}")`);
                    return this.awl(s);
                };

                // ic(Context)
                Native.ic.overload("android.content.Context")
                    .implementation = function(this: any, ctx: any) {
                    send(`${T()} >>> ic(${ctx.getPackageName()})`);
                    return this.ic(ctx);
                };

                // update(Object, Method) — THE key hook for method-injection
                Native.update.overload("java.lang.Object", "java.lang.reflect.Method")
                    .implementation = function(this: any, obj: any, method: any) {
                    const cls = obj ? obj.getClass().getName() : "null";
                    const mName = method ? method.getName() : "null";
                    const mDecl = method ? method.getDeclaringClass().getName() : "?";
                    send(`${T()} >>> update(${cls}, ${mDecl}.${mName})`);
                    return this.update(obj, method);
                };

                // eio()
                Native.eio.overload().implementation = function(this: any) {
                    send(`${T()} >>> eio()`);
                    return this.eio();
                };

                // chl(byte[]) — license check
                Native.chl.overload("[B").implementation = function(this: any, data: any) {
                    const result = this.chl(data);
                    let hex = "";
                    if (data) for (let i = 0; i < Math.min(data.length, 64); i++) hex += ("0"+(data[i]&0xff).toString(16)).slice(-2);
                    send(`${T()} >>> chl(${data?data.length:0}B) => ${result} hex=${hex}`);
                    return result;
                };

                // i(int)
                try {
                    Native.i.overload("int").implementation = function(this: any, v: any) {
                        send(`${T()} >>> i(${v})`);
                        return this.i(v);
                    };
                } catch(e) {}

                // gcuid(int)
                try {
                    Native.gcuid.overload("int").implementation = function(this: any, v: any) {
                        const r = this.gcuid(v);
                        send(`${T()} >>> gcuid(${v}) => ${r}`);
                        return r;
                    };
                } catch(e) {}

                // ac() — unknown
                try {
                    Native.ac.overload().implementation = function(this: any) {
                        send(`${T()} >>> ac()`);
                        return this.ac();
                    };
                } catch(e) {}

                send(`${T()} ALL HOOKS INSTALLED — waiting for calls`);
            } catch(e) {}
        },
        onComplete() { if (!found) send(`${T()} NOT FOUND`); }
    });
});
