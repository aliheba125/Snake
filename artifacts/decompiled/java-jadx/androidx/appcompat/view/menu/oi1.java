package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class oi1 extends r {
    public static final Parcelable.Creator<oi1> CREATOR = new mi1();
    public final String m;
    public final ei1 n;
    public final String o;
    public final long p;

    public oi1(oi1 oi1Var, long j) {
        mj0.i(oi1Var);
        this.m = oi1Var.m;
        this.n = oi1Var.n;
        this.o = oi1Var.o;
        this.p = j;
    }

    public final String toString() {
        return "origin=" + this.o + ",name=" + this.m + ",params=" + String.valueOf(this.n);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 2, this.m, false);
        jr0.m(parcel, 3, this.n, i, false);
        jr0.n(parcel, 4, this.o, false);
        jr0.k(parcel, 5, this.p);
        jr0.b(parcel, a);
    }

    public oi1(String str, ei1 ei1Var, String str2, long j) {
        this.m = str;
        this.n = ei1Var;
        this.o = str2;
        this.p = j;
    }
}
