package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class n22 implements Runnable {
    public final /* synthetic */ lz1 m;
    public final /* synthetic */ long n;
    public final /* synthetic */ long o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ lz1 q;
    public final /* synthetic */ d02 r;

    public n22(d02 d02Var, lz1 lz1Var, long j, long j2, boolean z, lz1 lz1Var2) {
        this.r = d02Var;
        this.m = lz1Var;
        this.n = j;
        this.o = j2;
        this.p = z;
        this.q = lz1Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.r.J(this.m);
        this.r.E(this.n, false);
        d02.N(this.r, this.m, this.o, true, this.p);
        if (ed2.a() && this.r.e().s(si1.x0)) {
            d02.O(this.r, this.m, this.q);
        }
    }
}
