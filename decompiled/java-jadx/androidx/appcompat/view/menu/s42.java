package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class s42 implements Runnable {
    public final /* synthetic */ cb2 m;
    public final /* synthetic */ boolean n;
    public final /* synthetic */ v92 o;
    public final /* synthetic */ h42 p;

    public s42(h42 h42Var, cb2 cb2Var, boolean z, v92 v92Var) {
        this.p = h42Var;
        this.m = cb2Var;
        this.n = z;
        this.o = v92Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        xs1 xs1Var;
        xs1Var = this.p.d;
        if (xs1Var == null) {
            this.p.l().G().a("Discarding data. Failed to set user property");
            return;
        }
        mj0.i(this.m);
        this.p.K(xs1Var, this.n ? null : this.o, this.m);
        this.p.g0();
    }
}
