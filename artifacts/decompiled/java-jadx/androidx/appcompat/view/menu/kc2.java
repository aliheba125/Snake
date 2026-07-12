package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class kc2 implements mg0, ig0, fg0, rd2 {
    public final Executor a;
    public final cy0 b;
    public final nf2 c;

    public kc2(Executor executor, cy0 cy0Var, nf2 nf2Var) {
        this.a = executor;
        this.b = cy0Var;
        this.c = nf2Var;
    }

    @Override // androidx.appcompat.view.menu.mg0
    public final void a(Object obj) {
        this.c.p(obj);
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        this.a.execute(new db2(this, zy0Var));
    }

    @Override // androidx.appcompat.view.menu.fg0
    public final void c() {
        this.c.q();
    }

    @Override // androidx.appcompat.view.menu.ig0
    public final void d(Exception exc) {
        this.c.o(exc);
    }
}
