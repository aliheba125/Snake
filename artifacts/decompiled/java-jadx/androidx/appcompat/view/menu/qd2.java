package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class qd2 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList arrayList = null;
        String str8 = null;
        String str9 = null;
        long j = 0;
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        long j7 = 0;
        boolean z = true;
        boolean z2 = true;
        boolean z3 = false;
        int i = 0;
        boolean z4 = false;
        boolean z5 = false;
        int i2 = 0;
        long j8 = -2147483648L;
        String str10 = "";
        String str11 = str10;
        String str12 = str11;
        int i3 = 100;
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
                    str3 = ir0.d(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    str4 = ir0.d(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    j = ir0.q(parcel, n);
                    break;
                case q02.c.g /* 7 */:
                    j2 = ir0.q(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    str5 = ir0.d(parcel, n);
                    break;
                case 9:
                    z = ir0.j(parcel, n);
                    break;
                case 10:
                    z3 = ir0.j(parcel, n);
                    break;
                case 11:
                    j8 = ir0.q(parcel, n);
                    break;
                case 12:
                    str6 = ir0.d(parcel, n);
                    break;
                case 13:
                    j3 = ir0.q(parcel, n);
                    break;
                case 14:
                    j4 = ir0.q(parcel, n);
                    break;
                case 15:
                    i = ir0.p(parcel, n);
                    break;
                case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                    z2 = ir0.j(parcel, n);
                    break;
                case 17:
                case 20:
                case 33:
                default:
                    ir0.t(parcel, n);
                    break;
                case 18:
                    z4 = ir0.j(parcel, n);
                    break;
                case 19:
                    str7 = ir0.d(parcel, n);
                    break;
                case 21:
                    bool = ir0.k(parcel, n);
                    break;
                case 22:
                    j5 = ir0.q(parcel, n);
                    break;
                case 23:
                    arrayList = ir0.e(parcel, n);
                    break;
                case 24:
                    str8 = ir0.d(parcel, n);
                    break;
                case 25:
                    str10 = ir0.d(parcel, n);
                    break;
                case 26:
                    str11 = ir0.d(parcel, n);
                    break;
                case 27:
                    str9 = ir0.d(parcel, n);
                    break;
                case 28:
                    z5 = ir0.j(parcel, n);
                    break;
                case 29:
                    j6 = ir0.q(parcel, n);
                    break;
                case 30:
                    i3 = ir0.p(parcel, n);
                    break;
                case 31:
                    str12 = ir0.d(parcel, n);
                    break;
                case PackageParser.PARSE_EXTERNAL_STORAGE /* 32 */:
                    i2 = ir0.p(parcel, n);
                    break;
                case 34:
                    j7 = ir0.q(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new cb2(str, str2, str3, str4, j, j2, str5, z, z3, j8, str6, j3, j4, i, z2, z4, str7, bool, j5, arrayList, str8, str10, str11, str9, z5, j6, i3, str12, i2, j7);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new cb2[i];
    }
}
