package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class u62 implements Runnable {
    public final /* synthetic */ o82 m;
    public final /* synthetic */ Runnable n;

    public u62(s62 s62Var, o82 o82Var, Runnable runnable) {
        this.m = o82Var;
        this.n = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.m.o0();
        this.m.y(this.n);
        this.m.t0();
    }
}
