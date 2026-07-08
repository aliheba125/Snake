package androidx.appcompat.view.menu;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class y42 implements Runnable {
    public final /* synthetic */ t32 m;
    public final /* synthetic */ h42 n;

    public y42(h42 h42Var, t32 t32Var) {
        this.n = h42Var;
        this.m = t32Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.n.d;
        if (xs1Var == null) {
            this.n.l().G().a("Failed to send current screen to service");
            return;
        }
        try {
            t32 t32Var = this.m;
            if (t32Var == null) {
                xs1Var.V1(0L, null, null, this.n.a().getPackageName());
            } else {
                xs1Var.V1(t32Var.c, t32Var.a, t32Var.b, this.n.a().getPackageName());
            }
            this.n.g0();
        } catch (RemoteException e) {
            this.n.l().G().b("Failed to send current screen to the service", e);
        }
    }
}
