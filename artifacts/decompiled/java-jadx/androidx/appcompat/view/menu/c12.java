package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class c12 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ d02 n;

    public c12(d02 d02Var, AtomicReference atomicReference) {
        this.n = d02Var;
        this.m = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.m) {
            try {
                try {
                    this.m.set(Boolean.valueOf(this.n.e().J(this.n.p().F())));
                } finally {
                    this.m.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
