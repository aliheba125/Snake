package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class fr0 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;
    public final dl0 e;

    public fr0(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
        this.e = dl0Var5;
    }

    public static fr0 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5) {
        return new fr0(dl0Var, dl0Var2, dl0Var3, dl0Var4, dl0Var5);
    }

    public static er0 c(ec ecVar, ec ecVar2, Object obj, Object obj2, dl0 dl0Var) {
        return new er0(ecVar, ecVar2, (hp) obj, (gs0) obj2, dl0Var);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public er0 get() {
        return c((ec) this.a.get(), (ec) this.b.get(), this.c.get(), this.d.get(), this.e);
    }
}
