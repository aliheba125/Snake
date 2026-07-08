package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class zg1 implements Runnable {
    public final /* synthetic */ iz1 m;
    public final /* synthetic */ bh1 n;

    public zg1(bh1 bh1Var, iz1 iz1Var) {
        this.n = bh1Var;
        this.m = iz1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.m.d();
        if (mf1.a()) {
            this.m.h().D(this);
            return;
        }
        boolean e = this.n.e();
        this.n.c = 0L;
        if (e) {
            this.n.d();
        }
    }
}
