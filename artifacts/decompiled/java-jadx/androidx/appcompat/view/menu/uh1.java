package androidx.appcompat.view.menu;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class uh1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        PendingIntent pendingIntent = null;
        ef efVar = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            int i3 = ir0.i(n);
            if (i3 == 1) {
                i2 = ir0.p(parcel, n);
            } else if (i3 == 2) {
                str = ir0.d(parcel, n);
            } else if (i3 == 3) {
                pendingIntent = (PendingIntent) ir0.c(parcel, n, PendingIntent.CREATOR);
            } else if (i3 == 4) {
                efVar = (ef) ir0.c(parcel, n, ef.CREATOR);
            } else if (i3 != 1000) {
                ir0.t(parcel, n);
            } else {
                i = ir0.p(parcel, n);
            }
        }
        ir0.h(parcel, u);
        return new Status(i, i2, str, pendingIntent, efVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new Status[i];
    }
}
