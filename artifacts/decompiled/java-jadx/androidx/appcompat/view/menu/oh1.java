package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class oh1 extends hr1 {
    public final Map b;
    public final Map c;
    public long d;

    public oh1(cx1 cx1Var) {
        super(cx1Var);
        this.c = new o4();
        this.b = new o4();
    }

    public static /* synthetic */ void C(oh1 oh1Var, String str, long j) {
        oh1Var.n();
        mj0.e(str);
        Integer num = (Integer) oh1Var.c.get(str);
        if (num == null) {
            oh1Var.l().G().b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        t32 C = oh1Var.s().C(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            oh1Var.c.put(str, Integer.valueOf(intValue));
            return;
        }
        oh1Var.c.remove(str);
        Long l = (Long) oh1Var.b.get(str);
        if (l == null) {
            oh1Var.l().G().a("First ad unit exposure time was never set");
        } else {
            long longValue = j - l.longValue();
            oh1Var.b.remove(str);
            oh1Var.A(str, longValue, C);
        }
        if (oh1Var.c.isEmpty()) {
            long j2 = oh1Var.d;
            if (j2 == 0) {
                oh1Var.l().G().a("First ad exposure time was never set");
            } else {
                oh1Var.w(j - j2, C);
                oh1Var.d = 0L;
            }
        }
    }

    public static /* synthetic */ void y(oh1 oh1Var, String str, long j) {
        oh1Var.n();
        mj0.e(str);
        if (oh1Var.c.isEmpty()) {
            oh1Var.d = j;
        }
        Integer num = (Integer) oh1Var.c.get(str);
        if (num != null) {
            oh1Var.c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (oh1Var.c.size() >= 100) {
            oh1Var.l().L().a("Too many ads visible");
        } else {
            oh1Var.c.put(str, 1);
            oh1Var.b.put(str, Long.valueOf(j));
        }
    }

    public final void A(String str, long j, t32 t32Var) {
        if (t32Var == null) {
            l().K().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            l().K().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        x92.W(t32Var, bundle, true);
        r().z0("am", "_xu", bundle);
    }

    public final void B(long j) {
        Iterator it = this.b.keySet().iterator();
        while (it.hasNext()) {
            this.b.put((String) it.next(), Long.valueOf(j));
        }
        if (this.b.isEmpty()) {
            return;
        }
        this.d = j;
    }

    public final void D(String str, long j) {
        if (str == null || str.length() == 0) {
            l().G().a("Ad unit id must be a non-empty string");
        } else {
            h().D(new pm1(this, str, j));
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ oh1 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ zs1 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ ft1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ d02 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ r32 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ h42 t() {
        return super.t();
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ y62 u() {
        return super.u();
    }

    public final void v(long j) {
        t32 C = s().C(false);
        for (String str : this.b.keySet()) {
            A(str, j - ((Long) this.b.get(str)).longValue(), C);
        }
        if (!this.b.isEmpty()) {
            w(j - this.d, C);
        }
        B(j);
    }

    public final void w(long j, t32 t32Var) {
        if (t32Var == null) {
            l().K().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            l().K().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        x92.W(t32Var, bundle, true);
        r().z0("am", "_xa", bundle);
    }

    public final void z(String str, long j) {
        if (str == null || str.length() == 0) {
            l().G().a("Ad unit id must be a non-empty string");
        } else {
            h().D(new he1(this, str, j));
        }
    }
}
