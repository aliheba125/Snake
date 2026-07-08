package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ly1 implements Runnable {
    public final /* synthetic */ oi1 m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ kx1 o;

    public ly1(kx1 kx1Var, oi1 oi1Var, cb2 cb2Var) {
        this.o = kx1Var;
        this.m = oi1Var;
        this.n = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.o.y2(this.o.w2(this.m, this.n), this.n);
    }
}
