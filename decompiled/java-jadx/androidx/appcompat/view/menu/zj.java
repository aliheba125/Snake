package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zj implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;
    public final dl0 e;

    public zj(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
        this.e = dl0Var5;
    }

    public static zj a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        return new zj(dl0Var, dl0Var2, dl0Var3, dl0Var4, dl0Var5);
    }

    public static yj c(Executor executor, r7 r7Var, pa1 pa1Var, gp gpVar, py0 py0Var) {
        return new yj(executor, r7Var, pa1Var, gpVar, py0Var);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public yj get() {
        return c((Executor) this.a.get(), (r7) this.b.get(), (pa1) this.c.get(), (gp) this.d.get(), (py0) this.e.get());
    }
}
