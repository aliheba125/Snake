package androidx.appcompat.view.menu;

import android.content.pm.ApplicationInfo;

/* loaded from: classes.dex */
public abstract class g71 {
    public static String a;
    public static String b;

    public static void a(String str, ApplicationInfo applicationInfo) {
        if (b != null) {
            return;
        }
        a = applicationInfo.packageName;
        b = str;
        wj0.b.b(str);
        cj.b.b(str, 0);
    }
}
