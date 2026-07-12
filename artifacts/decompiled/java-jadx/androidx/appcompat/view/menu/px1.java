package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class px1 implements Runnable {
    public final /* synthetic */ if1 m;
    public final /* synthetic */ cb2 n;
    public final /* synthetic */ kx1 o;

    public px1(kx1 kx1Var, if1 if1Var, cb2 cb2Var) {
        this.o = kx1Var;
        this.m = if1Var;
        this.n = cb2Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        o82 o82Var3;
        o82Var = this.o.l;
        o82Var.o0();
        if (this.m.o.d() == null) {
            o82Var3 = this.o.l;
            o82Var3.p(this.m, this.n);
        } else {
            o82Var2 = this.o.l;
            o82Var2.T(this.m, this.n);
        }
    }
}
