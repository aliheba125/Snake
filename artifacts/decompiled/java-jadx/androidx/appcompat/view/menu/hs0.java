package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public final class hs0 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;

    public hs0(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
    }

    public static hs0 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3) {
        return new hs0(dl0Var, dl0Var2, dl0Var3);
    }

    public static gs0 c(Context context, String str, int i) {
        return new gs0(context, str, i);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public gs0 get() {
        return c((Context) this.a.get(), (String) this.b.get(), ((Integer) this.c.get()).intValue());
    }
}
