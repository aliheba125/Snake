package androidx.appcompat.view.menu;

import android.os.RemoteException;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z52 implements Runnable {
    public final /* synthetic */ String m;
    public final /* synthetic */ String n;
    public final /* synthetic */ cb2 o;
    public final /* synthetic */ hm1 p;
    public final /* synthetic */ h42 q;

    public z52(h42 h42Var, String str, String str2, cb2 cb2Var, hm1 hm1Var) {
        this.q = h42Var;
        this.m = str;
        this.n = str2;
        this.o = cb2Var;
        this.p = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        ArrayList arrayList = new ArrayList();
        try {
            xs1Var = this.q.d;
            if (xs1Var == null) {
                this.q.l().G().c("Failed to get conditional properties; not connected to service", this.m, this.n);
                return;
            }
            mj0.i(this.o);
            ArrayList t0 = x92.t0(xs1Var.o0(this.m, this.n, this.o));
            this.q.g0();
            this.q.j().S(this.p, t0);
        } catch (RemoteException e) {
            this.q.l().G().d("Failed to get conditional properties; remote exception", this.m, this.n, e);
        } finally {
            this.q.j().S(this.p, arrayList);
        }
    }
}
