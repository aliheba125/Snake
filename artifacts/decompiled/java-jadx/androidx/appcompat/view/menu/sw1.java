package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class sw1 implements rd2 {
    public final Executor a;
    public final Object b = new Object();
    public fg0 c;

    public sw1(Executor executor, fg0 fg0Var) {
        this.a = executor;
        this.c = fg0Var;
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        if (zy0Var.k()) {
            synchronized (this.b) {
                try {
                    if (this.c == null) {
                        return;
                    }
                    this.a.execute(new lu1(this));
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
