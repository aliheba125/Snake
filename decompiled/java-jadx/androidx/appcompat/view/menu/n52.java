package androidx.appcompat.view.menu;

import android.os.RemoteException;

/* loaded from: classes.dex */
public final class n52 implements Runnable {
    public final /* synthetic */ oi1 m;
    public final /* synthetic */ String n;
    public final /* synthetic */ hm1 o;
    public final /* synthetic */ h42 p;

    public n52(h42 h42Var, oi1 oi1Var, String str, hm1 hm1Var) {
        this.p = h42Var;
        this.m = oi1Var;
        this.n = str;
        this.o = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        try {
            xs1Var = this.p.d;
            if (xs1Var == null) {
                this.p.l().G().a("Discarding data. Failed to send event to service to bundle");
                return;
            }
            byte[] E1 = xs1Var.E1(this.m, this.n);
            this.p.g0();
            this.p.j().U(this.o, E1);
        } catch (RemoteException e) {
            this.p.l().G().b("Failed to send event to the service to bundle", e);
        } finally {
            this.p.j().U(this.o, null);
        }
    }
}
