package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class xy1 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ a12 n;

    public xy1(a12 a12Var, zy0 zy0Var) {
        this.n = a12Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        gg0 gg0Var;
        gg0 gg0Var2;
        obj = this.n.b;
        synchronized (obj) {
            try {
                a12 a12Var = this.n;
                gg0Var = a12Var.c;
                if (gg0Var != null) {
                    gg0Var2 = a12Var.c;
                    gg0Var2.a(this.m);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
