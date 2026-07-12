package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class p92 implements rd2 {
    public final Executor a;
    public final Object b = new Object();
    public mg0 c;

    public p92(Executor executor, mg0 mg0Var) {
        this.a = executor;
        this.c = mg0Var;
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        if (zy0Var.m()) {
            synchronized (this.b) {
                try {
                    if (this.c == null) {
                        return;
                    }
                    this.a.execute(new i72(this, zy0Var));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
