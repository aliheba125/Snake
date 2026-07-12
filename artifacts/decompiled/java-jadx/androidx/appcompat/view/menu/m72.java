package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class m72 implements Runnable {
    public long m;
    public long n;
    public final /* synthetic */ o72 o;

    public m72(o72 o72Var, long j, long j2) {
        this.o = o72Var;
        this.m = j;
        this.n = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.o.b.h().D(new Runnable() { // from class: androidx.appcompat.view.menu.s72
            @Override // java.lang.Runnable
            public final void run() {
                m72 m72Var = m72.this;
                o72 o72Var = m72Var.o;
                long j = m72Var.m;
                long j2 = m72Var.n;
                o72Var.b.n();
                o72Var.b.l().F().a("Application going to the background");
                o72Var.b.i().s.a(true);
                o72Var.b.D(true);
                if (!o72Var.b.e().Q()) {
                    o72Var.b.f.e(j2);
                    o72Var.b.E(false, false, j2);
                }
                if (yc2.a() && o72Var.b.e().s(si1.K0)) {
                    o72Var.b.l().J().b("Application backgrounded at: timestamp_millis", Long.valueOf(j));
                } else {
                    o72Var.b.r().U("auto", "_ab", j, new Bundle());
                }
            }
        });
    }
}
