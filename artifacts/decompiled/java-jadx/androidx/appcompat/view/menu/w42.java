package androidx.appcompat.view.menu;

import android.os.RemoteException;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class w42 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ h42 o;

    public w42(h42 h42Var, AtomicReference atomicReference, cb2 cb2Var) {
        this.o = h42Var;
        this.m = atomicReference;
        this.n = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        synchronized (this.m) {
            try {
                try {
                } catch (RemoteException e) {
                    this.o.l().G().b("Failed to get app instance id", e);
                }
                if (!this.o.i().J().y()) {
                    this.o.l().M().a("Analytics storage consent denied; will not get app instance id");
                    this.o.r().T(null);
                    this.o.i().g.b(null);
                    this.m.set(null);
                    return;
                }
                xs1Var = this.o.d;
                if (xs1Var == null) {
                    this.o.l().G().a("Failed to get app instance id");
                    return;
                }
                mj0.i(this.n);
                this.m.set(xs1Var.P1(this.n));
                String str = (String) this.m.get();
                if (str != null) {
                    this.o.r().T(str);
                    this.o.i().g.b(str);
                }
                this.o.g0();
                this.m.notify();
            } finally {
                this.m.notify();
            }
        }
    }
}
