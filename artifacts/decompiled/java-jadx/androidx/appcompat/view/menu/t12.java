package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class t12 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ d02 n;

    public t12(d02 d02Var, AtomicReference atomicReference) {
        this.n = d02Var;
        this.m = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.m) {
            try {
                try {
                    this.m.set(this.n.e().H(this.n.p().F()));
                } finally {
                    this.m.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
