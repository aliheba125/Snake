package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public final class as0 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;

    public as0(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
    }

    public static as0 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4) {
        return new as0(dl0Var, dl0Var2, dl0Var3, dl0Var4);
    }

    public static pa1 c(Context context, gp gpVar, ur0 ur0Var, ec ecVar) {
        return (pa1) lj0.c(zr0.a(context, gpVar, ur0Var, ecVar), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public pa1 get() {
        return c((Context) this.a.get(), (gp) this.b.get(), (ur0) this.c.get(), (ec) this.d.get());
    }
}
