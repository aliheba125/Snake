package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m2;
import androidx.appcompat.view.menu.z7;
import java.util.Map;
import java.util.Set;

/* loaded from: classes.dex */
public final class xb1 implements z7.c, lc1 {
    public final m2.f a;
    public final r2 b;
    public mz c = null;
    public Set d = null;
    public boolean e = false;
    public final /* synthetic */ ay f;

    public xb1(ay ayVar, m2.f fVar, r2 r2Var) {
        this.f = ayVar;
        this.a = fVar;
        this.b = r2Var;
    }

    @Override // androidx.appcompat.view.menu.z7.c
    public final void a(ef efVar) {
        this.f.A.post(new wb1(this, efVar));
    }

    @Override // androidx.appcompat.view.menu.lc1
    public final void b(mz mzVar, Set set) {
        if (mzVar == null || set == null) {
            new Exception();
            c(new ef(4));
        } else {
            this.c = mzVar;
            this.d = set;
            h();
        }
    }

    @Override // androidx.appcompat.view.menu.lc1
    public final void c(ef efVar) {
        Map map;
        map = this.f.w;
        tb1 tb1Var = (tb1) map.get(this.b);
        if (tb1Var != null) {
            tb1Var.H(efVar);
        }
    }

    public final void h() {
        mz mzVar;
        if (!this.e || (mzVar = this.c) == null) {
            return;
        }
        this.a.k(mzVar, this.d);
    }
}
