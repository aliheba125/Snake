package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.SharedPreferences;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class h11 {
    public static WeakReference d;
    public final SharedPreferences a;
    public au0 b;
    public final Executor c;

    public h11(SharedPreferences sharedPreferences, Executor executor) {
        this.c = executor;
        this.a = sharedPreferences;
    }

    public static synchronized h11 a(Context context, Executor executor) {
        h11 h11Var;
        synchronized (h11.class) {
            try {
                WeakReference weakReference = d;
                h11Var = weakReference != null ? (h11) weakReference.get() : null;
                if (h11Var == null) {
                    h11Var = new h11(context.getSharedPreferences("com.google.android.gms.appid", 0), executor);
                    h11Var.c();
                    d = new WeakReference(h11Var);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return h11Var;
    }

    public synchronized g11 b() {
        return g11.a(this.b.e());
    }

    public final synchronized void c() {
        this.b = au0.c(this.a, "topic_operation_queue", ",", this.c);
    }

    public synchronized boolean d(g11 g11Var) {
        return this.b.f(g11Var.e());
    }
}
