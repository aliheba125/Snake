package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class vp0 extends r {
    public static final Parcelable.Creator<vp0> CREATOR = new ag1();
    public final int m;
    public final boolean n;
    public final boolean o;
    public final int p;
    public final int q;

    public vp0(int i, boolean z, boolean z2, int i2, int i3) {
        this.m = i;
        this.n = z;
        this.o = z2;
        this.p = i2;
        this.q = i3;
    }

    public int d() {
        return this.p;
    }

    public int f() {
        return this.q;
    }

    public boolean i() {
        return this.n;
    }

    public boolean k() {
        return this.o;
    }

    public int n() {
        return this.m;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, n());
        jr0.c(parcel, 2, i());
        jr0.c(parcel, 3, k());
        jr0.i(parcel, 4, d());
        jr0.i(parcel, 5, f());
        jr0.b(parcel, a);
    }
}
