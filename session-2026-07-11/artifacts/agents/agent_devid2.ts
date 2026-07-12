import Java from "frida-java-bridge";
Java.perform(() => {
    try {
        const Settings = Java.use("android.provider.Settings$Secure");
        const ctx = (Java.use("android.app.ActivityThread") as any).currentApplication();
        const cr = ctx.getContentResolver();
        const androidId = Settings.getString(cr, "android_id");
        send("android_id=" + androidId);
        send("packageName=" + ctx.getPackageName());

        // All prefs in com.snake
        const prefs = ctx.getSharedPreferences("com.snake", 0);
        const all = prefs.getAll();
        const keys = all.keySet().toArray();
        for (let i = 0; i < keys.length; i++) {
            const k = keys[i].toString();
            const v = all.get(k);
            send("pref[" + k + "]=" + (v !== null ? v.toString().substring(0, 200) : "null"));
        }

        // FlutterSecureStorage
        try {
            const sp2 = ctx.getSharedPreferences("FlutterSecureStorage", 0);
            const a2 = sp2.getAll();
            const k2 = a2.keySet().toArray();
            send("FlutterSecureStorage keys: " + k2.length);
            for (let i = 0; i < k2.length; i++) {
                const k = k2[i].toString();
                const v = a2.get(k);
                send("sec[" + k + "]=" + (v !== null ? v.toString().substring(0, 200) : "null"));
            }
        } catch(e) { send("no FlutterSecureStorage"); }

        // List all prefs XML files
        const File = Java.use("java.io.File");
        const prefsDir = File.$new(ctx.getFilesDir().getParent() + "/shared_prefs");
        const files = prefsDir.listFiles();
        if (files) {
            for (let i = 0; i < files.length; i++) send("file: " + files[i].getName());
        }
    } catch(e) { send("err: " + e); }
});
