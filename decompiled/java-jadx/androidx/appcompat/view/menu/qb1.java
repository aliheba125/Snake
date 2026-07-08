package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class qb1 implements Runnable {
    public final /* synthetic */ int m;
    public final /* synthetic */ tb1 n;

    public qb1(tb1 tb1Var, int i) {
        this.n = tb1Var;
        this.m = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.i(this.m);
    }
}
