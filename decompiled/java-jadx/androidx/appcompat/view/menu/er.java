package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class er {
    public static final Object c = new Object();
    public static ja1 d;
    public final Context a;
    public final Executor b = new ic0();

    public er(Context context) {
        this.a = context;
    }

    public static zy0 e(Context context, Intent intent, boolean z) {
        Log.isLoggable("FirebaseMessaging", 3);
        ja1 f = f(context, "com.google.firebase.MESSAGING_EVENT");
        if (!z) {
            return f.c(intent).f(new ic0(), new yg() { // from class: androidx.appcompat.view.menu.dr
                @Override // androidx.appcompat.view.menu.yg
                public final Object a(zy0 zy0Var) {
                    Integer g;
                    g = er.g(zy0Var);
                    return g;
                }
            });
        }
        if (dt0.b().e(context)) {
            q71.f(context, f, intent);
        } else {
            f.c(intent);
        }
        return jz0.e(-1);
    }

    public static ja1 f(Context context, String str) {
        ja1 ja1Var;
        synchronized (c) {
            try {
                if (d == null) {
                    d = new ja1(context, str);
                }
                ja1Var = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ja1Var;
    }

    public static /* synthetic */ Integer g(zy0 zy0Var) {
        return -1;
    }

    public static /* synthetic */ Integer h(Context context, Intent intent) {
        return Integer.valueOf(dt0.b().g(context, intent));
    }

    public static /* synthetic */ Integer i(zy0 zy0Var) {
        return 403;
    }

    public static /* synthetic */ zy0 j(Context context, Intent intent, boolean z, zy0 zy0Var) {
        return (qi0.h() && ((Integer) zy0Var.i()).intValue() == 402) ? e(context, intent, z).f(new ic0(), new yg() { // from class: androidx.appcompat.view.menu.cr
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var2) {
                Integer i;
                i = er.i(zy0Var2);
                return i;
            }
        }) : zy0Var;
    }

    public zy0 k(Intent intent) {
        String stringExtra = intent.getStringExtra("gcm.rawData64");
        if (stringExtra != null) {
            intent.putExtra("rawData", Base64.decode(stringExtra, 0));
            intent.removeExtra("gcm.rawData64");
        }
        return l(this.a, intent);
    }

    public zy0 l(final Context context, final Intent intent) {
        boolean z = qi0.h() && context.getApplicationInfo().targetSdkVersion >= 26;
        final boolean z2 = (intent.getFlags() & 268435456) != 0;
        return (!z || z2) ? jz0.c(this.b, new Callable() { // from class: androidx.appcompat.view.menu.ar
            @Override // java.util.concurrent.Callable
            public final Object call() {
                Integer h;
                h = er.h(context, intent);
                return h;
            }
        }).g(this.b, new yg() { // from class: androidx.appcompat.view.menu.br
            @Override // androidx.appcompat.view.menu.yg
            public final Object a(zy0 zy0Var) {
                zy0 j;
                j = er.j(context, intent, z2, zy0Var);
                return j;
            }
        }) : e(context, intent, z2);
    }
}
