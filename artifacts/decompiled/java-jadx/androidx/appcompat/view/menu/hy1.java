package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class hy1 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ kx1 n;

    public hy1(kx1 kx1Var, cb2 cb2Var) {
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
        lz1 f = lz1.f(cb2Var.H, (na2.a() && o82Var2.c0().s(si1.T0)) ? cb2Var.M : 100);
        lz1 Q = o82Var2.Q(cb2Var.m);
        o82Var2.l().K().c("Setting consent, package, consent", cb2Var.m, f);
        o82Var2.C(cb2Var.m, f);
        if (f.t(Q)) {
            o82Var2.b0(cb2Var);
        }
        if (na2.a() && o82Var2.c0().s(si1.T0)) {
            fh1 c = fh1.c(cb2Var.N);
            if (fh1.f.equals(c)) {
                return;
            }
            o82Var2.l().K().c("Setting DMA consent. package, consent", cb2Var.m, c);
            o82Var2.A(cb2Var.m, c);
        }
    }
}
