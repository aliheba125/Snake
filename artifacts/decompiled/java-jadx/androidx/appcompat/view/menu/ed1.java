package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class ed1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        ArrayList arrayList = null;
        String str = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i = ir0.i(n);
            if (i == 1) {
                arrayList = ir0.e(parcel, n);
            } else if (i != 2) {
                ir0.t(parcel, n);
            } else {
                str = ir0.d(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new bd1(arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new bd1[i];
    }
}
