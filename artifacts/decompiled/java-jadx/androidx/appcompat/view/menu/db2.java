package androidx.appcompat.view.menu;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class db2 implements Runnable {
    public final /* synthetic */ zy0 m;
    public final /* synthetic */ kc2 n;

    public db2(kc2 kc2Var, zy0 zy0Var) {
        this.n = kc2Var;
        this.m = zy0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        cy0 cy0Var;
        try {
            cy0Var = this.n.b;
            zy0 a = cy0Var.a(this.m.i());
            if (a == null) {
                this.n.d(new NullPointerException("Continuation returned null"));
                return;
            }
            Executor executor = gz0.b;
            a.e(executor, this.n);
            a.d(executor, this.n);
            a.a(executor, this.n);
        } catch (cq0 e) {
            if (e.getCause() instanceof Exception) {
                this.n.d((Exception) e.getCause());
            } else {
                this.n.d(e);
            }
        } catch (CancellationException unused) {
            this.n.c();
        } catch (Exception e2) {
            this.n.d(e2);
        }
    }
}
