package androidx.appcompat.view.menu;

import android.content.ContentValues;
import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import androidx.appcompat.view.menu.lz1;
import androidx.appcompat.view.menu.or1;
import androidx.appcompat.view.menu.qr1;
import androidx.appcompat.view.menu.rr1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class rv1 extends m82 implements wf1 {
    public final Map d;
    public final Map e;
    public final Map f;
    public final Map g;
    public final Map h;
    public final Map i;
    public final pa0 j;
    public final hf2 k;
    public final Map l;
    public final Map m;
    public final Map n;

    public rv1(o82 o82Var) {
        super(o82Var);
        this.d = new o4();
        this.e = new o4();
        this.f = new o4();
        this.g = new o4();
        this.h = new o4();
        this.l = new o4();
        this.m = new o4();
        this.n = new o4();
        this.i = new o4();
        this.j = new dw1(this, 20);
        this.k = new bw1(this);
    }

    public static lz1.a B(or1.e eVar) {
        int i = fw1.b[eVar.ordinal()];
        if (i == 1) {
            return lz1.a.AD_STORAGE;
        }
        if (i == 2) {
            return lz1.a.ANALYTICS_STORAGE;
        }
        if (i == 3) {
            return lz1.a.AD_USER_DATA;
        }
        if (i != 4) {
            return null;
        }
        return lz1.a.AD_PERSONALIZATION;
    }

    public static Map D(rr1 rr1Var) {
        o4 o4Var = new o4();
        if (rr1Var != null) {
            for (ur1 ur1Var : rr1Var.X()) {
                o4Var.put(ur1Var.H(), ur1Var.I());
            }
        }
        return o4Var;
    }

    public static /* synthetic */ lh1 z(rv1 rv1Var, String str) {
        rv1Var.u();
        mj0.e(str);
        if (!rv1Var.W(str)) {
            return null;
        }
        if (!rv1Var.h.containsKey(str) || rv1Var.h.get(str) == null) {
            rv1Var.g0(str);
        } else {
            rv1Var.G(str, (rr1) rv1Var.h.get(str));
        }
        return (lh1) rv1Var.j.h().get(str);
    }

    public final rr1 A(String str, byte[] bArr) {
        if (bArr == null) {
            return rr1.P();
        }
        try {
            rr1 rr1Var = (rr1) ((q02) ((rr1.a) i92.G(rr1.N(), bArr)).j());
            l().K().c("Parsed config. version, gmp_app_id", rr1Var.b0() ? Long.valueOf(rr1Var.L()) : null, rr1Var.a0() ? rr1Var.Q() : null);
            return rr1Var;
        } catch (s12 e) {
            l().L().c("Unable to merge remote config. appId", pt1.v(str), e);
            return rr1.P();
        } catch (RuntimeException e2) {
            l().L().c("Unable to merge remote config. appId", pt1.v(str), e2);
            return rr1.P();
        }
    }

    public final lz1.a C(String str, lz1.a aVar) {
        n();
        g0(str);
        or1 J = J(str);
        if (J == null) {
            return null;
        }
        for (or1.c cVar : J.K()) {
            if (aVar == B(cVar.I())) {
                return B(cVar.H());
            }
        }
        return null;
    }

    public final void F(String str, rr1.a aVar) {
        HashSet hashSet = new HashSet();
        o4 o4Var = new o4();
        o4 o4Var2 = new o4();
        o4 o4Var3 = new o4();
        if (aVar != null) {
            Iterator it = aVar.x().iterator();
            while (it.hasNext()) {
                hashSet.add(((pr1) it.next()).H());
            }
            for (int i = 0; i < aVar.r(); i++) {
                qr1.a aVar2 = (qr1.a) aVar.s(i).x();
                if (aVar2.t().isEmpty()) {
                    l().L().a("EventConfig contained null event name");
                } else {
                    String t = aVar2.t();
                    String b = nz1.b(aVar2.t());
                    if (!TextUtils.isEmpty(b)) {
                        aVar2 = aVar2.s(b);
                        aVar.t(i, aVar2);
                    }
                    if (aVar2.w() && aVar2.u()) {
                        o4Var.put(t, Boolean.TRUE);
                    }
                    if (aVar2.x() && aVar2.v()) {
                        o4Var2.put(aVar2.t(), Boolean.TRUE);
                    }
                    if (aVar2.y()) {
                        if (aVar2.r() < 2 || aVar2.r() > 65535) {
                            l().L().c("Invalid sampling rate. Event name, sample rate", aVar2.t(), Integer.valueOf(aVar2.r()));
                        } else {
                            o4Var3.put(aVar2.t(), Integer.valueOf(aVar2.r()));
                        }
                    }
                }
            }
        }
        this.e.put(str, hashSet);
        this.f.put(str, o4Var);
        this.g.put(str, o4Var2);
        this.i.put(str, o4Var3);
    }

    public final void G(final String str, rr1 rr1Var) {
        if (rr1Var.j() == 0) {
            this.j.e(str);
            return;
        }
        l().K().b("EES programs found", Integer.valueOf(rr1Var.j()));
        jt1 jt1Var = (jt1) rr1Var.W().get(0);
        try {
            lh1 lh1Var = new lh1();
            lh1Var.c("internal.remoteConfig", new Callable() { // from class: androidx.appcompat.view.menu.tv1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new h72("internal.remoteConfig", new hw1(rv1.this, str));
                }
            });
            lh1Var.c("internal.appMetadata", new Callable() { // from class: androidx.appcompat.view.menu.zv1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    final rv1 rv1Var = rv1.this;
                    final String str2 = str;
                    return new rf2("internal.appMetadata", new Callable() { // from class: androidx.appcompat.view.menu.vv1
                        @Override // java.util.concurrent.Callable
                        public final Object call() {
                            rv1 rv1Var2 = rv1.this;
                            String str3 = str2;
                            rw1 D0 = rv1Var2.q().D0(str3);
                            HashMap hashMap = new HashMap();
                            hashMap.put("platform", "android");
                            hashMap.put("package_name", str3);
                            hashMap.put("gmp_version", 82001L);
                            if (D0 != null) {
                                String h = D0.h();
                                if (h != null) {
                                    hashMap.put("app_version", h);
                                }
                                hashMap.put("app_version_int", Long.valueOf(D0.z()));
                                hashMap.put("dynamite_version", Long.valueOf(D0.c0()));
                            }
                            return hashMap;
                        }
                    });
                }
            });
            lh1Var.c("internal.logger", new Callable() { // from class: androidx.appcompat.view.menu.xv1
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return new ke2(rv1.this.k);
                }
            });
            lh1Var.b(jt1Var);
            this.j.d(str, lh1Var);
            l().K().c("EES program loaded for appId, activities", str, Integer.valueOf(jt1Var.G().j()));
            Iterator it = jt1Var.G().I().iterator();
            while (it.hasNext()) {
                l().K().b("EES program activity", ((it1) it.next()).H());
            }
        } catch (pk1 unused) {
            l().G().b("Failed to load EES program. appId", str);
        }
    }

    public final boolean H(String str, byte[] bArr, String str2, String str3) {
        u();
        n();
        mj0.e(str);
        rr1.a aVar = (rr1.a) A(str, bArr).x();
        if (aVar == null) {
            return false;
        }
        F(str, aVar);
        G(str, (rr1) ((q02) aVar.j()));
        this.h.put(str, (rr1) ((q02) aVar.j()));
        this.l.put(str, aVar.v());
        this.m.put(str, str2);
        this.n.put(str, str3);
        this.d.put(str, D((rr1) ((q02) aVar.j())));
        q().Z(str, new ArrayList(aVar.w()));
        try {
            aVar.u();
            bArr = ((rr1) ((q02) aVar.j())).h();
        } catch (RuntimeException e) {
            l().L().c("Unable to serialize reduced-size config. Storing full config instead. appId", pt1.v(str), e);
        }
        lg1 q = q();
        mj0.e(str);
        q.n();
        q.u();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (q.B().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                q.l().G().b("Failed to update remote config (got 0). appId", pt1.v(str));
            }
        } catch (SQLiteException e2) {
            q.l().G().c("Error storing remote config. appId", pt1.v(str), e2);
        }
        this.h.put(str, (rr1) ((q02) aVar.j()));
        return true;
    }

    public final int I(String str, String str2) {
        Integer num;
        n();
        g0(str);
        Map map = (Map) this.i.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final or1 J(String str) {
        n();
        g0(str);
        rr1 L = L(str);
        if (L == null || !L.Z()) {
            return null;
        }
        return L.M();
    }

    public final boolean K(String str, lz1.a aVar) {
        n();
        g0(str);
        or1 J = J(str);
        if (J == null) {
            return false;
        }
        Iterator it = J.J().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            or1.b bVar = (or1.b) it.next();
            if (aVar == B(bVar.I())) {
                if (bVar.H() == or1.d.GRANTED) {
                    return true;
                }
            }
        }
        return false;
    }

    public final rr1 L(String str) {
        u();
        n();
        mj0.e(str);
        g0(str);
        return (rr1) this.h.get(str);
    }

    public final boolean M(String str, String str2) {
        Boolean bool;
        n();
        g0(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final String N(String str) {
        n();
        return (String) this.n.get(str);
    }

    public final boolean O(String str, String str2) {
        Boolean bool;
        n();
        g0(str);
        if (X(str) && x92.H0(str2)) {
            return true;
        }
        if (Z(str) && x92.J0(str2)) {
            return true;
        }
        Map map = (Map) this.f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public final String P(String str) {
        n();
        return (String) this.m.get(str);
    }

    public final String Q(String str) {
        n();
        g0(str);
        return (String) this.l.get(str);
    }

    public final Set R(String str) {
        n();
        g0(str);
        return (Set) this.e.get(str);
    }

    public final SortedSet S(String str) {
        n();
        g0(str);
        TreeSet treeSet = new TreeSet();
        or1 J = J(str);
        if (J == null) {
            return treeSet;
        }
        Iterator it = J.I().iterator();
        while (it.hasNext()) {
            treeSet.add(((or1.f) it.next()).H());
        }
        return treeSet;
    }

    public final void T(String str) {
        n();
        this.m.put(str, null);
    }

    public final void U(String str) {
        n();
        this.h.remove(str);
    }

    public final boolean V(String str) {
        n();
        rr1 L = L(str);
        if (L == null) {
            return false;
        }
        return L.Y();
    }

    public final boolean W(String str) {
        rr1 rr1Var;
        return (TextUtils.isEmpty(str) || (rr1Var = (rr1) this.h.get(str)) == null || rr1Var.j() == 0) ? false : true;
    }

    public final boolean X(String str) {
        return "1".equals(c(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean Y(String str) {
        n();
        g0(str);
        or1 J = J(str);
        return J == null || !J.M() || J.L();
    }

    public final boolean Z(String str) {
        return "1".equals(c(str, "measurement.upload.blacklist_public"));
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    public final boolean a0(String str) {
        n();
        g0(str);
        return this.e.get(str) != null && ((Set) this.e.get(str)).contains("app_instance_id");
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    public final boolean b0(String str) {
        n();
        g0(str);
        if (this.e.get(str) != null) {
            return ((Set) this.e.get(str)).contains("device_model") || ((Set) this.e.get(str)).contains("device_info");
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.wf1
    public final String c(String str, String str2) {
        n();
        g0(str);
        Map map = (Map) this.d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    public final boolean c0(String str) {
        n();
        g0(str);
        return this.e.get(str) != null && ((Set) this.e.get(str)).contains("enhanced_user_id");
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    public final boolean d0(String str) {
        n();
        g0(str);
        return this.e.get(str) != null && ((Set) this.e.get(str)).contains("google_signals");
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    public final boolean e0(String str) {
        n();
        g0(str);
        if (this.e.get(str) != null) {
            return ((Set) this.e.get(str)).contains("os_version") || ((Set) this.e.get(str)).contains("device_info");
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    public final boolean f0(String str) {
        n();
        g0(str);
        return this.e.get(str) != null && ((Set) this.e.get(str)).contains("user_id");
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    public final void g0(String str) {
        u();
        n();
        mj0.e(str);
        if (this.h.get(str) == null) {
            pg1 E0 = q().E0(str);
            if (E0 != null) {
                rr1.a aVar = (rr1.a) A(str, E0.a).x();
                F(str, aVar);
                this.d.put(str, D((rr1) ((q02) aVar.j())));
                this.h.put(str, (rr1) ((q02) aVar.j()));
                G(str, (rr1) ((q02) aVar.j()));
                this.l.put(str, aVar.v());
                this.m.put(str, E0.b);
                this.n.put(str, E0.c);
                return;
            }
            this.d.put(str, null);
            this.f.put(str, null);
            this.e.put(str, null);
            this.g.put(str, null);
            this.h.put(str, null);
            this.l.put(str, null);
            this.m.put(str, null);
            this.n.put(str, null);
            this.i.put(str, null);
        }
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

    public final long y(String str) {
        String c = c(str, "measurement.account.time_zone_offset_minutes");
        if (TextUtils.isEmpty(c)) {
            return 0L;
        }
        try {
            return Long.parseLong(c);
        } catch (NumberFormatException e) {
            l().L().c("Unable to parse timezone offset. appId", pt1.v(str), e);
            return 0L;
        }
    }
}
