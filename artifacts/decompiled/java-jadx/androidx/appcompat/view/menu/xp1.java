package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class xp1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ String r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ boolean t;
    public final /* synthetic */ mn1 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public xp1(mn1 mn1Var, String str, String str2, Object obj, boolean z) {
        super(mn1Var);
        this.u = mn1Var;
        this.q = str;
        this.r = str2;
        this.s = obj;
        this.t = z;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.u.i;
        ((fm1) mj0.i(fm1Var)).setUserProperty(this.q, this.r, vf0.k(this.s), this.t, this.m);
    }
}
