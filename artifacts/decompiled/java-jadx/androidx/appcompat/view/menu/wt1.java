package androidx.appcompat.view.menu;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class wt1 {
    public String a;
    public String b;
    public long c;
    public Bundle d;

    public wt1(String str, String str2, Bundle bundle, long j) {
        this.a = str;
        this.b = str2;
        this.d = bundle == null ? new Bundle() : bundle;
        this.c = j;
    }

    public static wt1 b(oi1 oi1Var) {
        return new wt1(oi1Var.m, oi1Var.o, oi1Var.n.k(), oi1Var.p);
    }

    public final oi1 a() {
        return new oi1(this.a, new ei1(new Bundle(this.d)), this.b, this.c);
    }

    public final String toString() {
        return "origin=" + this.b + ",name=" + this.a + ",params=" + String.valueOf(this.d);
    }
}
