package androidx.appcompat.view.menu;

import android.app.Activity;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes.dex */
public final class hb1 extends yd1 {
    public final q4 f;
    public final ay g;

    public hb1(y80 y80Var, ay ayVar, xx xxVar) {
        super(y80Var, xxVar);
        this.f = new q4();
        this.g = ayVar;
        this.a.a("ConnectionlessLifecycleHelper", this);
    }

    public static void u(Activity activity, ay ayVar, r2 r2Var) {
        y80 c = LifecycleCallback.c(activity);
        hb1 hb1Var = (hb1) c.d("ConnectionlessLifecycleHelper", hb1.class);
        if (hb1Var == null) {
            hb1Var = new hb1(c, ayVar, xx.m());
        }
        mj0.j(r2Var, "ApiKey cannot be null");
        hb1Var.f.add(r2Var);
        ayVar.c(hb1Var);
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void h() {
        super.h();
        v();
    }

    @Override // androidx.appcompat.view.menu.yd1, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void j() {
        super.j();
        v();
    }

    @Override // androidx.appcompat.view.menu.yd1, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        this.g.d(this);
    }

    @Override // androidx.appcompat.view.menu.yd1
    public final void m(ef efVar, int i) {
        this.g.F(efVar, i);
    }

    @Override // androidx.appcompat.view.menu.yd1
    public final void n() {
        this.g.a();
    }

    public final q4 t() {
        return this.f;
    }

    public final void v() {
        if (this.f.isEmpty()) {
            return;
        }
        this.g.c(this);
    }
}
