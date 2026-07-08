package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class h22 implements Runnable {
    public final /* synthetic */ AtomicReference m;
    public final /* synthetic */ d02 n;

    public h22(d02 d02Var, AtomicReference atomicReference) {
        this.n = d02Var;
        this.m = atomicReference;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.m) {
            try {
                try {
                    this.m.set(Long.valueOf(this.n.e().x(this.n.p().F(), si1.O)));
                } finally {
                    this.m.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
