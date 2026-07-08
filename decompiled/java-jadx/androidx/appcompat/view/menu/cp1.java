package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class cp1 extends hr1 {
    public boolean b;

    public cp1(cx1 cx1Var) {
        super(cx1Var);
        this.a.n();
    }

    public abstract boolean A();

    public final void v() {
        if (!z()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void w() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (A()) {
            return;
        }
        this.a.R();
        this.b = true;
    }

    public final void x() {
        if (this.b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        y();
        this.a.R();
        this.b = true;
    }

    public void y() {
    }

    public final boolean z() {
        return this.b;
    }
}
