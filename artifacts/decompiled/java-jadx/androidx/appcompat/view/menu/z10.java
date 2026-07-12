package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageParser;
import android.os.Environment;
import android.os.Process;
import android.text.TextUtils;
import com.snake.helper.Native;
import java.io.File;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public class z10 {
    public static final z10 b = new z10();
    public static final o21 c = new o21();
    public static final o21 d = new o21();
    public final Map a = new LinkedHashMap();

    public static z10 d() {
        return b;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        d.a(str);
        Native.awl(str);
    }

    public void b(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2) || this.a.get(str) != null) {
            return;
        }
        c.a(str);
        this.a.put(str, str2);
        if (!new File(str2).exists()) {
            lr.h(str2);
        }
        Native.aior(str, str2);
    }

    public void c(Context context) {
        Map linkedHashMap = new LinkedHashMap();
        HashSet hashSet = new HashSet();
        try {
            int q = yu0.q();
            for (ApplicationInfo applicationInfo : yu0.u().j(PackageParser.PARSE_IS_PRIVILEGED, jv0.N2())) {
                linkedHashMap.put(String.format("/data/data/%s/lib", applicationInfo.packageName), applicationInfo.nativeLibraryDir);
                linkedHashMap.put(String.format("/data/user/%d/%s/lib", Integer.valueOf(q), applicationInfo.packageName), applicationInfo.nativeLibraryDir);
                linkedHashMap.put(String.format("/data/user_de/%d/%s/lib", Integer.valueOf(q), applicationInfo.packageName), applicationInfo.nativeLibraryDir);
                linkedHashMap.put(String.format("/data/data/%s", applicationInfo.packageName), applicationInfo.dataDir);
                linkedHashMap.put(String.format("/data/user/%d/%s", Integer.valueOf(q), applicationInfo.packageName), applicationInfo.dataDir);
                linkedHashMap.put(String.format("/data/user_de/%d/%s", Integer.valueOf(q), applicationInfo.packageName), applicationInfo.deviceProtectedDataDir);
            }
            if (yu0.m().getExternalCacheDir() != null && context.getExternalCacheDir() != null) {
                File n = lv0.n(jv0.N2());
                linkedHashMap.put("/sdcard", n.getAbsolutePath());
                linkedHashMap.put(String.format("/storage/emulated/%d", Integer.valueOf(q)), n.getAbsolutePath());
                hashSet.add("/sdcard/Pictures");
                hashSet.add(String.format("/storage/emulated/%d/Pictures", Integer.valueOf(q)));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_PODCASTS));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_RINGTONES));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_ALARMS));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_NOTIFICATIONS));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_PICTURES));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_MOVIES));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_DOWNLOADS));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_DCIM));
                hashSet.add(String.format("/storage/emulated/%d/%s", Integer.valueOf(q), Environment.DIRECTORY_MUSIC));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_PODCASTS));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_RINGTONES));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_ALARMS));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_NOTIFICATIONS));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_PICTURES));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_MOVIES));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_DOWNLOADS));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_DCIM));
                hashSet.add(String.format("/sdcard/%s", Environment.DIRECTORY_MUSIC));
            }
            if (yu0.h().b()) {
                e(linkedHashMap);
            }
            f(linkedHashMap);
        } catch (Exception e) {
            e.printStackTrace();
        }
        for (String str : linkedHashMap.keySet()) {
            d().b(str, (String) linkedHashMap.get(str));
        }
        Iterator it = hashSet.iterator();
        while (it.hasNext()) {
            d().a((String) it.next());
        }
        Native.eio();
    }

    public final void e(Map map) {
        map.put("/system/app/Superuser.apk", "/system/app/Superuser.apk-fake");
        map.put("/sbin/su", "/sbin/su-fake");
        map.put("/system/bin/su", "/system/bin/su-fake");
        map.put("/system/xbin/su", "/system/xbin/su-fake");
        map.put("/data/local/xbin/su", "/data/local/xbin/su-fake");
        map.put("/data/local/bin/su", "/data/local/bin/su-fake");
        map.put("/system/sd/xbin/su", "/system/sd/xbin/su-fake");
        map.put("/system/bin/failsafe/su", "/system/bin/failsafe/su-fake");
        map.put("/data/local/su", "/data/local/su-fake");
        map.put("/su/bin/su", "/su/bin/su-fake");
    }

    public final void f(Map map) {
        int F2 = jv0.F2();
        String str = "/proc/" + Process.myPid() + "/";
        String absolutePath = new File(lv0.r(F2), "cmdline").getAbsolutePath();
        map.put(str + "cmdline", absolutePath);
        map.put("/proc/self/cmdline", absolutePath);
    }

    public File g(File file) {
        if (file == null) {
            return null;
        }
        return new File(h(file.getAbsolutePath()));
    }

    public String h(String str) {
        if (TextUtils.isEmpty(str) || str.contains("/root/")) {
            return str;
        }
        String b2 = d.b(str);
        if (!TextUtils.isEmpty(b2)) {
            return b2;
        }
        String b3 = c.b(str);
        if (TextUtils.isEmpty(b3)) {
            return str;
        }
        String str2 = (String) this.a.get(b3);
        Objects.requireNonNull(str2);
        return str.replace(b3, str2);
    }
}
