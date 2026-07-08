package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class na1 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;

    public na1(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
    }

    public static na1 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4) {
        return new na1(dl0Var, dl0Var2, dl0Var3, dl0Var4);
    }

    public static ma1 c(Executor executor, gp gpVar, pa1 pa1Var, py0 py0Var) {
        return new ma1(executor, gpVar, pa1Var, py0Var);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public ma1 get() {
        return c((Executor) this.a.get(), (gp) this.b.get(), (pa1) this.c.get(), (py0) this.d.get());
    }
}
