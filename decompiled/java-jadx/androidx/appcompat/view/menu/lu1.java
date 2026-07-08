package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class lu1 implements Runnable {
    public final /* synthetic */ sw1 m;

    public lu1(sw1 sw1Var) {
        this.m = sw1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        fg0 fg0Var;
        fg0 fg0Var2;
        obj = this.m.b;
        synchronized (obj) {
            try {
                sw1 sw1Var = this.m;
                fg0Var = sw1Var.c;
                if (fg0Var != null) {
                    fg0Var2 = sw1Var.c;
                    fg0Var2.c();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
