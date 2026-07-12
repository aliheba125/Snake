package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class lx implements yw0 {
    public final bz0 a;

    public lx(bz0 bz0Var) {
        this.a = bz0Var;
    }

    @Override // androidx.appcompat.view.menu.yw0
    public boolean a(ai0 ai0Var) {
        if (!ai0Var.l() && !ai0Var.k() && !ai0Var.i()) {
            return false;
        }
        this.a.e(ai0Var.d());
        return true;
    }

    @Override // androidx.appcompat.view.menu.yw0
    public boolean b(Exception exc) {
        return false;
    }
}
