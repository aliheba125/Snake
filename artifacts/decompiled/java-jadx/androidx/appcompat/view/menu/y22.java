package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class y22 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        Bundle bundle = null;
        ff ffVar = null;
        int i = 0;
        hr[] hrVarArr = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                bundle = ir0.a(parcel, n);
            } else if (i2 == 2) {
                hrVarArr = (hr[]) ir0.f(parcel, n, hr.CREATOR);
            } else if (i2 == 3) {
                i = ir0.p(parcel, n);
            } else if (i2 != 4) {
                ir0.t(parcel, n);
            } else {
                ffVar = (ff) ir0.c(parcel, n, ff.CREATOR);
            }
        }
        ir0.h(parcel, u);
        return new x02(bundle, hrVarArr, i, ffVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new x02[i];
    }
}
