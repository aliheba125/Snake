package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class th1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        PendingIntent pendingIntent = null;
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i3 = ir0.i(n);
            if (i3 == 1) {
                i = ir0.p(parcel, n);
            } else if (i3 == 2) {
                i2 = ir0.p(parcel, n);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) ir0.c(parcel, n, PendingIntent.CREATOR);
            } else if (i3 != 4) {
                ir0.t(parcel, n);
            } else {
                str = ir0.d(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new ef(i, i2, pendingIntent, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new ef[i];
    }
}
