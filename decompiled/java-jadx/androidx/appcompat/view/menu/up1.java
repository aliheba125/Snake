package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.mn1;

/* loaded from: classes.dex */
public final class up1 extends mn1.a {
    public final /* synthetic */ Long q;
    public final /* synthetic */ String r;
    public final /* synthetic */ String s;
    public final /* synthetic */ Bundle t;
    public final /* synthetic */ boolean u;
    public final /* synthetic */ boolean v;
    public final /* synthetic */ mn1 w;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public up1(mn1 mn1Var, Long l, String str, String str2, Bundle bundle, boolean z, boolean z2) {
        super(mn1Var);
        this.w = mn1Var;
        this.q = l;
        this.r = str;
        this.s = str2;
        this.t = bundle;
        this.u = z;
        this.v = z2;
    }

    @Override // androidx.appcompat.view.menu.mn1.a
    public final void a() {
        fm1 fm1Var;
        Long l = this.q;
        long longValue = l == null ? this.m : l.longValue();
        fm1Var = this.w.i;
        ((fm1) mj0.i(fm1Var)).logEvent(this.r, this.s, this.t, this.u, this.v, longValue);
    }
}
