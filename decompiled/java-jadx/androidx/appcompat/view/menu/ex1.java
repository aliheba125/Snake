package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ex1 implements Runnable {
    public final /* synthetic */ yz1 m;
    public final /* synthetic */ cx1 n;

    public ex1(cx1 cx1Var, yz1 yz1Var) {
        this.n = cx1Var;
        this.m = yz1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cx1.g(this.n, this.m);
        this.n.e(this.m.g);
    }
}
