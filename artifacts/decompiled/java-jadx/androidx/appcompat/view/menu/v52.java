package androidx.appcompat.view.menu;

import android.os.RemoteException;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class v52 implements Runnable {
    public final /* synthetic */ boolean m = true;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ if1 p;
    public final /* synthetic */ if1 q;
    public final /* synthetic */ h42 r;

    public v52(h42 h42Var, boolean z, cb2 cb2Var, boolean z2, if1 if1Var, if1 if1Var2) {
        this.r = h42Var;
        this.n = cb2Var;
        this.o = z2;
        this.p = if1Var;
        this.q = if1Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.r.d;
        if (xs1Var == null) {
            this.r.l().G().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        if (this.m) {
            mj0.i(this.n);
            this.r.K(xs1Var, this.o ? null : this.p, this.n);
        } else {
            try {
                if (TextUtils.isEmpty(this.q.m)) {
                    mj0.i(this.n);
                    xs1Var.o(this.p, this.n);
                } else {
                    xs1Var.I(this.p);
                }
            } catch (RemoteException e) {
                this.r.l().G().b("Failed to send conditional user property to the service", e);
            }
        }
        this.r.g0();
    }
}
