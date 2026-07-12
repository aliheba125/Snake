package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class pn1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        long j = 0;
        long j2 = 0;
        boolean z = false;
        String str = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        while (parcel.dataPosition() < u) {
            int n = ir0.n(parcel);
            switch (ir0.i(n)) {
                case 1:
                    j = ir0.q(parcel, n);
                    break;
                case 2:
                    j2 = ir0.q(parcel, n);
                    break;
                case q02.c.c /* 3 */:
                    z = ir0.j(parcel, n);
                    break;
                case 4:
                    str = ir0.d(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    str2 = ir0.d(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    str3 = ir0.d(parcel, n);
                    break;
                case q02.c.g /* 7 */:
                    bundle = ir0.a(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    str4 = ir0.d(parcel, n);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new jn1(j, j2, z, str, str2, str3, bundle, str4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new jn1[i];
    }
}
