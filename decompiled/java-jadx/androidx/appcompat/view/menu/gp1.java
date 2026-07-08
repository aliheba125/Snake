package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class gp1 extends mn1.a {
    public final /* synthetic */ bm1 q;
    public final /* synthetic */ mn1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public gp1(mn1 mn1Var, bm1 bm1Var) {
        super(mn1Var);
        this.r = mn1Var;
        this.q = bm1Var;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.r.i;
        ((fm1) mj0.i(fm1Var)).getCurrentScreenClass(this.q);
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void b() {
        this.q.f(null);
    }
}
