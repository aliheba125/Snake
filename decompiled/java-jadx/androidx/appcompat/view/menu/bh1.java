package androidx.appcompat.view.menu;

import android.os.Handler;

/* loaded from: classes.dex */
public abstract class bh1 {
    public static volatile Handler d;
    public final iz1 a;
    public final Runnable b;
    public volatile long c;

    public bh1(iz1 iz1Var) {
        mj0.i(iz1Var);
        this.a = iz1Var;
        this.b = new zg1(this, iz1Var);
    }

    public final void a() {
        this.c = 0L;
        f().removeCallbacks(this.b);
    }

    public final void b(long j) {
        a();
        if (j >= 0) {
            this.c = this.a.b().a();
            if (f().postDelayed(this.b, j)) {
                return;
            }
            this.a.l().G().b("Failed to schedule delayed post. time", Long.valueOf(j));
        }
    }

    public abstract void d();

    public final boolean e() {
        return this.c != 0;
    }

    public final Handler f() {
        Handler handler;
        if (d != null) {
            return d;
        }
        synchronized (bh1.class) {
            try {
                if (d == null) {
                    d = new wl1(this.a.a().getMainLooper());
                }
                handler = d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handler;
    }
}
