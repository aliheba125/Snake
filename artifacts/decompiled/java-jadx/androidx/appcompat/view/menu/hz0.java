package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class hz0 extends yy0 {
    public final Runnable o;

    public hz0(Runnable runnable, long j, cz0 cz0Var) {
        super(j, cz0Var);
        this.o = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            this.o.run();
        } finally {
            this.n.a();
        }
    }

    public String toString() {
        return "Task[" + hj.a(this.o) + '@' + hj.b(this.o) + ", " + this.m + ", " + this.n + ']';
    }
}
