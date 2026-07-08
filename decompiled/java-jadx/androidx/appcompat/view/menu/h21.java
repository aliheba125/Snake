package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class h21 implements b21 {
    public final d21 a;
    public final String b;
    public final lo c;
    public final r11 d;
    public final i21 e;

    public h21(d21 d21Var, String str, lo loVar, r11 r11Var, i21 i21Var) {
        this.a = d21Var;
        this.b = str;
        this.c = loVar;
        this.d = r11Var;
        this.e = i21Var;
    }

    public static /* synthetic */ void c(Exception exc) {
    }

    @Override // androidx.appcompat.view.menu.b21
    public void a(wo woVar) {
        d(woVar, new n21() { // from class: androidx.appcompat.view.menu.g21
            @Override // androidx.appcompat.view.menu.n21
            public final void a(Exception exc) {
                h21.c(exc);
            }
        });
    }

    public void d(wo woVar, n21 n21Var) {
        this.e.a(ns0.a().e(this.a).c(woVar).f(this.b).d(this.d).b(this.c).a(), n21Var);
    }
}
