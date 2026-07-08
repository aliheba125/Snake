package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class mi1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        ei1 ei1Var = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i = ir0.i(n);
            if (i == 2) {
                str = ir0.d(parcel, n);
            } else if (i == 3) {
                ei1Var = (ei1) ir0.c(parcel, n, ei1.CREATOR);
            } else if (i == 4) {
                str2 = ir0.d(parcel, n);
            } else if (i != 5) {
                ir0.t(parcel, n);
            } else {
                j = ir0.q(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new oi1(str, ei1Var, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new oi1[i];
    }
}
