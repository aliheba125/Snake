package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class tf1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        String str2 = null;
        v92 v92Var = null;
        String str3 = null;
        oi1 oi1Var = null;
        oi1 oi1Var2 = null;
        oi1 oi1Var3 = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            switch (ir0.i(n)) {
                case 2:
                    str = ir0.d(parcel, n);
                    break;
                case q02.c.c /* 3 */:
                    str2 = ir0.d(parcel, n);
                    break;
                case 4:
                    v92Var = (v92) ir0.c(parcel, n, v92.CREATOR);
                    break;
                case q02.c.e /* 5 */:
                    j = ir0.q(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    z = ir0.j(parcel, n);
                    break;
                case q02.c.g /* 7 */:
                    str3 = ir0.d(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    oi1Var = (oi1) ir0.c(parcel, n, oi1.CREATOR);
                    break;
                case 9:
                    j2 = ir0.q(parcel, n);
                    break;
                case 10:
                    oi1Var2 = (oi1) ir0.c(parcel, n, oi1.CREATOR);
                    break;
                case 11:
                    j3 = ir0.q(parcel, n);
                    break;
                case 12:
                    oi1Var3 = (oi1) ir0.c(parcel, n, oi1.CREATOR);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new if1(str, str2, v92Var, j, z, str3, oi1Var, j2, oi1Var2, j3, oi1Var3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new if1[i];
    }
}
