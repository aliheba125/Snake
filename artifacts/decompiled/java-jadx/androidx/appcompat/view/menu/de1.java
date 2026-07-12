package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class de1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        IBinder iBinder = null;
        ef efVar = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                i = ir0.p(parcel, n);
            } else if (i2 == 2) {
                iBinder = ir0.o(parcel, n);
            } else if (i2 == 3) {
                efVar = (ef) ir0.c(parcel, n, ef.CREATOR);
            } else if (i2 == 4) {
                z = ir0.j(parcel, n);
            } else if (i2 != 5) {
                ir0.t(parcel, n);
            } else {
                z2 = ir0.j(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new ce1(i, iBinder, efVar, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ce1[i];
    }
}
