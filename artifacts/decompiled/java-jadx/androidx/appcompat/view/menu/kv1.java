package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ProviderInfo;
import android.net.Uri;
import android.os.Build;

/* loaded from: classes.dex */
public abstract class kv1 {
    public static volatile rg0 a = rg0.a();
    public static final Object b = new Object();

    public static boolean a(Context context) {
        return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & 129) != 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x0076, code lost:
    
        if ("com.google.android.gms".equals(r0.packageName) != false) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(Context context, Uri uri) {
        String authority = uri.getAuthority();
        boolean z = false;
        if (!"com.google.android.gms.phenotype".equals(authority)) {
            StringBuilder sb = new StringBuilder();
            sb.append(authority);
            sb.append(" is an unsupported authority. Only com.google.android.gms.phenotype authority is supported.");
            return false;
        }
        if (a.c()) {
            return ((Boolean) a.b()).booleanValue();
        }
        synchronized (b) {
            try {
                if (a.c()) {
                    return ((Boolean) a.b()).booleanValue();
                }
                if (!"com.google.android.gms".equals(context.getPackageName())) {
                    ProviderInfo resolveContentProvider = context.getPackageManager().resolveContentProvider("com.google.android.gms.phenotype", Build.VERSION.SDK_INT < 29 ? 0 : 268435456);
                    if (resolveContentProvider != null) {
                    }
                    a = rg0.d(Boolean.valueOf(z));
                    return ((Boolean) a.b()).booleanValue();
                }
                if (a(context)) {
                    z = true;
                }
                a = rg0.d(Boolean.valueOf(z));
                return ((Boolean) a.b()).booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
