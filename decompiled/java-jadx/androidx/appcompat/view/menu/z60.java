package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class z60 extends pd implements mm, t40 {
    public b70 p;

    @Override // androidx.appcompat.view.menu.mm
    public void a() {
        x().v0(this);
    }

    @Override // androidx.appcompat.view.menu.t40
    public boolean c() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.t40
    public ze0 f() {
        return null;
    }

    @Override // androidx.appcompat.view.menu.ba0
    public String toString() {
        return hj.a(this) + '@' + hj.b(this) + "[job@" + hj.b(x()) + ']';
    }

    public final b70 x() {
        b70 b70Var = this.p;
        if (b70Var != null) {
            return b70Var;
        }
        z50.n("job");
        return null;
    }

    public final void y(b70 b70Var) {
        this.p = b70Var;
    }
}
