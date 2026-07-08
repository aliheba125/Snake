package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class kx implements yw0 {
    public final t41 a;
    public final bz0 b;

    public kx(t41 t41Var, bz0 bz0Var) {
        this.a = t41Var;
        this.b = bz0Var;
    }

    @Override // androidx.appcompat.view.menu.yw0
    public boolean a(ai0 ai0Var) {
        if (!ai0Var.k() || this.a.f(ai0Var)) {
            return false;
        }
        this.b.c(m50.a().b(ai0Var.b()).d(ai0Var.c()).c(ai0Var.h()).a());
        return true;
    }

    @Override // androidx.appcompat.view.menu.yw0
    public boolean b(Exception exc) {
        this.b.d(exc);
        return true;
    }
}
