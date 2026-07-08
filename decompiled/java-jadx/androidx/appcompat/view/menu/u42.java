package androidx.appcompat.view.menu;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class u42 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ hm1 n;
    public final /* synthetic */ h42 o;

    public u42(h42 h42Var, cb2 cb2Var, hm1 hm1Var) {
        this.o = h42Var;
        this.m = cb2Var;
        this.n = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        try {
            if (!this.o.i().J().y()) {
                this.o.l().M().a("Analytics storage consent denied; will not get app instance id");
                this.o.r().T(null);
                this.o.i().g.b(null);
                return;
            }
            xs1Var = this.o.d;
            if (xs1Var == null) {
                this.o.l().G().a("Failed to get app instance id");
                return;
            }
            mj0.i(this.m);
            String P1 = xs1Var.P1(this.m);
            if (P1 != null) {
                this.o.r().T(P1);
                this.o.i().g.b(P1);
            }
            this.o.g0();
            this.o.j().R(this.n, P1);
        } catch (RemoteException e) {
            this.o.l().G().b("Failed to get app instance id", e);
        } finally {
            this.o.j().R(this.n, null);
        }
    }
}
