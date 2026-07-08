package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class jy1 implements Runnable {
    public final /* synthetic */ oi1 m;
    public final /* synthetic */ String n;
    public final /* synthetic */ kx1 o;

    public jy1(kx1 kx1Var, oi1 oi1Var, String str) {
        this.o = kx1Var;
        this.m = oi1Var;
        this.n = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82 o82Var2;
        o82Var = this.o.l;
        o82Var.o0();
        o82Var2 = this.o.l;
        o82Var2.r(this.m, this.n);
    }
}
