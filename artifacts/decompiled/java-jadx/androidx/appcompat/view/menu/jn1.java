package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class jn1 extends r {
    public static final Parcelable.Creator<jn1> CREATOR = new pn1();
    public final long m;
    public final long n;
    public final boolean o;
    public final String p;
    public final String q;
    public final String r;
    public final Bundle s;
    public final String t;

    public jn1(long j, long j2, boolean z, String str, String str2, String str3, Bundle bundle, String str4) {
        this.m = j;
        this.n = j2;
        this.o = z;
        this.p = str;
        this.q = str2;
        this.r = str3;
        this.s = bundle;
        this.t = str4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.k(parcel, 1, this.m);
        jr0.k(parcel, 2, this.n);
        jr0.c(parcel, 3, this.o);
        jr0.n(parcel, 4, this.p, false);
        jr0.n(parcel, 5, this.q, false);
        jr0.n(parcel, 6, this.r, false);
        jr0.e(parcel, 7, this.s, false);
        jr0.n(parcel, 8, this.t, false);
        jr0.b(parcel, a);
    }
}
