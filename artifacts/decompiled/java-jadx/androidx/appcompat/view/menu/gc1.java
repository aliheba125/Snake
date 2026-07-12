package androidx.appcompat.view.menu;

import android.os.SystemClock;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class gc1 implements gg0 {
    public final ay a;
    public final int b;
    public final r2 c;
    public final long d;
    public final long e;

    public gc1(ay ayVar, int i, r2 r2Var, long j, long j2, String str, String str2) {
        this.a = ayVar;
        this.b = i;
        this.c = r2Var;
        this.d = j;
        this.e = j2;
    }

    public static gc1 b(ay ayVar, int i, r2 r2Var) {
        boolean z;
        if (!ayVar.f()) {
            return null;
        }
        vp0 a = up0.b().a();
        if (a == null) {
            z = true;
        } else {
            if (!a.i()) {
                return null;
            }
            z = a.k();
            tb1 w = ayVar.w(r2Var);
            if (w != null) {
                if (!(w.u() instanceof z7)) {
                    return null;
                }
                z7 z7Var = (z7) w.u();
                if (z7Var.J() && !z7Var.f()) {
                    ff c = c(w, z7Var, i);
                    if (c == null) {
                        return null;
                    }
                    w.F();
                    z = c.n();
                }
            }
        }
        return new gc1(ayVar, i, r2Var, z ? System.currentTimeMillis() : 0L, z ? SystemClock.elapsedRealtime() : 0L, null, null);
    }

    public static ff c(tb1 tb1Var, z7 z7Var, int i) {
        int[] f;
        int[] i2;
        ff H = z7Var.H();
        if (H == null || !H.k() || ((f = H.f()) != null ? !s4.a(f, i) : !((i2 = H.i()) == null || !s4.a(i2, i))) || tb1Var.s() >= H.d()) {
            return null;
        }
        return H;
    }

    @Override // androidx.appcompat.view.menu.gg0
    public final void a(zy0 zy0Var) {
        tb1 w;
        int i;
        int i2;
        int i3;
        int d;
        long j;
        long j2;
        int i4;
        if (this.a.f()) {
            vp0 a = up0.b().a();
            if ((a == null || a.i()) && (w = this.a.w(this.c)) != null && (w.u() instanceof z7)) {
                z7 z7Var = (z7) w.u();
                int i5 = 0;
                boolean z = this.d > 0;
                int z2 = z7Var.z();
                if (a != null) {
                    z &= a.k();
                    int d2 = a.d();
                    int f = a.f();
                    i = a.n();
                    if (z7Var.J() && !z7Var.f()) {
                        ff c = c(w, z7Var, this.b);
                        if (c == null) {
                            return;
                        }
                        boolean z3 = c.n() && this.d > 0;
                        f = c.d();
                        z = z3;
                    }
                    i3 = d2;
                    i2 = f;
                } else {
                    i = 0;
                    i2 = 100;
                    i3 = 5000;
                }
                ay ayVar = this.a;
                if (zy0Var.m()) {
                    d = 0;
                } else {
                    if (zy0Var.k()) {
                        i5 = 100;
                    } else {
                        Exception h = zy0Var.h();
                        if (h instanceof o2) {
                            Status a2 = ((o2) h).a();
                            int f2 = a2.f();
                            ef d3 = a2.d();
                            d = d3 == null ? -1 : d3.d();
                            i5 = f2;
                        } else {
                            i5 = 101;
                        }
                    }
                    d = -1;
                }
                if (z) {
                    long j3 = this.d;
                    long currentTimeMillis = System.currentTimeMillis();
                    i4 = (int) (SystemClock.elapsedRealtime() - this.e);
                    j = j3;
                    j2 = currentTimeMillis;
                } else {
                    j = 0;
                    j2 = 0;
                    i4 = -1;
                }
                ayVar.E(new nd0(this.b, i5, d, j, j2, null, null, z2, i4), i, i3, i2);
            }
        }
    }
}
