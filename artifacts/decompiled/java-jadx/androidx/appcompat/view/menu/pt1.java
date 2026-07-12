package androidx.appcompat.view.menu;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;

/* loaded from: classes.dex */
public final class pt1 extends dz1 {
    public char c;
    public long d;
    public String e;
    public final st1 f;
    public final st1 g;
    public final st1 h;
    public final st1 i;
    public final st1 j;
    public final st1 k;
    public final st1 l;
    public final st1 m;
    public final st1 n;

    public pt1(cx1 cx1Var) {
        super(cx1Var);
        this.c = (char) 0;
        this.d = -1L;
        this.f = new st1(this, 6, false, false);
        this.g = new st1(this, 6, true, false);
        this.h = new st1(this, 6, false, true);
        this.i = new st1(this, 5, false, false);
        this.j = new st1(this, 5, true, false);
        this.k = new st1(this, 5, false, true);
        this.l = new st1(this, 4, false, false);
        this.m = new st1(this, 3, false, false);
        this.n = new st1(this, 2, false, false);
    }

    public static String E(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf == -1 ? (hb2.a() && ((Boolean) si1.H0.a(null)).booleanValue()) ? "" : str : str.substring(0, lastIndexOf);
    }

    public static Object v(String str) {
        if (str == null) {
            return null;
        }
        return new yt1(str);
    }

    public static String w(boolean z, Object obj) {
        String str;
        String className;
        if (obj == null) {
            return "";
        }
        if (obj instanceof Integer) {
            obj = Long.valueOf(((Integer) obj).intValue());
        }
        int i = 0;
        if (obj instanceof Long) {
            if (!z) {
                return String.valueOf(obj);
            }
            Long l = (Long) obj;
            if (Math.abs(l.longValue()) < 100) {
                return String.valueOf(obj);
            }
            String str2 = String.valueOf(obj).charAt(0) == '-' ? "-" : "";
            String valueOf = String.valueOf(Math.abs(l.longValue()));
            return str2 + Math.round(Math.pow(10.0d, valueOf.length() - 1)) + "..." + str2 + Math.round(Math.pow(10.0d, valueOf.length()) - 1.0d);
        }
        if (obj instanceof Boolean) {
            return String.valueOf(obj);
        }
        if (!(obj instanceof Throwable)) {
            if (!(obj instanceof yt1)) {
                return z ? "-" : String.valueOf(obj);
            }
            str = ((yt1) obj).a;
            return str;
        }
        Throwable th = (Throwable) obj;
        StringBuilder sb = new StringBuilder(z ? th.getClass().getName() : th.toString());
        String E = E(cx1.class.getCanonicalName());
        StackTraceElement[] stackTrace = th.getStackTrace();
        int length = stackTrace.length;
        while (true) {
            if (i >= length) {
                break;
            }
            StackTraceElement stackTraceElement = stackTrace[i];
            if (!stackTraceElement.isNativeMethod() && (className = stackTraceElement.getClassName()) != null && E(className).equals(E)) {
                sb.append(": ");
                sb.append(stackTraceElement);
                break;
            }
            i++;
        }
        return sb.toString();
    }

    public static String x(boolean z, String str, Object obj, Object obj2, Object obj3) {
        String str2 = "";
        if (str == null) {
            str = "";
        }
        String w = w(z, obj);
        String w2 = w(z, obj2);
        String w3 = w(z, obj3);
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(str)) {
            sb.append(str);
            str2 = ": ";
        }
        String str3 = ", ";
        if (!TextUtils.isEmpty(w)) {
            sb.append(str2);
            sb.append(w);
            str2 = ", ";
        }
        if (TextUtils.isEmpty(w2)) {
            str3 = str2;
        } else {
            sb.append(str2);
            sb.append(w2);
        }
        if (!TextUtils.isEmpty(w3)) {
            sb.append(str3);
            sb.append(w3);
        }
        return sb.toString();
    }

    public final boolean C(int i) {
        return Log.isLoggable(P(), i);
    }

    public final st1 F() {
        return this.m;
    }

    public final st1 G() {
        return this.f;
    }

    public final st1 H() {
        return this.h;
    }

    public final st1 I() {
        return this.g;
    }

    public final st1 J() {
        return this.l;
    }

    public final st1 K() {
        return this.n;
    }

    public final st1 L() {
        return this.i;
    }

    public final st1 M() {
        return this.k;
    }

    public final st1 N() {
        return this.j;
    }

    public final String O() {
        Pair a;
        if (i().d == null || (a = i().d.a()) == null || a == tu1.z) {
            return null;
        }
        return String.valueOf(a.second) + ":" + ((String) a.first);
    }

    public final String P() {
        String str;
        synchronized (this) {
            try {
                if (this.e == null) {
                    this.e = this.a.O() != null ? this.a.O() : "FA";
                }
                mj0.i(this.e);
                str = this.e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
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

    @Override // androidx.appcompat.view.menu.dz1
    public final boolean s() {
        return false;
    }

    public final void y(int i, String str) {
        P();
    }

    public final void z(int i, boolean z, boolean z2, String str, Object obj, Object obj2, Object obj3) {
        if (!z && C(i)) {
            y(i, x(false, str, obj, obj2, obj3));
        }
        if (z2 || i < 5) {
            return;
        }
        mj0.i(str);
        jw1 G = this.a.G();
        if (G == null) {
            y(6, "Scheduler not set. Not logging error/warn");
            return;
        }
        if (!G.r()) {
            y(6, "Scheduler not initialized. Not logging error/warn");
            return;
        }
        if (i < 0) {
            i = 0;
        }
        if (i >= 9) {
            i = 8;
        }
        G.D(new ut1(this, i, str, obj, obj2, obj3));
    }
}
