package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;

/* loaded from: classes.dex */
public abstract class h31 {
    public static boolean a(Context context, int i) {
        if (!b(context, i, "com.google.android.gms")) {
            return false;
        }
        try {
            return gy.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    public static boolean b(Context context, int i, String str) {
        return sa1.a(context).g(i, str);
    }
}
