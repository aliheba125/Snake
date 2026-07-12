package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class u82 implements Runnable {
    public final /* synthetic */ r92 m;
    public final /* synthetic */ o82 n;

    public u82(o82 o82Var, r92 r92Var) {
        this.n = o82Var;
        this.m = r92Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82.w(this.n, this.m);
        this.n.s0();
    }
}
