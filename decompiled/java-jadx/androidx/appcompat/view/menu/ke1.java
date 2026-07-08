package androidx.appcompat.view.menu;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class ke1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        String str = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i2 = ir0.i(n);
            if (i2 == 1) {
                i = ir0.p(parcel, n);
            } else if (i2 != 2) {
                ir0.t(parcel, n);
            } else {
                str = ir0.d(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new Scope(i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Scope[i];
    }
}
