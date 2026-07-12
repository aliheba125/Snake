package androidx.appcompat.view.menu;

import android.app.Activity;
import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class zn1 extends mn1.a {
    public final /* synthetic */ Activity q;
    public final /* synthetic */ String r;
    public final /* synthetic */ String s;
    public final /* synthetic */ mn1 t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zn1(mn1 mn1Var, Activity activity, String str, String str2) {
        super(mn1Var);
        this.t = mn1Var;
        this.q = activity;
        this.r = str;
        this.s = str2;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        fm1Var = this.t.i;
        ((fm1) mj0.i(fm1Var)).setCurrentScreen(vf0.k(this.q), this.r, this.s, this.m);
    }
}
