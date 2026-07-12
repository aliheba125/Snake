package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class kd1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        ae1 ae1Var = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                i = ir0.p(parcel, n);
            } else if (i2 != 2) {
                ir0.t(parcel, n);
            } else {
                ae1Var = (ae1) ir0.c(parcel, n, ae1.CREATOR);
            }
        }
        ir0.h(parcel, u);
        return new id1(i, ae1Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new id1[i];
    }
}
