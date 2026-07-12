package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class rd1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        long j = 0;
        long j2 = 0;
        String str = null;
        String str2 = null;
        int i5 = -1;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            switch (ir0.i(n)) {
                case 1:
                    i = ir0.p(parcel, n);
                    break;
                case 2:
                    i2 = ir0.p(parcel, n);
                    break;
                case q02.c.c /* 3 */:
                    i3 = ir0.p(parcel, n);
                    break;
                case 4:
                    j = ir0.q(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    j2 = ir0.q(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    str = ir0.d(parcel, n);
                    break;
                case q02.c.g /* 7 */:
                    str2 = ir0.d(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    i4 = ir0.p(parcel, n);
                    break;
                case 9:
                    i5 = ir0.p(parcel, n);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new nd0(i, i2, i3, j, j2, str, str2, i4, i5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new nd0[i];
    }
}
