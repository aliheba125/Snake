package androidx.appcompat.view.menu;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class r52 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ h42 n;

    public r52(h42 h42Var, cb2 cb2Var) {
        this.n = h42Var;
        this.m = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.n.d;
        if (xs1Var == null) {
            this.n.l().G().a("Failed to send consent settings to service");
            return;
        }
        try {
            mj0.i(this.m);
            xs1Var.F0(this.m);
            this.n.g0();
        } catch (RemoteException e) {
            this.n.l().G().b("Failed to send consent settings to the service", e);
        }
    }
}
