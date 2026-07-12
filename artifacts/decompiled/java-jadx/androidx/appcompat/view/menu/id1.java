package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class id1 extends r {
    public static final Parcelable.Creator<id1> CREATOR = new kd1();
    public final int m;
    public final ae1 n;

    public id1(int i, ae1 ae1Var) {
        this.m = i;
        this.n = ae1Var;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.m(parcel, 2, this.n, i, false);
        jr0.b(parcel, a);
    }
}
