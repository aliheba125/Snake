package androidx.appcompat.view.menu;

import android.os.RemoteException;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class p52 implements Runnable {
    public final /* synthetic */ boolean m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ oi1 p;
    public final /* synthetic */ String q;
    public final /* synthetic */ h42 r;

    public p52(h42 h42Var, boolean z, cb2 cb2Var, boolean z2, oi1 oi1Var, String str) {
        this.r = h42Var;
        this.m = z;
        this.n = cb2Var;
        this.o = z2;
        this.p = oi1Var;
        this.q = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.r.d;
        if (xs1Var == null) {
            this.r.l().G().a("Discarding data. Failed to send event to service");
            return;
        }
        if (this.m) {
            mj0.i(this.n);
            this.r.K(xs1Var, this.o ? null : this.p, this.n);
        } else {
            try {
                if (TextUtils.isEmpty(this.q)) {
                    mj0.i(this.n);
                    xs1Var.g0(this.p, this.n);
                } else {
                    xs1Var.A(this.p, this.q, this.r.l().O());
                }
            } catch (RemoteException e) {
                this.r.l().G().b("Failed to send event to the service", e);
            }
        }
        this.r.g0();
    }
}
