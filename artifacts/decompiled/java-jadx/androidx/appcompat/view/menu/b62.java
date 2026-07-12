package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class b62 implements Runnable {
    public final /* synthetic */ xs1 m;
    public final /* synthetic */ d62 n;

    public b62(d62 d62Var, xs1 xs1Var) {
        this.n = d62Var;
        this.m = xs1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.n) {
            try {
                this.n.l = false;
                if (!this.n.n.c0()) {
                    this.n.n.l().K().a("Connected to service");
                    this.n.n.J(this.m);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
