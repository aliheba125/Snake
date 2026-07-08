package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class tj extends up implements Executor {
    public static final tj p = new tj();
    public static final nh q;

    static {
        int a;
        int e;
        s31 s31Var = s31.o;
        a = un0.a(64, ty0.a());
        e = vy0.e("kotlinx.coroutines.io.parallelism", a, 0, 0, 12, null);
        q = s31Var.E(e);
    }

    @Override // androidx.appcompat.view.menu.nh
    public void A(kh khVar, Runnable runnable) {
        q.A(khVar, runnable);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        throw new IllegalStateException("Cannot be invoked on Dispatchers.IO".toString());
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        A(bo.m, runnable);
    }

    @Override // androidx.appcompat.view.menu.nh
    public String toString() {
        return "Dispatchers.IO";
    }
}
