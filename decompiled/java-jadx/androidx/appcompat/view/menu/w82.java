package androidx.appcompat.view.menu;

import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class w82 implements Callable {
    public final /* synthetic */ cb2 a;
    public final /* synthetic */ o82 b;

    public w82(o82 o82Var, cb2 cb2Var) {
        this.b = o82Var;
        this.a = cb2Var;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Object call() {
        if (!this.b.Q((String) mj0.i(this.a.m)).y() || !lz1.e(this.a.H).y()) {
            this.b.l().K().a("Analytics storage consent denied. Returning null app instance id");
            return null;
        }
        rw1 g = this.b.g(this.a);
        if (g != null) {
            return g.u0();
        }
        this.b.l().L().a("App info was null when attempting to get app instance id");
        return null;
    }
}
