package androidx.appcompat.view.menu;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import androidx.appcompat.view.menu.lz1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import java.util.function.Function;

/* loaded from: classes.dex */
public final class d02 extends cp1 {
    public r22 c;
    public uz1 d;
    public final Set e;
    public boolean f;
    public final AtomicReference g;
    public final Object h;
    public boolean i;
    public PriorityQueue j;
    public lz1 k;
    public final AtomicLong l;
    public long m;
    public final cf2 n;
    public boolean o;
    public bh1 p;
    public final ba2 q;

    public d02(cx1 cx1Var) {
        super(cx1Var);
        this.e = new CopyOnWriteArraySet();
        this.h = new Object();
        this.i = false;
        this.o = true;
        this.q = new b22(this);
        this.g = new AtomicReference();
        this.k = lz1.c;
        this.m = -1L;
        this.l = new AtomicLong(0L);
        this.n = new cf2(cx1Var);
    }

    public static /* synthetic */ void N(d02 d02Var, lz1 lz1Var, long j, boolean z, boolean z2) {
        d02Var.n();
        d02Var.v();
        lz1 J = d02Var.i().J();
        if (j <= d02Var.m && lz1.k(J.b(), lz1Var.b())) {
            d02Var.l().J().b("Dropped out-of-date consent setting, proposed settings", lz1Var);
            return;
        }
        if (!d02Var.i().A(lz1Var)) {
            d02Var.l().J().b("Lower precedence consent source ignored, proposed source", Integer.valueOf(lz1Var.b()));
            return;
        }
        d02Var.m = j;
        d02Var.t().U(z);
        if (z2) {
            d02Var.t().Q(new AtomicReference());
        }
    }

    public static /* synthetic */ void O(d02 d02Var, lz1 lz1Var, lz1 lz1Var2) {
        lz1.a aVar = lz1.a.ANALYTICS_STORAGE;
        lz1.a aVar2 = lz1.a.AD_STORAGE;
        boolean m = lz1Var.m(lz1Var2, aVar, aVar2);
        boolean r = lz1Var.r(lz1Var2, aVar, aVar2);
        if (m || r) {
            d02Var.p().I();
        }
    }

    @Override // androidx.appcompat.view.menu.cp1
    public final boolean A() {
        return false;
    }

