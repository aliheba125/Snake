package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class dp1 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ ir1 n;

    public dp1(ir1 ir1Var, zy0 zy0Var) {
        this.n = ir1Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        nf2 nf2Var;
        nf2 nf2Var2;
        nf2 nf2Var3;
        yg ygVar;
        try {
            ygVar = this.n.b;
            zy0 zy0Var = (zy0) ygVar.a(this.m);
            if (zy0Var == null) {
                this.n.d(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = gz0.b;
            zy0Var.e(executor, this.n);
            zy0Var.d(executor, this.n);
            zy0Var.a(executor, this.n);
        } catch (cq0 e) {
            if (e.getCause() instanceof Exception) {
                nf2Var3 = this.n.c;
                nf2Var3.o((Exception) e.getCause());
            } else {
                nf2Var2 = this.n.c;
                nf2Var2.o(e);
            }
        } catch (Exception e2) {
            nf2Var = this.n.c;
            nf2Var.o(e2);
        }
    }
}
