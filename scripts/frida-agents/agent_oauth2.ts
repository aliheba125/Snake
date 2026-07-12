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

                const vx = Java.use("androidx.appcompat.view.menu.vx");
                
                // Fix: use Java long primitive directly
                const Long = Java.use("java.lang.Long");
                
                // vx.c(long, int, String, String, String, boolean)
                // In frida-java-bridge, primitive long = just a number
                try {
                    vx.c.overload("long", "int", "java.lang.String", "java.lang.String", "java.lang.String", "boolean")
                        .call(vx, 12345678, 0, "117283946502837465", 
                            "eyJhbGciOiJSUzI1NiJ9.eyJzdWIiOiIxMTcyODM5NDY1MDI4Mzc0NjUiLCJlbWFpbCI6InRlc3RAZ21haWwuY29tIn0.fake",
                            "", false);
                    send(`${T()} vx.c() SUCCESS`);
                } catch(e) {
                    send(`${T()} vx.c() err: ${e}`);
                    // Try alternative: call logIn with proper types
                    try {
                        Native.logIn.overload("java.lang.String", "long")
                            .call(Native, "918010152455-tbk8ajicdmlqntolgea1vtlrc94nip3p.apps.googleusercontent.com", 99999);
                        send(`${T()} logIn() called`);
                    } catch(e2) { send(`${T()} logIn err: ${e2}`); }
                }

                // Wait and check cip_pub
                setTimeout(() => {
                    try {
                        const ctx = (Java.use("android.app.ActivityThread") as any).currentApplication();
                        const prefs = ctx.getSharedPreferences("com.snake", 0);
                        const cipPub = prefs.getString("cip_pub", "EMPTY");
                        send(`${T()} cip_pub = "${cipPub.substring(0, 200)}"`);
                        
                        // Also check if any new prefs were written
                        const allPrefs = prefs.getAll();
                        send(`${T()} all prefs keys: ${allPrefs.keySet().toString()}`);
                    } catch(e) { send(`${T()} prefs err: ${e}`); }
                }, 8000);

            } catch(e) { send(`${T()} main err: ${e}`); }
        },
        onComplete() {}
    });
});
