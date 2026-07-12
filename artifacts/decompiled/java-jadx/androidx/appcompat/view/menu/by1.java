package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class by1 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ kx1 n;

    public by1(kx1 kx1Var, cb2 cb2Var) {
        this.n = kx1Var;
        this.m = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.n.l;
        o82Var.o0();
        o82Var2 = this.n.l;
        o82Var2.b0(this.m);
    }
}
