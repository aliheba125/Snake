package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class l22 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ d02 n;

    public l22(d02 d02Var, AtomicReference atomicReference) {
        this.n = d02Var;
        this.m = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.m) {
            try {
                try {
                    this.m.set(Double.valueOf(this.n.e().o(this.n.p().F(), si1.Q)));
                } finally {
                    this.m.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
