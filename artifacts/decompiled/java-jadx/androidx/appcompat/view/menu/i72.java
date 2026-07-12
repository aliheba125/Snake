package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class i72 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ p92 n;

    public i72(p92 p92Var, zy0 zy0Var) {
        this.n = p92Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        mg0 mg0Var;
        mg0 mg0Var2;
        obj = this.n.b;
        synchronized (obj) {
            try {
                p92 p92Var = this.n;
                mg0Var = p92Var.c;
                if (mg0Var != null) {
                    mg0Var2 = p92Var.c;
                    mg0Var2.a(this.m.i());
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
