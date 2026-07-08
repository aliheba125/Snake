package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class t22 implements Runnable {
    public final /* synthetic */ lz1 m;
    public final /* synthetic */ long n;
    public final /* synthetic */ boolean o;
    public final /* synthetic */ lz1 p;
    public final /* synthetic */ d02 q;

    public t22(d02 d02Var, lz1 lz1Var, long j, boolean z, lz1 lz1Var2) {
        this.q = d02Var;
        this.m = lz1Var;
        this.n = j;
        this.o = z;
        this.p = lz1Var2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.q.J(this.m);
        d02.N(this.q, this.m, this.n, false, this.o);
        if (ed2.a() && this.q.e().s(si1.x0)) {
            d02.O(this.q, this.m, this.p);
        }
    }
}
