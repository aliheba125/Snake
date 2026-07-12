package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public abstract class qa1 {
    public static final int a = Process.myUid();
    public static final Method b;
    public static final Method c;
    public static final Method d;
    public static final Method e;
    public static final Method f;
    public static final Method g;
    public static final Method h;
    public static final Method i;

    /* JADX WARN: Can't wrap try/catch for region: R(25:0|1|(2:2|3)|4|(21:47|48|7|8|9|10|11|12|13|(12:39|40|16|(9:35|36|19|(6:31|32|22|(2:27|28)|24|25)|21|22|(0)|24|25)|18|19|(0)|21|22|(0)|24|25)|15|16|(0)|18|19|(0)|21|22|(0)|24|25)|6|7|8|9|10|11|12|13|(0)|15|16|(0)|18|19|(0)|21|22|(0)|24|25) */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x004d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x003d, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x009c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x007e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x006c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0056 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Method method6 = null;
        try {
            method = WorkSource.class.getMethod("add", Integer.TYPE);
        } catch (Exception unused) {
            method = null;
        }
        b = method;
        if (qi0.c()) {
            try {
                method2 = WorkSource.class.getMethod("add", Integer.TYPE, String.class);
            } catch (Exception unused2) {
            }
            c = method2;
            Method method7 = WorkSource.class.getMethod("size", new Class[0]);
            d = method7;
            Method method8 = WorkSource.class.getMethod("get", Integer.TYPE);
            e = method8;
            if (qi0.c()) {
                try {
                    method3 = WorkSource.class.getMethod("getName", Integer.TYPE);
                } catch (Exception unused3) {
                }
                f = method3;
                if (qi0.i()) {
                    try {
                        method4 = WorkSource.class.getMethod("createWorkChain", new Class[0]);
                    } catch (Exception unused4) {
                    }
                    g = method4;
                    if (qi0.i()) {
                        try {
                            method5 = Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
                        } catch (Exception unused5) {
                        }
                        h = method5;
                        if (qi0.i()) {
                            try {
                                method6 = WorkSource.class.getMethod("isEmpty", new Class[0]);
                                method6.setAccessible(true);
                            } catch (Exception unused6) {
                            }
                        }
                        i = method6;
                    }
                    method5 = null;
                    h = method5;
                    if (qi0.i()) {
                    }
                    i = method6;
                }
                method4 = null;
                g = method4;
                if (qi0.i()) {
                }
                method5 = null;
                h = method5;
                if (qi0.i()) {
                }
                i = method6;
            }
            method3 = null;
            f = method3;
            if (qi0.i()) {
            }
            method4 = null;
            g = method4;
            if (qi0.i()) {
            }
            method5 = null;
            h = method5;
            if (qi0.i()) {
            }
            i = method6;
        }
        method2 = null;
        c = method2;
        Method method72 = WorkSource.class.getMethod("size", new Class[0]);
        d = method72;
        Method method82 = WorkSource.class.getMethod("get", Integer.TYPE);
        e = method82;
        if (qi0.c()) {
        }
        method3 = null;
        f = method3;
        if (qi0.i()) {
        }
        method4 = null;
        g = method4;
        if (qi0.i()) {
        }
        method5 = null;
        h = method5;
        if (qi0.i()) {
        }
        i = method6;
    }

    public static void a(WorkSource workSource, int i2, String str) {
        Method method = c;
        if (method != null) {
            if (str == null) {
                str = "";
            }
            try {
                method.invoke(workSource, Integer.valueOf(i2), str);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        Method method2 = b;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }

    public static WorkSource b(Context context, String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo c2 = sa1.a(context).c(str, 0);
                if (c2 == null) {
                    "Could not get applicationInfo from package: ".concat(str);
                    return null;
                }
                int i2 = c2.uid;
                WorkSource workSource = new WorkSource();
                a(workSource, i2, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                "Could not find package: ".concat(str);
            }
        }
        return null;
    }

    public static boolean c(Context context) {
        return (context == null || context.getPackageManager() == null || sa1.a(context).b("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }
}
