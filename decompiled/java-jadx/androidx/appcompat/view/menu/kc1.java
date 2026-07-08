package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class kc1 implements Runnable {
    public final /* synthetic */ ld1 m;
    public final /* synthetic */ mc1 n;

    public kc1(mc1 mc1Var, ld1 ld1Var) {
        this.n = mc1Var;
        this.m = ld1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        mc1.w2(this.n, this.m);
    }
}
