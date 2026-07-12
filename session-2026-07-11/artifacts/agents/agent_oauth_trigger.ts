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

                // Directly call vx.c() with a fake successful result
                // vx.c(long j, int i, String str, String str2, String str3, boolean z)
                // j = callback ID (any long), i = status (0=success), str = sub (Google user ID),
                // str2 = id_token, str3 = error (empty), z = withResult
                const vx = Java.use("androidx.appcompat.view.menu.vx");
                send(`${T()} vx class found`);
                
                // Generate fake JWT for the token
                const fakeJWT = "eyJhbGciOiJSUzI1NiJ9.eyJpc3MiOiJhY2NvdW50cy5nb29nbGUuY29tIiwic3ViIjoiMTE3MjgzOTQ2NTAyODM3NDY1IiwiZW1haWwiOiJ0ZXN0QGdtYWlsLmNvbSIsImF1ZCI6IjkxODAxMDE1MjQ1NS10YmE4YWppY2RtbHFudG9sZ2VhMXZ0bHJjOTRuaXAzcC5hcHBzLmdvb2dsZXVzZXJjb250ZW50LmNvbSJ9.fake_sig";
                const fakeSub = "117283946502837465";
                
                // Call vx.c directly (bypasses the browser flow entirely)
                try {
                    vx.c(Java.use("java.lang.Long").$new(12345678), 0, fakeSub, fakeJWT, "", false);
                    send(`${T()} vx.c() CALLED with fake OAuth success!`);
                } catch(e) {
                    send(`${T()} vx.c() error: ${e}`);
                }

                // Also try: directly call logIn to trigger the flow start
                // logIn(String str, long j) — str is the client ID or token
                try {
                    const clientId = "918010152455-tbk8ajicdmlqntolgea1vtlrc94nip3p.apps.googleusercontent.com";
                    Native.logIn(clientId, Java.use("java.lang.Long").$new(Date.now()));
                    send(`${T()} Native.logIn() CALLED`);
                } catch(e) {
                    send(`${T()} logIn error: ${e}`);
                }

                // Check cip_pub after
                setTimeout(() => {
                    try {
                        const ctx = Java.use("android.app.ActivityThread").currentApplication();
                        const prefs = ctx.getSharedPreferences("com.snake", 0);
                        const cipPub = prefs.getString("cip_pub", "EMPTY");
                        send(`${T()} cip_pub = "${cipPub}"`);
                    } catch(e) { send(`${T()} prefs read err: ${e}`); }
                }, 5000);

                send(`${T()} OAuth trigger done`);
            } catch(e) { send(`${T()} err: ${e}`); }
        },
        onComplete() {}
    });
});
