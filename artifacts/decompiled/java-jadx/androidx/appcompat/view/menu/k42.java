package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k42 implements Runnable {
    public final /* synthetic */ String m;
    public final /* synthetic */ String n;
    public final /* synthetic */ cb2 o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ hm1 q;
    public final /* synthetic */ h42 r;

    public k42(h42 h42Var, String str, String str2, cb2 cb2Var, boolean z, hm1 hm1Var) {
        this.r = h42Var;
        this.m = str;
        this.n = str2;
        this.o = cb2Var;
        this.p = z;
        this.q = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        Bundle bundle = new Bundle();
        try {
            xs1Var = this.r.d;
            if (xs1Var == null) {
                this.r.l().G().c("Failed to get user properties; not connected to service", this.m, this.n);
                return;
            }
            mj0.i(this.o);
            Bundle F = x92.F(xs1Var.m1(this.m, this.n, this.p, this.o));
            this.r.g0();
            this.r.j().Q(this.q, F);
        } catch (RemoteException e) {
            this.r.l().G().c("Failed to get user properties; remote exception", this.m, e);
        } finally {
            this.r.j().Q(this.q, bundle);
        }
    }
}
