package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class yr0 implements qq {
    public final dl0 a;

    public yr0(dl0 dl0Var) {
        this.a = dl0Var;
    }

    public static ur0 a(ec ecVar) {
        return (ur0) lj0.c(xr0.a(ecVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static yr0 b(dl0 dl0Var) {
        return new yr0(dl0Var);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public ur0 get() {
        return a((ec) this.a.get());
    }
}
