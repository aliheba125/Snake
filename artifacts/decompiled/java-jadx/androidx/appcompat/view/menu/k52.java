package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class k52 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ Bundle n;
    public final /* synthetic */ h42 o;

    public k52(h42 h42Var, cb2 cb2Var, Bundle bundle) {
        this.o = h42Var;
        this.m = cb2Var;
        this.n = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.o.d;
        if (xs1Var == null) {
            this.o.l().G().a("Failed to send default event parameters to service");
            return;
        }
        try {
            mj0.i(this.m);
            xs1Var.G0(this.n, this.m);
        } catch (RemoteException e) {
            this.o.l().G().b("Failed to send default event parameters to service", e);
        }
    }
}
