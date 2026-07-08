package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.appcompat.view.menu.az0;
import androidx.appcompat.view.menu.m2;
import androidx.appcompat.view.menu.wx;

/* loaded from: classes.dex */
public final class ud1 extends wx implements nz0 {
    public static final m2.g k;
    public static final m2.a l;
    public static final m2 m;

    static {
        m2.g gVar = new m2.g();
        k = gVar;
        sd1 sd1Var = new sd1();
        l = sd1Var;
        m = new m2("ClientTelemetry.API", sd1Var, gVar);
    }

    public ud1(Context context, oz0 oz0Var) {
        super(context, m, oz0Var, wx.a.c);
    }

    @Override // androidx.appcompat.view.menu.nz0
    public final zy0 a(final lz0 lz0Var) {
        az0.a a = az0.a();
        a.d(qc1.a);
        a.c(false);
        a.b(new no0() { // from class: androidx.appcompat.view.menu.pd1
            @Override // androidx.appcompat.view.menu.no0
            public final void a(Object obj, Object obj2) {
                lz0 lz0Var2 = lz0.this;
                m2.g gVar = ud1.k;
                ((hd1) ((xd1) obj).D()).u2(lz0Var2);
                ((bz0) obj2).c(null);
            }
        });
        return c(a.a());
    }
}