    public final ArrayList C(String str, String str2) {
        if (h().J()) {
            l().G().a("Cannot get conditional user properties from analytics worker thread");
            return new ArrayList(0);
        }
        if (mf1.a()) {
            l().G().a("Cannot get conditional user properties from main thread");
            return new ArrayList(0);
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.h().v(atomicReference, 5000L, "get conditional user properties", new z12(this, atomicReference, null, str, str2));
        List list = (List) atomicReference.get();
        if (list != null) {
            return x92.t0(list);
        }
        l().G().b("Timed out waiting for get conditional user properties", null);
        return new ArrayList();
    }

    public final Map D(String str, String str2, boolean z) {
        if (h().J()) {
            l().G().a("Cannot get user properties from analytics worker thread");
            return Collections.emptyMap();
        }
        if (mf1.a()) {
            l().G().a("Cannot get user properties from main thread");
            return Collections.emptyMap();
        }
        AtomicReference atomicReference = new AtomicReference();
        this.a.h().v(atomicReference, 5000L, "get user properties", new y12(this, atomicReference, null, str, str2, z));
        List<v92> list = (List) atomicReference.get();
        if (list == null) {
            l().G().b("Timed out waiting for handle get user properties, includeInternal", Boolean.valueOf(z));
            return Collections.emptyMap();
        }
        o4 o4Var = new o4(list.size());
        for (v92 v92Var : list) {
            Object d = v92Var.d();
            if (d != null) {
                o4Var.put(v92Var.n, d);
            }
        }
        return o4Var;
    }

    public final void E(long j, boolean z) {
        n();
        v();
        l().F().a("Resetting analytics data (FE)");
        y62 u = u();
        u.n();
        u.f.b();
        if (ed2.a() && e().s(si1.x0)) {
            p().I();
        }
        boolean p = this.a.p();
        tu1 i = i();
        i.e.b(j);
        if (!TextUtils.isEmpty(i.i().v.a())) {
            i.v.b(null);
        }
        if (mb2.a() && i.e().s(si1.q0)) {
            i.p.b(0L);
        }
        i.q.b(0L);
        if (!i.e().R()) {
            i.E(!p);
        }
        i.w.b(null);
        i.x.b(0L);
        i.y.b(null);
        if (z) {
            t().a0();
        }
        if (mb2.a() && e().s(si1.q0)) {
            u().e.a();
        }
        this.o = !p;
    }

    public final /* synthetic */ void F(Bundle bundle) {
        if (bundle == null) {
            i().y.b(new Bundle());
            return;
        }
        Bundle a = i().y.a();
        for (String str : bundle.keySet()) {
            Object obj = bundle.get(str);
            if (obj != null && !(obj instanceof String) && !(obj instanceof Long) && !(obj instanceof Double)) {
                j();
                if (x92.g0(obj)) {
                    j();
                    x92.X(this.q, 27, null, null, 0);
                }
                l().M().c("Invalid default event parameter type. Name, value", str, obj);
            } else if (x92.H0(str)) {
                l().M().b("Invalid default event parameter name. Name", str);
            } else if (obj == null) {
                a.remove(str);
            } else if (j().k0("param", str, e().t(this.a.B().F()), obj)) {
                j().N(a, str, obj);
            }
        }
        j();
        if (x92.f0(a, e().E())) {
            j();
            x92.X(this.q, 26, null, null, 0);
            l().M().a("Too many default event parameters set. Discarding beyond event parameter limit");
        }
        i().y.b(a);
        t().C(a);
    }

    public final void G(Bundle bundle, int i, long j) {
        v();
        String i2 = lz1.i(bundle);
        if (i2 != null) {
            l().M().b("Ignoring invalid consent setting", i2);
            l().M().a("Valid consent values are 'granted', 'denied'");
        }
        lz1 c = lz1.c(bundle, i);
        if (!na2.a() || !e().s(si1.S0)) {
            K(c, j);
            return;
        }
        if (c.z()) {
            K(c, j);
        }
        fh1 b = fh1.b(bundle, i);
        if (b.j()) {
            I(b);
        }
        Boolean d = fh1.d(bundle);
        if (d != null) {
            b0("app", "allow_personalized_ads", d.toString(), false);
        }
    }

    public final void H(Bundle bundle, long j) {
        mj0.i(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            l().L().a("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        mj0.i(bundle2);
        hz1.a(bundle2, "app_id", String.class, null);
        hz1.a(bundle2, "origin", String.class, null);
        hz1.a(bundle2, "name", String.class, null);
        hz1.a(bundle2, "value", Object.class, null);
        hz1.a(bundle2, "trigger_event_name", String.class, null);
        hz1.a(bundle2, "trigger_timeout", Long.class, 0L);
        hz1.a(bundle2, "timed_out_event_name", String.class, null);
        hz1.a(bundle2, "timed_out_event_params", Bundle.class, null);
        hz1.a(bundle2, "triggered_event_name", String.class, null);
        hz1.a(bundle2, "triggered_event_params", Bundle.class, null);
        hz1.a(bundle2, "time_to_live", Long.class, 0L);
        hz1.a(bundle2, "expired_event_name", String.class, null);
        hz1.a(bundle2, "expired_event_params", Bundle.class, null);
        mj0.e(bundle2.getString("name"));
        mj0.e(bundle2.getString("origin"));
        mj0.i(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        if (j().q0(string) != 0) {
            l().G().b("Invalid conditional user property name", g().g(string));
            return;
        }
        if (j().w(string, obj) != 0) {
            l().G().c("Invalid conditional user property value", g().g(string), obj);
            return;
        }
        Object A0 = j().A0(string, obj);
        if (A0 == null) {
            l().G().c("Unable to normalize conditional user property value", g().g(string), obj);
            return;
        }
        hz1.b(bundle2, A0);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
            l().G().c("Invalid conditional user property timeout", g().g(string), Long.valueOf(j2));
            return;
        }
        long j3 = bundle2.getLong("time_to_live");
        if (j3 > 15552000000L || j3 < 1) {
            l().G().c("Invalid conditional user property time to live", g().g(string), Long.valueOf(j3));
        } else {
            h().D(new x12(this, bundle2));
        }
    }

    public final void I(fh1 fh1Var) {
        h().D(new p22(this, fh1Var));
    }

    public final void J(lz1 lz1Var) {
        n();
        boolean z = (lz1Var.y() && lz1Var.x()) || t().e0();
        if (z != this.a.q()) {
            this.a.w(z);
            Boolean L = i().L();
            if (!z || L == null || L.booleanValue()) {
                S(Boolean.valueOf(z), false);
            }
        }
    }

    public final void K(lz1 lz1Var, long j) {
        lz1 lz1Var2;
        boolean z;
        lz1 lz1Var3;
        boolean z2;
        boolean z3;
        v();
        int b = lz1Var.b();
        if (b != -10 && lz1Var.s() == null && lz1Var.u() == null) {
            l().M().a("Discarding empty consent settings");
            return;
        }
        synchronized (this.h) {
            try {
                lz1Var2 = this.k;
                z = false;
                if (lz1.k(b, lz1Var2.b())) {
                    z3 = lz1Var.t(this.k);
                    if (lz1Var.y() && !this.k.y()) {
                        z = true;
                    }
                    lz1 p = lz1Var.p(this.k);
                    this.k = p;
                    lz1Var3 = p;
                    z2 = z;
                    z = true;
                } else {
                    lz1Var3 = lz1Var;
                    z2 = false;
                    z3 = false;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (!z) {
            l().J().b("Ignoring lower-priority consent settings, proposed settings", lz1Var3);
            return;
        }
        long andIncrement = this.l.getAndIncrement();
        if (z3) {
            T(null);
            h().G(new n22(this, lz1Var3, j, andIncrement, z2, lz1Var2));
            return;
        }
        t22 t22Var = new t22(this, lz1Var3, andIncrement, z2, lz1Var2);
        if (b == 30 || b == -10) {
            h().G(t22Var);
        } else {
            h().D(t22Var);
        }
    }

    public final void L(sz1 sz1Var) {
        v();
        mj0.i(sz1Var);
        if (this.e.add(sz1Var)) {
            return;
        }
        l().L().a("OnEventListener already registered");
    }

    public final void M(uz1 uz1Var) {
        uz1 uz1Var2;
        n();
        v();
        if (uz1Var != null && uz1Var != (uz1Var2 = this.d)) {
            mj0.m(uz1Var2 == null, "EventInterceptor already set.");
        }
        this.d = uz1Var;
    }

    public final void R(Boolean bool) {
        v();
        h().D(new j22(this, bool));
    }

    public final void S(Boolean bool, boolean z) {
        n();
        v();
        l().F().b("Setting app measurement enabled (FE)", bool);
        i().v(bool);
        if (z) {
            i().C(bool);
        }
        if (this.a.q() || !(bool == null || bool.booleanValue())) {
            t0();
        }
    }

    public final void T(String str) {
        this.g.set(str);
    }

    public final void U(String str, String str2, long j, Bundle bundle) {
        n();
        V(str, str2, j, bundle, true, this.d == null || x92.H0(str2), true, null);
    }

    public final void V(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        long j2;
        String str4;
        d02 d02Var;
        String str5;
        String str6;
        int length;
        mj0.e(str);
        mj0.i(bundle);
        n();
        v();
        if (!this.a.p()) {
            l().F().a("Event not sent since app measurement is disabled");
            return;
        }
        List H = p().H();
        if (H != null && !H.contains(str2)) {
            l().F().c("Dropping non-safelisted event. event name, origin", str2, str);
            return;
        }
        if (!this.f) {
            this.f = true;
            try {
                try {
                    (!this.a.t() ? Class.forName("com.google.android.gms.tagmanager.TagManagerService", true, a().getClassLoader()) : Class.forName("com.google.android.gms.tagmanager.TagManagerService")).getDeclaredMethod("initialize", Context.class).invoke(null, a());
                } catch (Exception e) {
                    l().L().b("Failed to invoke Tag Manager's initialize() method", e);
                }
            } catch (ClassNotFoundException unused) {
                l().J().a("Tag Manager is not found and thus will not be used");
            }
        }
        if ("_cmp".equals(str2)) {
            if (bundle.containsKey("gclid")) {
                a0("auto", "_lgclid", bundle.getString("gclid"), b().a());
            }
            if (nb2.a() && e().s(si1.Z0) && bundle.containsKey("gbraid")) {
                a0("auto", "_gbraid", bundle.getString("gbraid"), b().a());
            }
        }
        if (z && x92.L0(str2)) {
            j().M(bundle, i().y.a());
        }
        if (!z3 && !"_iap".equals(str2)) {
            x92 L = this.a.L();
            int i = 2;
            if (L.C0("event", str2)) {
                if (!L.o0("event", nz1.a, nz1.b, str2)) {
                    i = 13;
                } else if (L.i0("event", 40, str2)) {
                    i = 0;
                }
            }
            if (i != 0) {
                l().H().b("Invalid public event name. Event will not be logged (FE)", g().c(str2));
                this.a.L();
                String I = x92.I(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.a.L();
                x92.X(this.q, i, "_ev", I, length);
                return;
            }
        }
        t32 C = s().C(false);
        if (C != null && !bundle.containsKey("_sc")) {
            C.d = true;
        }
        x92.W(C, bundle, z && !z3);
        boolean equals = "am".equals(str);
        boolean H0 = x92.H0(str2);
        if (z && this.d != null && !H0 && !equals) {
            l().F().c("Passing event to registered event handler (FE)", g().c(str2), g().a(bundle));
            mj0.i(this.d);
            this.d.a(str, str2, bundle, j);
            return;
        }
        if (this.a.s()) {
            int v = j().v(str2);
            if (v != 0) {
                l().H().b("Invalid event name. Event will not be logged (FE)", g().c(str2));
                j();
                String I2 = x92.I(str2, 40, true);
                length = str2 != null ? str2.length() : 0;
                this.a.L();
                x92.Y(this.q, str3, v, "_ev", I2, length);
                return;
            }
            Bundle E = j().E(str3, str2, bundle, oc.c("_o", "_sn", "_sc", "_si"), z3);
            mj0.i(E);
            if (s().C(false) != null && "_ae".equals(str2)) {
                q72 q72Var = u().f;
                long b = q72Var.d.b().b();
                long j3 = b - q72Var.b;
                q72Var.b = b;
                if (j3 > 0) {
                    j().L(E, j3);
                }
            }
            if (ta2.a() && e().s(si1.p0)) {
                if (!"auto".equals(str) && "_ssr".equals(str2)) {
                    x92 j4 = j();
                    String string = E.getString("_ffr");
                    String trim = mx0.a(string) ? null : string != null ? string.trim() : string;
                    if (da2.a(trim, j4.i().v.a())) {
                        j4.l().F().a("Not logging duplicate session_start_with_rollout event");
                        return;
                    }
                    j4.i().v.b(trim);
                } else if ("_ae".equals(str2)) {
                    String a = j().i().v.a();
                    if (!TextUtils.isEmpty(a)) {
                        E.putString("_ffr", a);
                    }
                }
            }
            ArrayList arrayList = new ArrayList();
            arrayList.add(E);
            boolean F = e().s(si1.Q0) ? u().F() : i().s.b();
            if (i().p.a() > 0 && i().y(j) && F) {
                l().K().a("Current session is expired, remove the session number, ID, and engagement time");
                j2 = 0;
                str4 = "_ae";
                a0("auto", "_sid", null, b().a());
                a0("auto", "_sno", null, b().a());
                a0("auto", "_se", null, b().a());
                i().q.b(0L);
            } else {
                j2 = 0;
                str4 = "_ae";
            }
            if (E.getLong("extend_session", j2) == 1) {
                l().K().a("EXTEND_SESSION param attached: initiate a new session or extend the current active session");
                d02Var = this;
                d02Var.a.K().e.b(j, true);
            } else {
                d02Var = this;
            }
            ArrayList arrayList2 = new ArrayList(E.keySet());
            Collections.sort(arrayList2);
            int size = arrayList2.size();
            int i2 = 0;
            while (i2 < size) {
                Object obj = arrayList2.get(i2);
                i2++;
                String str7 = (String) obj;
                if (str7 != null) {
                    j();
                    Bundle[] x0 = x92.x0(E.get(str7));
                    if (x0 != null) {
                        E.putParcelableArray(str7, x0);
                    }
                }
            }
            for (int i3 = 0; i3 < arrayList.size(); i3++) {
                Bundle bundle2 = (Bundle) arrayList.get(i3);
                if (i3 != 0) {
                    str6 = "_ep";
                    str5 = str;
                } else {
                    str5 = str;
                    str6 = str2;
                }
                bundle2.putString("_o", str5);
                if (z2) {
                    bundle2 = j().r0(bundle2);
                }
                Bundle bundle3 = bundle2;
                t().E(new oi1(str6, new ei1(bundle3), str, j), str3);
                if (!equals) {
                    Iterator it = d02Var.e.iterator();
                    while (it.hasNext()) {
                        ((sz1) it.next()).a(str, str2, new Bundle(bundle3), j);
                    }
                }
            }
            if (s().C(false) == null || !str4.equals(str2)) {
                return;
            }
            u().E(true, true, b().b());
        }
    }

    public final void W(String str, String str2, long j, Object obj) {
        h().D(new m12(this, str, str2, obj, j));
    }

    public final void X(String str, String str2, Bundle bundle) {
        long a = b().a();
        mj0.e(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", a);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        h().D(new w12(this, bundle2));
    }

    public final void Y(String str, String str2, Bundle bundle, String str3) {
        m();
        x0(str, str2, b().a(), bundle, false, true, true, str3);
    }

    public final void Z(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        String str3 = str == null ? "app" : str;
        Bundle bundle2 = bundle == null ? new Bundle() : bundle;
        if (str2 == "screen_view" || (str2 != null && str2.equals("screen_view"))) {
            s().I(bundle2, j);
        } else {
            x0(str3, str2, j, bundle2, z2, !z2 || this.d == null || x92.H0(str2), z, null);
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ Context a() {
        return super.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a0(String str, String str2, Object obj, long j) {
        String str3;
        Object obj2;
        mj0.e(str);
        mj0.e(str2);
        n();
        v();
        if ("allow_personalized_ads".equals(str2)) {
            if (obj instanceof String) {
                String str4 = (String) obj;
                if (!TextUtils.isEmpty(str4)) {
                    Long valueOf = Long.valueOf("false".equals(str4.toLowerCase(Locale.ENGLISH)) ? 1L : 0L);
                    i().m.b(valueOf.longValue() == 1 ? "true" : "false");
                    obj2 = valueOf;
                    str3 = "_npa";
                    if (!this.a.p()) {
                        l().K().a("User property not set since app measurement is disabled");
                        return;
                    } else {
                        if (this.a.s()) {
                            t().O(new v92(str3, j, obj2, str));
                            return;
                        }
                        return;
                    }
                }
            }
            if (obj == null) {
                i().m.b("unset");
                obj2 = obj;
                str3 = "_npa";
                if (!this.a.p()) {
                }
            }
        }
        str3 = str2;
        obj2 = obj;
        if (!this.a.p()) {
        }
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ cc b() {
        return super.b();
    }

    public final void b0(String str, String str2, Object obj, boolean z) {
        c0(str, str2, obj, z, b().a());
    }

    public final void c0(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int length;
        if (str == null) {
            str = "app";
        }
        String str3 = str;
        if (z) {
            i = j().q0(str2);
        } else {
            x92 j2 = j();
            if (j2.C0("user property", str2)) {
                if (!j2.n0("user property", oz1.a, str2)) {
                    i = 15;
                } else if (j2.i0("user property", 24, str2)) {
                    i = 0;
                }
            }
            i = 6;
        }
        if (i != 0) {
            j();
            String I = x92.I(str2, 24, true);
            length = str2 != null ? str2.length() : 0;
            this.a.L();
            x92.X(this.q, i, "_ev", I, length);
            return;
        }
        if (obj == null) {
            W(str3, str2, j, null);
            return;
        }
        int w = j().w(str2, obj);
        if (w == 0) {
            Object A0 = j().A0(str2, obj);
            if (A0 != null) {
                W(str3, str2, j, A0);
                return;
            }
            return;
        }
        j();
        String I2 = x92.I(str2, 24, true);
        length = ((obj instanceof String) || (obj instanceof CharSequence)) ? String.valueOf(obj).length() : 0;
        this.a.L();
        x92.X(this.q, w, "_ev", I2, length);
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ mf1 d() {
        return super.d();
    }

    public final /* synthetic */ void d0(List list) {
        boolean contains;
        n();
        if (Build.VERSION.SDK_INT >= 30) {
            SparseArray H = i().H();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                y72 y72Var = (y72) it.next();
                contains = H.contains(y72Var.o);
                if (!contains || ((Long) H.get(y72Var.o)).longValue() < y72Var.n) {
                    s0().add(y72Var);
                }
            }
            r0();
        }
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ qf1 e() {
        return super.e();
    }

    public final Boolean e0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Boolean) h().v(atomicReference, 15000L, "boolean test flag value", new c12(this, atomicReference));
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ ci1 f() {
        return super.f();
    }

    public final Double f0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Double) h().v(atomicReference, 15000L, "double test flag value", new l22(this, atomicReference));
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ mt1 g() {
        return super.g();
    }

    public final Integer g0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Integer) h().v(atomicReference, 15000L, "int test flag value", new f22(this, atomicReference));
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ jw1 h() {
        return super.h();
    }

    public final Long h0() {
        AtomicReference atomicReference = new AtomicReference();
        return (Long) h().v(atomicReference, 15000L, "long test flag value", new h22(this, atomicReference));
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ tu1 i() {
        return super.i();
    }

    public final String i0() {
        return (String) this.g.get();
    }

    @Override // androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ x92 j() {
        return super.j();
    }

    public final String j0() {
        t32 P = this.a.I().P();
        if (P != null) {
            return P.b;
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void k() {
        super.k();
    }

    public final String k0() {
        t32 P = this.a.I().P();
        if (P != null) {
            return P.a;
        }
        return null;
    }

    @Override // androidx.appcompat.view.menu.fz1, androidx.appcompat.view.menu.iz1
    public final /* bridge */ /* synthetic */ pt1 l() {
        return super.l();
    }

    public final String l0() {
        if (this.a.M() != null) {
            return this.a.M();
        }
        try {
            return new lw1(a(), this.a.P()).b("google_app_id");
        } catch (IllegalStateException e) {
            this.a.l().G().b("getGoogleAppId failed with exception", e);
            return null;
        }
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void m() {
        super.m();
    }

    public final String m0() {
        AtomicReference atomicReference = new AtomicReference();
        return (String) h().v(atomicReference, 15000L, "String test flag value", new t12(this, atomicReference));
    }

    @Override // androidx.appcompat.view.menu.hr1, androidx.appcompat.view.menu.fz1
    public final /* bridge */ /* synthetic */ void n() {
        super.n();
    }

    public final void n0() {
        Boolean F;
        n();
        v();
        if (this.a.s()) {
            if (e().s(si1.k0) && (F = e().F("google_analytics_deferred_deep_link_enabled")) != null && F.booleanValue()) {
                l().F().a("Deferred Deep Link feature enabled.");
                h().D(new Runnable() { // from class: androidx.appcompat.view.menu.n02
                    @Override // java.lang.Runnable
                    public final void run() {
                        d02.this.q0();
                    }
                });
            }
            t().X();
            this.o = false;
            String N = i().N();
            if (TextUtils.isEmpty(N)) {
                return;
            }
            f().o();
            if (N.equals(Build.VERSION.RELEASE)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", N);
            z0("auto", "_ou", bundle);
        }
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ oh1 o() {
        return super.o();
    }

    public final void o0() {
        if (!(a().getApplicationContext() instanceof Application) || this.c == null) {
            return;
        }
        ((Application) a().getApplicationContext()).unregisterActivityLifecycleCallbacks(this.c);
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ zs1 p() {
        return super.p();
    }

    public final void p0() {
        if (sc2.a() && e().s(si1.M0)) {
            if (h().J()) {
                l().G().a("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (mf1.a()) {
                l().G().a("Cannot get trigger URIs from main thread");
                return;
            }
            v();
            l().K().a("Getting trigger URIs (FE)");
            final AtomicReference atomicReference = new AtomicReference();
            h().v(atomicReference, 5000L, "get trigger URIs", new Runnable() { // from class: androidx.appcompat.view.menu.f02
                @Override // java.lang.Runnable
                public final void run() {
                    d02 d02Var = d02.this;
                    AtomicReference atomicReference2 = atomicReference;
                    Bundle a = d02Var.i().n.a();
                    h42 t = d02Var.t();
                    if (a == null) {
                        a = new Bundle();
                    }
                    t.R(atomicReference2, a);
                }
            });
            final List list = (List) atomicReference.get();
            if (list == null) {
                l().G().a("Timed out waiting for get trigger URIs");
            } else {
                h().D(new Runnable() { // from class: androidx.appcompat.view.menu.l02
                    @Override // java.lang.Runnable
                    public final void run() {
                        d02.this.d0(list);
                    }
                });
            }
        }
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ ft1 q() {
        return super.q();
    }

    public final void q0() {
        n();
        if (i().t.b()) {
            l().F().a("Deferred Deep Link already retrieved. Not fetching again.");
            return;
        }
        long a = i().u.a();
        i().u.b(1 + a);
        if (a >= 5) {
            l().L().a("Permanently failed to retrieve Deferred Deep Link. Reached maximum retries.");
            i().t.a(true);
        } else {
            if (!na2.a() || !e().s(si1.U0)) {
                this.a.u();
                return;
            }
            if (this.p == null) {
                this.p = new q12(this, this.a);
            }
            this.p.b(0L);
        }
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ d02 r() {
        return super.r();
    }

    public final void r0() {
        y72 y72Var;
        kc0 Q0;
        n();
        if (s0().isEmpty() || this.i || (y72Var = (y72) s0().poll()) == null || (Q0 = j().Q0()) == null) {
            return;
        }
        this.i = true;
        l().K().b("Registering trigger URI", y72Var.m);
        j90 c = Q0.c(Uri.parse(y72Var.m));
        if (c == null) {
            this.i = false;
            s0().add(y72Var);
            return;
        }
        SparseArray H = i().H();
        H.put(y72Var.o, Long.valueOf(y72Var.n));
        tu1 i = i();
        int[] iArr = new int[H.size()];
        long[] jArr = new long[H.size()];
        for (int i2 = 0; i2 < H.size(); i2++) {
            iArr[i2] = H.keyAt(i2);
            jArr[i2] = ((Long) H.valueAt(i2)).longValue();
        }
        Bundle bundle = new Bundle();
        bundle.putIntArray("uriSources", iArr);
        bundle.putLongArray("uriTimestamps", jArr);
        i.n.b(bundle);
        ix.a(c, new g12(this, y72Var), new u02(this));
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ r32 s() {
        return super.s();
    }

    public final PriorityQueue s0() {
        Comparator comparing;
        if (this.j == null) {
            comparing = Comparator.comparing(new Function() { // from class: androidx.appcompat.view.menu.a02
                @Override // java.util.function.Function
                public final Object apply(Object obj) {
                    return Long.valueOf(((y72) obj).n);
                }
            }, new Comparator() { // from class: androidx.appcompat.view.menu.h02
                @Override // java.util.Comparator
                public final int compare(Object obj, Object obj2) {
                    return (((Long) obj).longValue() > ((Long) obj2).longValue() ? 1 : (((Long) obj).longValue() == ((Long) obj2).longValue() ? 0 : -1));
                }
            });
            this.j = new PriorityQueue(comparing);
        }
        return this.j;
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ h42 t() {
        return super.t();
    }

    public final void t0() {
        n();
        String a = i().m.a();
        if (a != null) {
            if ("unset".equals(a)) {
                a0("app", "_npa", null, b().a());
            } else {
                a0("app", "_npa", Long.valueOf("true".equals(a) ? 1L : 0L), b().a());
            }
        }
        if (!this.a.p() || !this.o) {
            l().F().a("Updating Scion state (FE)");
            t().b0();
            return;
        }
        l().F().a("Recording app launch after enabling measurement for the first time (FE)");
        n0();
        if (mb2.a() && e().s(si1.q0)) {
            u().e.a();
        }
        h().D(new k12(this));
    }

    @Override // androidx.appcompat.view.menu.hr1
    public final /* bridge */ /* synthetic */ y62 u() {
        return super.u();
    }

    public final void u0(Bundle bundle) {
        H(bundle, b().a());
    }

    public final void v0(sz1 sz1Var) {
        v();
        mj0.i(sz1Var);
        if (this.e.remove(sz1Var)) {
            return;
        }
        l().L().a("OnEventListener had not been registered");
    }

    public final void x0(String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        h().D(new o12(this, str, str2, j, x92.D(bundle), z, z2, z3, str3));
    }

    public final void y0(String str, String str2, Bundle bundle) {
        Z(str, str2, bundle, true, true, b().a());
    }

    public final void z0(String str, String str2, Bundle bundle) {
        n();
        U(str, str2, b().a(), bundle);
    }
}
