package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class he2 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        boolean z = false;
        int i = 0;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i3 = ir0.i(n);
            if (i3 == 1) {
                z = ir0.j(parcel, n);
            } else if (i3 == 2) {
                str = ir0.d(parcel, n);
            } else if (i3 == 3) {
                i2 = ir0.p(parcel, n);
            } else if (i3 != 4) {
                ir0.t(parcel, n);
            } else {
                i = ir0.p(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new md2(z, str, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new md2[i];
    }
}
