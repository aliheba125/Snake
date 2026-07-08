package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class vo1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ String r;
    public final /* synthetic */ boolean s;
    public final /* synthetic */ bm1 t;
    public final /* synthetic */ mn1 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public vo1(mn1 mn1Var, String str, String str2, boolean z, bm1 bm1Var) {
        super(mn1Var);
        this.u = mn1Var;
        this.q = str;
        this.r = str2;
        this.s = z;
        this.t = bm1Var;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.u.i;
        ((fm1) mj0.i(fm1Var)).getUserProperties(this.q, this.r, this.s, this.t);
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void b() {
        this.t.f(null);
    }
}
