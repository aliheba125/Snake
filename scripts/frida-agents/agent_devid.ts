import Java from "frida-java-bridge";
Java.perform(() => {
    const Settings = Java.use("android.provider.Settings$Secure");
    const ctx = (Java.use("android.app.ActivityThread") as any).currentApplication();
    const cr = ctx.getContentResolver();
    const androidId = Settings.getString(cr, "android_id");
    send("android_id=" + androidId);

    // Check all shared prefs files
    const prefsDir = new java.io.File(ctx.getFilesDir().getParent() + "/shared_prefs");
    send("prefs_dir=" + prefsDir.getAbsolutePath());
    const files = prefsDir.listFiles();
    if (files) {
        for (let i = 0; i < files.length; i++) send("pref_file: " + files[i].getName());
    }
    
    // Read com.snake prefs
    const prefs = ctx.getSharedPreferences("com.snake", 0);
    const all = prefs.getAll();
    const it = all.entrySet().iterator();
    while (it.hasNext()) {
        const entry = it.next();
        send("com.snake: " + entry.getKey() + "=" + (entry.getValue()+"").substring(0,200));
    }

    // FlutterSecureStorage
    try {
        const sp = ctx.getSharedPreferences("FlutterSecureStorage", 0);
        const a = sp.getAll();
        const i2 = a.entrySet().iterator();
        while (i2.hasNext()) { const e = i2.next(); send("secure: " + e.getKey() + "=" + (e.getValue()+"").substring(0,200)); }
    } catch(e) {}

    // FlutterSharedPreferences
    try {
        const sp = ctx.getSharedPreferences("FlutterSharedPreferences", 0);
        const a = sp.getAll();
        const i2 = a.entrySet().iterator();
        while (i2.hasNext()) { const e = i2.next(); send("flutter: " + e.getKey() + "=" + (e.getValue()+"").substring(0,200)); }
    } catch(e) {}
});
