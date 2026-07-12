package androidx.appcompat.view.menu;

import android.content.Context;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class j41 implements qq {
    public final dl0 a;
    public final dl0 b;
    public final dl0 c;
    public final dl0 d;
    public final dl0 e;
    public final dl0 f;
    public final dl0 g;
    public final dl0 h;
    public final dl0 i;

    public j41(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5, dl0 dl0Var6, dl0 dl0Var7, dl0 dl0Var8, dl0 dl0Var9) {
        this.a = dl0Var;
        this.b = dl0Var2;
        this.c = dl0Var3;
        this.d = dl0Var4;
        this.e = dl0Var5;
        this.f = dl0Var6;
        this.g = dl0Var7;
        this.h = dl0Var8;
        this.i = dl0Var9;
    }

    public static j41 a(dl0 dl0Var, dl0 dl0Var2, dl0 dl0Var3, dl0 dl0Var4, dl0 dl0Var5, dl0 dl0Var6, dl0 dl0Var7, dl0 dl0Var8, dl0 dl0Var9) {
        return new j41(dl0Var, dl0Var2, dl0Var3, dl0Var4, dl0Var5, dl0Var6, dl0Var7, dl0Var8, dl0Var9);
    }

    public static i41 c(Context context, r7 r7Var, gp gpVar, pa1 pa1Var, Executor executor, py0 py0Var, ec ecVar, ec ecVar2, xb xbVar) {
        return new i41(context, r7Var, gpVar, pa1Var, executor, py0Var, ecVar, ecVar2, xbVar);
    }

    @Override // androidx.appcompat.view.menu.dl0
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public i41 get() {
        return c((Context) this.a.get(), (r7) this.b.get(), (gp) this.c.get(), (pa1) this.d.get(), (Executor) this.e.get(), (py0) this.f.get(), (ec) this.g.get(), (ec) this.h.get(), (xb) this.i.get());
    }
}
