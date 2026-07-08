package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;

/* loaded from: classes.dex */
public final class um1 extends xe1 {
    public z7 l;
    public final int m;

    public um1(z7 z7Var, int i) {
        this.l = z7Var;
        this.m = i;
    }

    @Override // androidx.appcompat.view.menu.f10
    public final void j0(int i, IBinder iBinder, x02 x02Var) {
        z7 z7Var = this.l;
        mj0.j(z7Var, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
        mj0.i(x02Var);
        z7.c0(z7Var, x02Var);
        t2(i, iBinder, x02Var.m);
    }

    @Override // androidx.appcompat.view.menu.f10
    public final void o1(int i, Bundle bundle) {
        new Exception();
    }

    @Override // androidx.appcompat.view.menu.f10
    public final void t2(int i, IBinder iBinder, Bundle bundle) {
        mj0.j(this.l, "onPostInitComplete can be called only once per call to getRemoteService");
        this.l.N(i, iBinder, bundle, this.m);
        this.l = null;
    }
}
