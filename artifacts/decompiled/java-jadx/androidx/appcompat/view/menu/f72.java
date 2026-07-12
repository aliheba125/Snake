package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.content.pm.PackageParser;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.q02;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public final class f72 implements Parcelable.Creator {
    public static void a(mx mxVar, Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, mxVar.m);
        jr0.i(parcel, 2, mxVar.n);
        jr0.i(parcel, 3, mxVar.o);
        jr0.n(parcel, 4, mxVar.p, false);
        jr0.h(parcel, 5, mxVar.q, false);
        jr0.p(parcel, 6, mxVar.r, i, false);
        jr0.e(parcel, 7, mxVar.s, false);
        jr0.m(parcel, 8, mxVar.t, i, false);
        jr0.p(parcel, 10, mxVar.u, i, false);
        jr0.p(parcel, 11, mxVar.v, i, false);
        jr0.c(parcel, 12, mxVar.w);
        jr0.i(parcel, 13, mxVar.x);
        jr0.c(parcel, 14, mxVar.y);
        jr0.n(parcel, 15, mxVar.d(), false);
        jr0.b(parcel, a);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Object createFromParcel(Parcel parcel) {
        int u = ir0.u(parcel);
        Scope[] scopeArr = mx.A;
        Bundle bundle = new Bundle();
        hr[] hrVarArr = mx.B;
        hr[] hrVarArr2 = hrVarArr;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        String str = null;
        IBinder iBinder = null;
        Account account = null;
        String str2 = null;
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
                    str = ir0.d(parcel, n);
                    break;
                case q02.c.e /* 5 */:
                    iBinder = ir0.o(parcel, n);
                    break;
                case q02.c.f /* 6 */:
                    scopeArr = (Scope[]) ir0.f(parcel, n, Scope.CREATOR);
                    break;
                case q02.c.g /* 7 */:
                    bundle = ir0.a(parcel, n);
                    break;
                case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                    account = (Account) ir0.c(parcel, n, Account.CREATOR);
                    break;
                case 9:
                default:
                    ir0.t(parcel, n);
                    break;
                case 10:
                    hrVarArr = (hr[]) ir0.f(parcel, n, hr.CREATOR);
                    break;
                case 11:
                    hrVarArr2 = (hr[]) ir0.f(parcel, n, hr.CREATOR);
                    break;
                case 12:
                    z = ir0.j(parcel, n);
                    break;
                case 13:
                    i4 = ir0.p(parcel, n);
                    break;
                case 14:
                    z2 = ir0.j(parcel, n);
                    break;
                case 15:
                    str2 = ir0.d(parcel, n);
                    break;
            }
        }
        ir0.h(parcel, u);
        return new mx(i, i2, i3, str, iBinder, scopeArr, bundle, account, hrVarArr, hrVarArr2, z, i4, z2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new mx[i];
    }
}
