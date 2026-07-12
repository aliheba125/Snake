package androidx.appcompat.view.menu;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class u12 implements Runnable {
    public final /* synthetic */ long m;
    public final /* synthetic */ d02 n;

    public u12(d02 d02Var, long j) {
        this.n = d02Var;
        this.m = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.E(this.m, true);
        this.n.t().Q(new AtomicReference());
    }
}
