package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class lp1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ bm1 r;
    public final /* synthetic */ mn1 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public lp1(mn1 mn1Var, String str, bm1 bm1Var) {
        super(mn1Var);
        this.s = mn1Var;
        this.q = str;
        this.r = bm1Var;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.s.i;
        ((fm1) mj0.i(fm1Var)).getMaxUserProperties(this.q, this.r);
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void b() {
        this.r.f(null);
    }
}
