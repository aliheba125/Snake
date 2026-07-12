package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;

/* loaded from: classes.dex */
public class gy {
    public static gy c;
    public final Context a;
    public volatile String b;

    public gy(Context context) {
        this.a = context.getApplicationContext();
    }

    public static gy a(Context context) {
        mj0.i(context);
        synchronized (gy.class) {
            try {
                if (c == null) {
                    k92.d(context);
                    c = new gy(context);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return c;
    }

    public static final w02 d(PackageInfo packageInfo, w02... w02VarArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr == null || signatureArr.length != 1) {
            return null;
        }
        x22 x22Var = new x22(packageInfo.signatures[0].toByteArray());
        for (int i = 0; i < w02VarArr.length; i++) {
            if (w02VarArr[i].equals(x22Var)) {
                return w02VarArr[i];
            }
        }
        return null;
    }

    public static final boolean e(PackageInfo packageInfo, boolean z) {
        if (z && packageInfo != null && ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName))) {
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            z = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
        }
        if (packageInfo != null && packageInfo.signatures != null) {
            if ((z ? d(packageInfo, e72.a) : d(packageInfo, e72.a[0])) != null) {
                return true;
            }
        }
        return false;
    }

    public boolean b(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (e(packageInfo, false)) {
            return true;
        }
        return e(packageInfo, true) && fy.d(this.a);
    }

    public boolean c(int i) {
        pf2 c2;
        int length;
        String[] packagesForUid = this.a.getPackageManager().getPackagesForUid(i);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c2 = null;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    mj0.i(c2);
                    break;
                }
                c2 = f(packagesForUid[i2], false, false);
                if (c2.a) {
                    break;
                }
                i2++;
            }
        } else {
            c2 = pf2.c("no pkgs");
        }
        c2.e();
        return c2.a;
    }

    public final pf2 f(String str, boolean z, boolean z2) {
        pf2 c2;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return pf2.c("null pkg");
        }
        if (str.equals(this.b)) {
            return pf2.b();
        }
        if (k92.e()) {
            c2 = k92.b(str, fy.d(this.a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.a.getPackageManager().getPackageInfo(str, 64);
                boolean d = fy.d(this.a);
                if (packageInfo == null) {
                    c2 = pf2.c("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        c2 = pf2.c("single cert required");
                    } else {
                        x22 x22Var = new x22(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        pf2 a = k92.a(str2, x22Var, d, false);
                        c2 = (!a.a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !k92.a(str2, x22Var, false, true).a) ? a : pf2.c("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e) {
                return pf2.d("no pkg ".concat(str), e);
            }
        }
        if (c2.a) {
            this.b = str;
        }
        return c2;
    }
}
