package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class cg2 implements Runnable {
    public final /* synthetic */ nf2 m;
    public final /* synthetic */ Callable n;

    public cg2(nf2 nf2Var, Callable callable) {
        this.m = nf2Var;
        this.n = callable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.m.p(this.n.call());
        } catch (Exception e) {
            this.m.o(e);
        } catch (Throwable th) {
            this.m.o(new RuntimeException(th));
        }
    }
}
