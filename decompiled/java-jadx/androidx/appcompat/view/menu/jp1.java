package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class jp1 extends mn1.a {
    public final /* synthetic */ String r;
    public final /* synthetic */ Object s;
    public final /* synthetic */ mn1 v;
    public final /* synthetic */ int q = 5;
    public final /* synthetic */ Object t = null;
    public final /* synthetic */ Object u = null;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jp1(mn1 mn1Var, boolean z, int i, String str, Object obj, Object obj2, Object obj3) {
        super(false);
        this.v = mn1Var;
        this.r = str;
        this.s = obj;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.v.i;
        ((fm1) mj0.i(fm1Var)).logHealthData(this.q, this.r, vf0.k(this.s), vf0.k(null), vf0.k(null));
    }
}
