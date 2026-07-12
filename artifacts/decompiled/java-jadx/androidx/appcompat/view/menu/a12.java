package androidx.appcompat.view.menu;

import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class a12 implements rd2 {
    public final Executor a;
    public final Object b = new Object();
    public gg0 c;

    public a12(Executor executor, gg0 gg0Var) {
        this.a = executor;
        this.c = gg0Var;
    }

    @Override // androidx.appcompat.view.menu.rd2
    public final void b(zy0 zy0Var) {
        synchronized (this.b) {
            try {
                if (this.c == null) {
                    return;
                }
                this.a.execute(new xy1(this, zy0Var));
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
