package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class nd0 extends r {
    public static final Parcelable.Creator<nd0> CREATOR = new rd1();
    public final int m;
    public final int n;
    public final int o;
    public final long p;
    public final long q;
    public final String r;
    public final String s;
    public final int t;
    public final int u;

    public nd0(int i, int i2, int i3, long j, long j2, String str, String str2, int i4, int i5) {
        this.m = i;
        this.n = i2;
        this.o = i3;
        this.p = j;
        this.q = j2;
        this.r = str;
        this.s = str2;
        this.t = i4;
        this.u = i5;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.i(parcel, 2, this.n);
        jr0.i(parcel, 3, this.o);
        jr0.k(parcel, 4, this.p);
        jr0.k(parcel, 5, this.q);
        jr0.n(parcel, 6, this.r, false);
        jr0.n(parcel, 7, this.s, false);
        jr0.i(parcel, 8, this.t);
        jr0.i(parcel, 9, this.u);
        jr0.b(parcel, a);
    }
}
