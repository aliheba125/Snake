package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class m21 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;
    public final dl0 e;

    public m21(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
        this.e = dl0Var5;
    }

    public static m21 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        return new m21(dl0Var, dl0Var2, dl0Var3, dl0Var4, dl0Var5);
    }

    public static k21 c(ec ecVar, ec ecVar2, tr0 tr0Var, i41 i41Var, ma1 ma1Var) {
        return new k21(ecVar, ecVar2, tr0Var, i41Var, ma1Var);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public k21 get() {
        return c((ec) this.a.get(), (ec) this.b.get(), (tr0) this.c.get(), (i41) this.d.get(), (ma1) this.e.get());
    }
}
