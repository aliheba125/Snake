package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class fc2 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i = ir0.i(n);
            if (i == 1) {
                str = ir0.d(parcel, n);
            } else if (i == 2) {
                z = ir0.j(parcel, n);
            } else if (i == 3) {
                z2 = ir0.j(parcel, n);
            } else if (i == 4) {
                iBinder = ir0.o(parcel, n);
            } else if (i != 5) {
                ir0.t(parcel, n);
            } else {
                z3 = ir0.j(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new za2(str, z, z2, iBinder, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new za2[i];
    }
}
