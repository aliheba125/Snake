package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ck1 implements Runnable {
    public final /* synthetic */ long m;
    public final /* synthetic */ oh1 n;

    public ck1(oh1 oh1Var, long j) {
        this.n = oh1Var;
        this.m = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.B(this.m);
    }
}
