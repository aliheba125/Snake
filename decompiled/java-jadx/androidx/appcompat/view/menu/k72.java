package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class k72 implements Runnable {
    public final /* synthetic */ long m;
    public final /* synthetic */ y62 n;

    public k72(y62 y62Var, long j) {
        this.n = y62Var;
        this.m = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y62.I(this.n, this.m);
    }
}
