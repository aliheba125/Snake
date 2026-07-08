package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class ik1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        int i = 0;
        long j = -1;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                str = ir0.d(parcel, n);
            } else if (i2 == 2) {
                i = ir0.p(parcel, n);
            } else if (i2 != 3) {
                ir0.t(parcel, n);
            } else {
                j = ir0.q(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new hr(str, i, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new hr[i];
    }
}
