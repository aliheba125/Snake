package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class y62 extends cp1 {
    public Handler c;
    public boolean d;
    public final u72 e;
    public final q72 f;
    public final o72 g;

    public y62(cx1 cx1Var) {
        super(cx1Var);
        this.d = true;
        this.e = new u72(this);
        this.f = new q72(this);
        this.g = new o72(this);
    }

    public static /* synthetic */ void C(y62 y62Var, long j) {
        y62Var.n();
        y62Var.G();
        y62Var.l().K().b("Activity paused, time", Long.valueOf(j));
        y62Var.g.b(j);
        if (y62Var.e().Q()) {
            y62Var.f.e(j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G() {
        n();
        if (this.c == null) {
            this.c = new wl1(Looper.getMainLooper());
        }
    }

    public static /* synthetic */ void I(y62 y62Var, long j) {
        y62Var.n();
        y62Var.G();
        y62Var.l().K().b("Activity resumed, time", Long.valueOf(j));
        if (y62Var.e().s(si1.Q0)) {
            if (y62Var.e().Q() || y62Var.d) {
                y62Var.f.f(j);
            }
        } else if (y62Var.e().Q() || y62Var.i().s.b()) {
            y62Var.f.f(j);
        }
        y62Var.g.a();
        u72 u72Var = y62Var.e;
        u72Var.a.n();
        if (u72Var.a.a.p()) {
            u72Var.b(u72Var.a.b().a(), false);
        }
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return false;
    }

    public final void D(boolean z) {
        n();
        this.d = z;
    }

    public final boolean E(boolean z, boolean z2, long j) {
        return this.f.d(z, z2, j);
    }

    public final boolean F() {
        n();
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ oh1 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ zs1 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ ft1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ d02 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ r32 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ h42 t() {
        return super.t();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ y62 u() {
        return super.u();
    }
}
