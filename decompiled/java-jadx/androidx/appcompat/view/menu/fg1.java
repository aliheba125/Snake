package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class fg1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            if (ir0.i(n) != 1) {
                ir0.t(parcel, n);
            } else {
                bundle = ir0.a(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new hg1(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new hg1[i];
    }
}
