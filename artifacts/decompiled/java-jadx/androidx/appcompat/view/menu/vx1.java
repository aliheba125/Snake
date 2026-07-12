package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class vx1 implements Runnable {
    public final /* synthetic */ if1 m;
    public final /* synthetic */ kx1 n;

    public vx1(kx1 kx1Var, if1 if1Var) {
        this.n = kx1Var;
        this.m = if1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        o82 o82Var3;
        o82Var = this.n.l;
        o82Var.o0();
        if (this.m.o.d() == null) {
            o82Var3 = this.n.l;
            o82Var3.o(this.m);
        } else {
            o82Var2 = this.n.l;
            o82Var2.S(this.m);
        }
    }
}
