package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class jo1 extends mn1.a {
    public final /* synthetic */ String q;
    public final /* synthetic */ mn1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jo1(mn1 mn1Var, String str) {
        super(mn1Var);
        this.r = mn1Var;
        this.q = str;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.r.i;
        ((fm1) mj0.i(fm1Var)).endAdUnitExposure(this.q, this.n);
    }
}
