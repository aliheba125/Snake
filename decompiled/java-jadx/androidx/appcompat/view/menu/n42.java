package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class n42 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ Bundle o;
    public final /* synthetic */ h42 p;

    public n42(h42 h42Var, AtomicReference atomicReference, cb2 cb2Var, Bundle bundle) {
        this.p = h42Var;
        this.m = atomicReference;
        this.n = cb2Var;
        this.o = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        synchronized (this.m) {
            try {
                try {
                    xs1Var = this.p.d;
                } catch (RemoteException e) {
                    this.p.l().G().b("Failed to get trigger URIs; remote exception", e);
                }
                if (xs1Var == null) {
                    this.p.l().G().a("Failed to get trigger URIs; not connected to service");
                    return;
                }
                mj0.i(this.n);
                this.m.set(xs1Var.s(this.n, this.o));
                this.p.g0();
                this.m.notify();
            } finally {
                this.m.notify();
            }
        }
    }
}
