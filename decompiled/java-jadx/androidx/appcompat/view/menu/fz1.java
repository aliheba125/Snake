package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public abstract class fz1 implements iz1 {
    public final cx1 a;

    public fz1(cx1 cx1Var) {
        mj0.i(cx1Var);
        this.a = cx1Var;
    }

    @Override // androidx.appcompat.view.menu.iz1
    public Context a() {
        return this.a.a();
    }

    @Override // androidx.appcompat.view.menu.iz1
    public cc b() {
        return this.a.b();
    }

    @Override // androidx.appcompat.view.menu.iz1
    public mf1 d() {
        return this.a.d();
    }

    public qf1 e() {
        return this.a.z();
    }

    public ci1 f() {
        return this.a.A();
    }

    public mt1 g() {
        return this.a.D();
    }

    @Override // androidx.appcompat.view.menu.iz1
    public jw1 h() {
        return this.a.h();
    }

    public tu1 i() {
        return this.a.F();
    }

    public x92 j() {
        return this.a.L();
    }

    public void k() {
        this.a.h().k();
    }

    @Override // androidx.appcompat.view.menu.iz1
    public pt1 l() {
        return this.a.l();
    }

    public void m() {
        this.a.Q();
    }

    public void n() {
        this.a.h().n();
    }
}
