package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class b42 implements Runnable {
    public final /* synthetic */ t32 m;
    public final /* synthetic */ t32 n;
    public final /* synthetic */ long o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ r32 q;

    public b42(r32 r32Var, t32 t32Var, t32 t32Var2, long j, boolean z) {
        this.q = r32Var;
        this.m = t32Var;
        this.n = t32Var2;
        this.o = j;
        this.p = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.q.N(this.m, this.n, this.o, this.p, null);
    }
}
