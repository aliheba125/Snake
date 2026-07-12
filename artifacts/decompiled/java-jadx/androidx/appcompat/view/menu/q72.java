package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class q72 {
    public long a;
    public long b;
    public final bh1 c;
    public final /* synthetic */ y62 d;

    public q72(y62 y62Var) {
        this.d = y62Var;
        this.c = new x72(this, y62Var.a);
        long b = y62Var.b().b();
        this.a = b;
        this.b = b;
    }

    public static /* synthetic */ void c(q72 q72Var) {
        q72Var.d.n();
        q72Var.d(false, false, q72Var.d.b().b());
        q72Var.d.o().v(q72Var.d.b().b());
    }

    public final long a(long j) {
        long j2 = j - this.b;
        this.b = j;
        return j2;
    }

    public final void b() {
        this.c.a();
        this.a = 0L;
        this.b = 0L;
    }

    public final boolean d(boolean z, boolean z2, long j) {
        this.d.n();
        this.d.v();
        if (!mb2.a() || !this.d.e().s(si1.q0) || this.d.a.p()) {
            this.d.i().p.b(this.d.b().a());
        }
        long j2 = j - this.a;
        if (!z && j2 < 1000) {
            this.d.l().K().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        if (!z2) {
            j2 = a(j);
        }
        this.d.l().K().b("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        x92.W(this.d.s().C(!this.d.e().Q()), bundle, true);
        if (!z2) {
            this.d.r().z0("auto", "_e", bundle);
        }
        this.a = j;
        this.c.a();
        this.c.b(3600000L);
        return true;
    }

    public final void e(long j) {
        this.c.a();
    }

    public final void f(long j) {
        this.d.n();
        this.c.a();
        this.a = j;
        this.b = j;
    }
}
