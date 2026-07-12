package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class d42 implements Runnable {
    public final /* synthetic */ t32 m;
    public final /* synthetic */ long n;
    public final /* synthetic */ r32 o;

    public d42(r32 r32Var, t32 t32Var, long j) {
        this.o = r32Var;
        this.m = t32Var;
        this.n = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.o.O(this.m, false, this.n);
        r32 r32Var = this.o;
        r32Var.e = null;
        r32Var.t().L(null);
    }
}
