package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ff extends r {
    public static final Parcelable.Creator<ff> CREATOR = new b52();
    public final vp0 m;
    public final boolean n;
    public final boolean o;
    public final int[] p;
    public final int q;
    public final int[] r;

    public ff(vp0 vp0Var, boolean z, boolean z2, int[] iArr, int i, int[] iArr2) {
        this.m = vp0Var;
        this.n = z;
        this.o = z2;
        this.p = iArr;
        this.q = i;
        this.r = iArr2;
    }

    public int d() {
        return this.q;
    }

    public int[] f() {
        return this.p;
    }

    public int[] i() {
        return this.r;
    }

    public boolean k() {
        return this.n;
    }

    public boolean n() {
        return this.o;
    }

    public final vp0 p() {
        return this.m;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.m(parcel, 1, this.m, i, false);
        jr0.c(parcel, 2, k());
        jr0.c(parcel, 3, n());
        jr0.j(parcel, 4, f(), false);
        jr0.i(parcel, 5, d());
        jr0.j(parcel, 6, i(), false);
        jr0.b(parcel, a);
    }
}
