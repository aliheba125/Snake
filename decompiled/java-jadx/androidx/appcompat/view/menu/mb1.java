package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.api.Scope;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class mb1 implements Parcelable.Creator {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        String str6 = null;
        ArrayList arrayList = null;
        String str7 = null;
        String str8 = null;
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
                    str2 = ir0.d(parcel, n);
                    break;
                case 4:
                    str3 = ir0.d(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    str4 = ir0.d(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    uri = (Uri) ir0.c(parcel, n, Uri.CREATOR);
                    break;
                case q02.c.g /* 7 */:
                    str5 = ir0.d(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    j = ir0.q(parcel, n);
                    break;
                case 9:
                    str6 = ir0.d(parcel, n);
                    break;
                case 10:
                    arrayList = ir0.g(parcel, n, Scope.CREATOR);
                    break;
                case 11:
                    str7 = ir0.d(parcel, n);
                    break;
                case 12:
                    str8 = ir0.d(parcel, n);
                    break;
                default:
                    ir0.t(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new GoogleSignInAccount(i, str, str2, str3, str4, uri, str5, j, str6, arrayList, str7, str8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new GoogleSignInAccount[i];
    }
}
