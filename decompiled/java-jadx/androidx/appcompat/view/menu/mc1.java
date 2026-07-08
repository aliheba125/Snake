package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.appcompat.view.menu.m2;
import androidx.appcompat.view.menu.zx;
import java.util.Set;

/* loaded from: classes.dex */
public final class mc1 extends ec1 implements zx.a, zx.b {
    public static final m2.a s = rc1.c;
    public final Context l;
    public final Handler m;
    public final m2.a n;
    public final Set o;
    public final ac p;
    public uc1 q;
    public lc1 r;

    public mc1(Context context, Handler handler, ac acVar) {
        m2.a aVar = s;
        this.l = context;
        this.m = handler;
        this.p = (ac) mj0.j(acVar, "ClientSettings must not be null");
        this.o = acVar.e();
        this.n = aVar;
    }

    public static /* bridge */ /* synthetic */ void w2(mc1 mc1Var, ld1 ld1Var) {
        ef d = ld1Var.d();
        if (d.n()) {
            ce1 ce1Var = (ce1) mj0.i(ld1Var.f());
            ef d2 = ce1Var.d();
            if (!d2.n()) {
                String valueOf = String.valueOf(d2);
                new Exception();
                "Sign-in succeeded with resolve account failure: ".concat(valueOf);
                mc1Var.r.c(d2);
                mc1Var.q.n();
                return;
            }
            mc1Var.r.b(ce1Var.f(), mc1Var.o);
        } else {
            mc1Var.r.c(d);
        }
        mc1Var.q.n();
    }

    @Override // androidx.appcompat.view.menu.df
    public final void h(int i) {
        this.q.n();
    }

    @Override // androidx.appcompat.view.menu.hg0
    public final void j(ef efVar) {
        this.r.c(efVar);
    }

    @Override // androidx.appcompat.view.menu.df
    public final void k(Bundle bundle) {
        this.q.i(this);
    }

    @Override // androidx.appcompat.view.menu.vc1
    public final void v(ld1 ld1Var) {
        this.m.post(new kc1(this, ld1Var));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [androidx.appcompat.view.menu.m2$f, androidx.appcompat.view.menu.uc1] */
    public final void x2(lc1 lc1Var) {
        uc1 uc1Var = this.q;
        if (uc1Var != null) {
            uc1Var.n();
        }
        this.p.i(Integer.valueOf(System.identityHashCode(this)));
        m2.a aVar = this.n;
        Context context = this.l;
        Looper looper = this.m.getLooper();
        ac acVar = this.p;
        this.q = aVar.b(context, looper, acVar, acVar.f(), this, this);
        this.r = lc1Var;
        Set set = this.o;
        if (set == null || set.isEmpty()) {
            this.m.post(new jc1(this));
        } else {
            this.q.p();
        }
    }

    public final void y2() {
        uc1 uc1Var = this.q;
        if (uc1Var != null) {
            uc1Var.n();
        }
    }
}
