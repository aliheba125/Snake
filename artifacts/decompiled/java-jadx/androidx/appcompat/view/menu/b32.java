package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class b32 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ e52 n;

    public b32(e52 e52Var, zy0 zy0Var) {
        this.n = e52Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        ig0 ig0Var;
        ig0 ig0Var2;
        obj = this.n.b;
        synchronized (obj) {
            try {
                e52 e52Var = this.n;
                ig0Var = e52Var.c;
                if (ig0Var != null) {
                    ig0Var2 = e52Var.c;
                    ig0Var2.d((Exception) mj0.i(this.m.h()));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
