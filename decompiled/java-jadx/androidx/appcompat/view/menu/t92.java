package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class t92 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            switch (ir0.i(n)) {
                case 1:
                    i = ir0.p(parcel, n);
                    break;
                case 2:
                    str = ir0.d(parcel, n);
                    break;
                case q02.c.c /* 3 */:
                    j = ir0.q(parcel, n);
                    break;
                case 4:
                    l = ir0.r(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    f = ir0.m(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    str2 = ir0.d(parcel, n);
                    break;
                case q02.c.g /* 7 */:
                    str3 = ir0.d(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    d = ir0.l(parcel, n);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new v92(i, str, j, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new v92[i];
    }
}
