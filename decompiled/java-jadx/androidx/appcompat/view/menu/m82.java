package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class m82 extends g82 {
    public boolean c;

    public m82(o82 o82Var) {
        super(o82Var);
        this.b.r0();
    }

    public final void u() {
        if (!w()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void v() {
        if (this.c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        x();
        this.b.q0();
        this.c = true;
    }

    public final boolean w() {
        return this.c;
    }

    public abstract boolean x();
}
