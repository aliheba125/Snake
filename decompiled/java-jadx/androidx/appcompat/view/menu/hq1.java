package androidx.appcompat.view.menu;

import android.app.Activity;
import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class hq1 extends mn1.a {
    public final /* synthetic */ Activity q;
    public final /* synthetic */ mn1.b r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public hq1(mn1.b bVar, Activity activity) {
        super(mn1.this);
        this.r = bVar;
        this.q = activity;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = mn1.this.i;
        ((fm1) mj0.i(fm1Var)).onActivityPaused(vf0.k(this.q), this.n);
    }
}
