package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Pair;
import androidx.appcompat.view.menu.y1;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* loaded from: classes.dex */
public final class p62 extends m82 {
    public final Map d;
    public final dv1 e;
    public final dv1 f;
    public final dv1 g;
    public final dv1 h;
    public final dv1 i;

    public p62(o82 o82Var) {
        super(o82Var);
        this.d = new HashMap();
        tu1 i = i();
        i.getClass();
        this.e = new dv1(i, "last_delete_stale", 0L);
        tu1 i2 = i();
        i2.getClass();
        this.f = new dv1(i2, "backoff", 0L);
        tu1 i3 = i();
        i3.getClass();
        this.g = new dv1(i3, "last_upload", 0L);
        tu1 i4 = i();
        i4.getClass();
        this.h = new dv1(i4, "last_upload_attempt", 0L);
        tu1 i5 = i();
        i5.getClass();
        this.i = new dv1(i5, "midnight_offset", 0L);
    }

    private final Pair y(String str) {
        n62 n62Var;
        y1.a aVar;
        n();
        long b = b().b();
        n62 n62Var2 = (n62) this.d.get(str);
        if (n62Var2 != null && b < n62Var2.c) {
            return new Pair(n62Var2.a, Boolean.valueOf(n62Var2.b));
        }
        y1.b(true);
        long C = e().C(str) + b;
        try {
            long x = e().x(str, si1.d);
            if (x > 0) {
                try {
                    aVar = y1.a(a());
                } catch (PackageManager.NameNotFoundException unused) {
                    if (n62Var2 != null && b < n62Var2.c + x) {
                        return new Pair(n62Var2.a, Boolean.valueOf(n62Var2.b));
                    }
                    aVar = null;
                }
            } else {
                aVar = y1.a(a());
            }
        } catch (Exception e) {
            l().F().b("Unable to get advertising id", e);
            n62Var = new n62("", false, C);
        }
        if (aVar == null) {
            return new Pair("00000000-0000-0000-0000-000000000000", Boolean.FALSE);
        }
        String a = aVar.a();
        n62Var = a != null ? new n62(a, aVar.b(), C) : new n62("", aVar.b(), C);
        this.d.put(str, n62Var);
        y1.b(false);
        return new Pair(n62Var.a, Boolean.valueOf(n62Var.b));
    }

    public final String A(String str, boolean z) {
        n();
        String str2 = z ? (String) y(str).first : "00000000-0000-0000-0000-000000000000";
        MessageDigest T0 = x92.T0();
        if (T0 == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, T0.digest(str2.getBytes())));
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

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ i92 o() {
        return super.o();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ we2 p() {
        return super.p();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ lg1 q() {
        return super.q();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ rv1 r() {
        return super.r();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ p62 s() {
        return super.s();
    }

    @Override // androidx.appcompat.view.menu.g82
    public final /* bridge */ /* synthetic */ k82 t() {
        return super.t();
    }

    @Override // androidx.appcompat.view.menu.m82
    public final boolean x() {
        return false;
    }

    public final Pair z(String str, lz1 lz1Var) {
        return lz1Var.x() ? y(str) : new Pair("", Boolean.FALSE);
    }
}
