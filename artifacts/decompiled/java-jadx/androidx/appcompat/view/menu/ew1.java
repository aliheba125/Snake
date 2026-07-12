package androidx.appcompat.view.menu;

import android.net.Uri;

/* loaded from: classes.dex */
public final class ew1 {
    public final String a;
    public final Uri b;
    public final String c;
    public final String d;
    public final boolean e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final pw i;

    public ew1(Uri uri) {
        this(null, uri, "", "", false, false, false, false, null);
    }

    public final ov1 a(String str, double d) {
        return ov1.c(this, str, Double.valueOf(-3.0d), true);
    }

    public final ov1 b(String str, long j) {
        return ov1.d(this, str, Long.valueOf(j), true);
    }

    public final ov1 c(String str, String str2) {
        return ov1.e(this, str, str2, true);
    }

    public final ov1 d(String str, boolean z) {
        return ov1.b(this, str, Boolean.valueOf(z), true);
    }

    public final ew1 e() {
        return new ew1(this.a, this.b, this.c, this.d, this.e, this.f, true, this.h, this.i);
    }

    public final ew1 f() {
        if (!this.c.isEmpty()) {
            throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
        }
        pw pwVar = this.i;
        if (pwVar == null) {
            return new ew1(this.a, this.b, this.c, this.d, true, this.f, this.g, this.h, pwVar);
        }
        throw new IllegalStateException("Cannot skip gservices both always and conditionally");
    }

    public ew1(String str, Uri uri, String str2, String str3, boolean z, boolean z2, boolean z3, boolean z4, pw pwVar) {
        this.a = str;
        this.b = uri;
        this.c = str2;
        this.d = str3;
        this.e = z;
        this.f = z2;
        this.g = z3;
        this.h = z4;
        this.i = pwVar;
    }
}
