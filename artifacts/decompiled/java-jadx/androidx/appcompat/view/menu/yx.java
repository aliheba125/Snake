package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.text.TextUtils;

/* loaded from: classes.dex */
public class yx {
    public static final int a = fy.a;
    public static final yx b = new yx();

    public static yx f() {
        return b;
    }

    public int a(Context context) {
        return fy.a(context);
    }

    public Intent b(Context context, int i, String str) {
        if (i != 1 && i != 2) {
            if (i != 3) {
                return null;
            }
            return ue2.c("com.google.android.gms");
        }
        if (context != null && rl.d(context)) {
            return ue2.a();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("gcore_");
        sb.append(a);
        sb.append("-");
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        sb.append("-");
        if (context != null) {
            sb.append(context.getPackageName());
        }
        sb.append("-");
        if (context != null) {
            try {
                sb.append(sa1.a(context).e(context.getPackageName(), 0).versionCode);
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        return ue2.b("com.google.android.gms", sb.toString());
    }

    public PendingIntent c(Context context, int i, int i2) {
        return d(context, i, i2, null);
    }

    public PendingIntent d(Context context, int i, int i2, String str) {
        Intent b2 = b(context, i, str);
        if (b2 == null) {
            return null;
        }
        return PendingIntent.getActivity(context, i2, b2, ym1.a | 134217728);
    }

    public String e(int i) {
        return fy.b(i);
    }

    public int g(Context context) {
        return h(context, a);
    }

    public int h(Context context, int i) {
        int e = fy.e(context, i);
        if (fy.f(context, e)) {
            return 18;
        }
        return e;
    }

    public boolean i(Context context, String str) {
        return fy.j(context, str);
    }

    public boolean j(int i) {
        return fy.h(i);
    }
}
