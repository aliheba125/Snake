package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class vu1 implements Runnable {
    public final /* synthetic */ boolean m;
    public final /* synthetic */ pu1 n;

    public vu1(pu1 pu1Var, boolean z) {
        this.n = pu1Var;
        this.m = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        o82 o82Var;
        o82Var = this.n.a;
        o82Var.H(this.m);
    }
}
