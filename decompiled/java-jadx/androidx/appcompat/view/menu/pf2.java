package androidx.appcompat.view.menu;

import android.util.Log;

/* loaded from: classes.dex */
public class pf2 {
    public static final pf2 e = new pf2(true, 3, 1, null, null);
    public final boolean a;
    public final String b;
    public final Throwable c;
    public final int d;

    public pf2(boolean z, int i, int i2, String str, Throwable th) {
        this.a = z;
        this.d = i;
        this.b = str;
        this.c = th;
    }

    public static pf2 b() {
        return e;
    }

    public static pf2 c(String str) {
        return new pf2(false, 1, 5, str, null);
    }

    public static pf2 d(String str, Throwable th) {
        return new pf2(false, 1, 5, str, th);
    }

    public static pf2 f(int i) {
        return new pf2(true, i, 1, null, null);
    }

    public static pf2 g(int i, int i2, String str, Throwable th) {
        return new pf2(false, i, i2, str, th);
    }

    public String a() {
        return this.b;
    }

    public final void e() {
        if (this.a || !Log.isLoggable("GoogleCertificatesRslt", 3)) {
            return;
        }
        if (this.c != null) {
            a();
        } else {
            a();
        }
    }
}
