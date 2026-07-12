package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class nx1 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ kx1 n;

    public nx1(kx1 kx1Var, cb2 cb2Var) {
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
        cb2 cb2Var = this.m;
        o82Var2.h().n();
        o82Var2.p0();
        mj0.e(cb2Var.m);
        o82Var2.g(cb2Var);
    }
}
