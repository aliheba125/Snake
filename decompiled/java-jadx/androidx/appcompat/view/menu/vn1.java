package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class vn1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ String r;
    public final /* synthetic */ bm1 s;
    public final /* synthetic */ mn1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vn1(mn1 mn1Var, String str, String str2, bm1 bm1Var) {
        super(mn1Var);
        this.t = mn1Var;
        this.q = str;
        this.r = str2;
        this.s = bm1Var;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.t.i;
        ((fm1) mj0.i(fm1Var)).getConditionalUserProperties(this.q, this.r, this.s);
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void b() {
        this.s.f(null);
    }
}
