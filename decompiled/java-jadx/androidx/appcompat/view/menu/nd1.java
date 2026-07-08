package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class nd1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        ef efVar = null;
        ce1 ce1Var = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                i = ir0.p(parcel, n);
            } else if (i2 == 2) {
                efVar = (ef) ir0.c(parcel, n, ef.CREATOR);
            } else if (i2 != 3) {
                ir0.t(parcel, n);
            } else {
                ce1Var = (ce1) ir0.c(parcel, n, ce1.CREATOR);
            }
        }
        ir0.h(parcel, u);
        return new ld1(i, efVar, ce1Var);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ld1[i];
    }
}
