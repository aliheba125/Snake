package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class rn1 extends mn1.a {
    public final /* synthetic */ Bundle q;
    public final /* synthetic */ mn1 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public rn1(mn1 mn1Var, Bundle bundle) {
        super(mn1Var);
        this.r = mn1Var;
        this.q = bundle;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.r.i;
        ((fm1) mj0.i(fm1Var)).setConditionalUserProperty(this.q, this.m);
    }
}
