package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.List;

/* loaded from: classes.dex */
public final class cb2 extends r {
    public static final Parcelable.Creator<cb2> CREATOR = new qd2();
    public final boolean A;
    public final boolean B;
    public final String C;
    public final Boolean D;
    public final long E;
    public final List F;
    public final String G;
    public final String H;
    public final String I;
    public final String J;
    public final boolean K;
    public final long L;
    public final int M;
    public final String N;
    public final int O;
    public final long P;
    public final String m;
    public final String n;
    public final String o;
    public final String p;
    public final long q;
    public final long r;
    public final String s;
    public final boolean t;
    public final boolean u;
    public final long v;
    public final String w;
    public final long x;
    public final long y;
    public final int z;

    public cb2(String str, String str2, String str3, long j, String str4, long j2, long j3, String str5, boolean z, boolean z2, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List list, String str8, String str9, String str10, String str11, boolean z5, long j7, int i2, String str12, int i3, long j8) {
        mj0.e(str);
        this.m = str;
        this.n = TextUtils.isEmpty(str2) ? null : str2;
        this.o = str3;
        this.v = j;
        this.p = str4;
        this.q = j2;
        this.r = j3;
        this.s = str5;
        this.t = z;
        this.u = z2;
        this.w = str6;
        this.x = j4;
        this.y = j5;
        this.z = i;
        this.A = z3;
        this.B = z4;
        this.C = str7;
        this.D = bool;
        this.E = j6;
        this.F = list;
        this.G = null;
        this.H = str9;
        this.I = str10;
        this.J = str11;
        this.K = z5;
        this.L = j7;
        this.M = i2;
        this.N = str12;
        this.O = i3;
        this.P = j8;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 2, this.m, false);
        jr0.n(parcel, 3, this.n, false);
        jr0.n(parcel, 4, this.o, false);
        jr0.n(parcel, 5, this.p, false);
        jr0.k(parcel, 6, this.q);
        jr0.k(parcel, 7, this.r);
        jr0.n(parcel, 8, this.s, false);
        jr0.c(parcel, 9, this.t);
        jr0.c(parcel, 10, this.u);
        jr0.k(parcel, 11, this.v);
        jr0.n(parcel, 12, this.w, false);
        jr0.k(parcel, 13, this.x);
        jr0.k(parcel, 14, this.y);
        jr0.i(parcel, 15, this.z);
        jr0.c(parcel, 16, this.A);
        jr0.c(parcel, 18, this.B);
        jr0.n(parcel, 19, this.C, false);
        jr0.d(parcel, 21, this.D, false);
        jr0.k(parcel, 22, this.E);
        jr0.o(parcel, 23, this.F, false);
        jr0.n(parcel, 24, this.G, false);
        jr0.n(parcel, 25, this.H, false);
        jr0.n(parcel, 26, this.I, false);
        jr0.n(parcel, 27, this.J, false);
        jr0.c(parcel, 28, this.K);
        jr0.k(parcel, 29, this.L);
        jr0.i(parcel, 30, this.M);
        jr0.n(parcel, 31, this.N, false);
        jr0.i(parcel, 32, this.O);
        jr0.k(parcel, 34, this.P);
        jr0.b(parcel, a);
    }

    public cb2(String str, String str2, String str3, String str4, long j, long j2, String str5, boolean z, boolean z2, long j3, String str6, long j4, long j5, int i, boolean z3, boolean z4, String str7, Boolean bool, long j6, List list, String str8, String str9, String str10, String str11, boolean z5, long j7, int i2, String str12, int i3, long j8) {
        this.m = str;
        this.n = str2;
        this.o = str3;
        this.v = j3;
        this.p = str4;
        this.q = j;
        this.r = j2;
        this.s = str5;
        this.t = z;
        this.u = z2;
        this.w = str6;
        this.x = j4;
        this.y = j5;
        this.z = i;
        this.A = z3;
        this.B = z4;
        this.C = str7;
        this.D = bool;
        this.E = j6;
        this.F = list;
        this.G = str8;
        this.H = str9;
        this.I = str10;
        this.J = str11;
        this.K = z5;
        this.L = j7;
        this.M = i2;
        this.N = str12;
        this.O = i3;
        this.P = j8;
    }
}
