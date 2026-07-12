package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class rm1 implements rd2 {
    public final Executor a;
    public final yg b;
    public final nf2 c;

    public rm1(Executor executor, yg ygVar, nf2 nf2Var) {
        this.a = executor;
        this.b = ygVar;
        this.c = nf2Var;
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        this.a.execute(new ek1(this, zy0Var));
    }
}
