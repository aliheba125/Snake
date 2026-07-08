package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class if1 extends r {
    public static final Parcelable.Creator<if1> CREATOR = new tf1();
    public String m;
    public String n;
    public v92 o;
    public long p;
    public boolean q;
    public String r;
    public oi1 s;
    public long t;
    public oi1 u;
    public long v;
    public oi1 w;

    public if1(if1 if1Var) {
        mj0.i(if1Var);
        this.m = if1Var.m;
        this.n = if1Var.n;
        this.o = if1Var.o;
        this.p = if1Var.p;
        this.q = if1Var.q;
        this.r = if1Var.r;
        this.s = if1Var.s;
        this.t = if1Var.t;
        this.u = if1Var.u;
        this.v = if1Var.v;
        this.w = if1Var.w;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 2, this.m, false);
        jr0.n(parcel, 3, this.n, false);
        jr0.m(parcel, 4, this.o, i, false);
        jr0.k(parcel, 5, this.p);
        jr0.c(parcel, 6, this.q);
        jr0.n(parcel, 7, this.r, false);
        jr0.m(parcel, 8, this.s, i, false);
        jr0.k(parcel, 9, this.t);
        jr0.m(parcel, 10, this.u, i, false);
        jr0.k(parcel, 11, this.v);
        jr0.m(parcel, 12, this.w, i, false);
        jr0.b(parcel, a);
    }

    public if1(String str, String str2, v92 v92Var, long j, boolean z, String str3, oi1 oi1Var, long j2, oi1 oi1Var2, long j3, oi1 oi1Var3) {
        this.m = str;
        this.n = str2;
        this.o = v92Var;
        this.p = j;
        this.q = z;
        this.r = str3;
        this.s = oi1Var;
        this.t = j2;
        this.u = oi1Var2;
        this.v = j3;
        this.w = oi1Var3;
    }
}
