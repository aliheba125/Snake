package androidx.appcompat.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public abstract class q71 {
    public static final long a = TimeUnit.MINUTES.toMillis(1);
    public static final Object b = new Object();
    public static o71 c;

    public static void b(Context context) {
        if (c == null) {
            o71 o71Var = new o71(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            c = o71Var;
            o71Var.d(true);
        }
    }

    public static void c(Intent intent) {
        synchronized (b) {
            try {
                if (c != null && d(intent)) {
                    g(intent, false);
                    c.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static boolean d(Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    public static void f(Context context, ja1 ja1Var, final Intent intent) {
        synchronized (b) {
            try {
                b(context);
                boolean d = d(intent);
                g(intent, true);
                if (!d) {
                    c.a(a);
                }
                ja1Var.c(intent).b(new gg0() { // from class: androidx.appcompat.view.menu.p71
                    @Override // androidx.appcompat.view.menu.gg0
                    public final void a(zy0 zy0Var) {
                        q71.c(intent);
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void g(Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    public static ComponentName h(Context context, Intent intent) {
        synchronized (b) {
            try {
                b(context);
                boolean d = d(intent);
                g(intent, true);
                ComponentName startService = context.startService(intent);
                if (startService == null) {
                    return null;
                }
                if (!d) {
                    c.a(a);
                }
                return startService;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
