package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public final class ed0 implements qq {
    public final dl0 a;
    public final dl0 b;

    public ed0(dl0 dl0Var, dl0 dl0Var2) {
        this.a = dl0Var;
        this.b = dl0Var2;
    }

    public static ed0 a(dl0 dl0Var, dl0 dl0Var2) {
        return new ed0(dl0Var, dl0Var2);
    }

    public static dd0 c(Context context, Object obj) {
        return new dd0(context, (ei) obj);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public dd0 get() {
        return c((Context) this.a.get(), this.b.get());
    }
}
