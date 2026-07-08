package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class x02 extends r {
    public static final Parcelable.Creator<x02> CREATOR = new y22();
    public Bundle m;
    public hr[] n;
    public int o;
    public ff p;

    public x02(Bundle bundle, hr[] hrVarArr, int i, ff ffVar) {
        this.m = bundle;
        this.n = hrVarArr;
        this.o = i;
        this.p = ffVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.e(parcel, 1, this.m, false);
        jr0.p(parcel, 2, this.n, i, false);
        jr0.i(parcel, 3, this.o);
        jr0.m(parcel, 4, this.p, i, false);
        jr0.b(parcel, a);
    }
}
