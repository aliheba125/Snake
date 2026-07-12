package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class e82 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                str = ir0.d(parcel, n);
            } else if (i2 == 2) {
                j = ir0.q(parcel, n);
            } else if (i2 != 3) {
                ir0.t(parcel, n);
            } else {
                i = ir0.p(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new y72(str, j, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new y72[i];
    }
}
