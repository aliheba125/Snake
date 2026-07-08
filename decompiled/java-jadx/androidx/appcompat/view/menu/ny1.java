package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ny1 implements Runnable {
    public final /* synthetic */ v92 m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ kx1 o;

    public ny1(kx1 kx1Var, v92 v92Var, cb2 cb2Var) {
        this.o = kx1Var;
        this.m = v92Var;
        this.n = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        o82 o82Var3;
        o82Var = this.o.l;
        o82Var.o0();
        if (this.m.d() == null) {
            o82Var3 = this.o.l;
            o82Var3.E(this.m.n, this.n);
        } else {
            o82Var2 = this.o.l;
            o82Var2.x(this.m, this.n);
        }
    }
}
