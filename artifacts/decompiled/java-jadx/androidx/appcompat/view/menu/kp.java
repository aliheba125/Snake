package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public final class kp implements qq {
    public final dl0 a;

    public kp(dl0 dl0Var) {
        this.a = dl0Var;
    }

    public static kp a(dl0 dl0Var) {
        return new kp(dl0Var);
    }

    public static String c(Context context) {
        return (String) lj0.c(ip.b(context), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public String get() {
        return c((Context) this.a.get());
    }
}
