package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e52 implements rd2 {
    public final Executor a;
    public final Object b = new Object();
    public ig0 c;

    public e52(Executor executor, ig0 ig0Var) {
        this.a = executor;
        this.c = ig0Var;
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        if (zy0Var.m() || zy0Var.k()) {
            return;
        }
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new b32(this, zy0Var));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
