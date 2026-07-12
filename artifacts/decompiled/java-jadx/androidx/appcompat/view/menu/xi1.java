package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class xi1 implements bj1 {
    public final pw1 a;
    public final String b;

    public xi1(pw1 pw1Var, String str) {
        this.a = pw1Var;
        this.b = str;
    }

    @Override // androidx.appcompat.view.menu.bj1
    public final pw1 a(qg1 qg1Var) {
        pw1 d = this.a.d();
        d.f(this.b, qg1Var);
        return d;
    }
}
