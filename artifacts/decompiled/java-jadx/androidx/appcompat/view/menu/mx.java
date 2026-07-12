package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.appcompat.view.menu.mz;
import com.google.android.gms.common.api.Scope;

/* loaded from: classes.dex */
public class mx extends r {
    public final int m;
    public final int n;
    public int o;
    public String p;
    public IBinder q;
    public Scope[] r;
    public Bundle s;
    public Account t;
    public hr[] u;
    public hr[] v;
    public boolean w;
    public int x;
    public boolean y;
    public String z;
    public static final Parcelable.Creator<mx> CREATOR = new f72();
    public static final Scope[] A = new Scope[0];
    public static final hr[] B = new hr[0];

    public mx(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, hr[] hrVarArr, hr[] hrVarArr2, boolean z, int i4, boolean z2, String str2) {
        scopeArr = scopeArr == null ? A : scopeArr;
        bundle = bundle == null ? new Bundle() : bundle;
        hrVarArr = hrVarArr == null ? B : hrVarArr;
        hrVarArr2 = hrVarArr2 == null ? B : hrVarArr2;
        this.m = i;
        this.n = i2;
        this.o = i3;
        if ("com.google.android.gms".equals(str)) {
            this.p = "com.google.android.gms";
        } else {
            this.p = str;
        }
        if (i < 2) {
            this.t = iBinder != null ? t0.j(mz.a.asInterface(iBinder)) : null;
        } else {
            this.q = iBinder;
            this.t = account;
        }
        this.r = scopeArr;
        this.s = bundle;
        this.u = hrVarArr;
        this.v = hrVarArr2;
        this.w = z;
        this.x = i4;
        this.y = z2;
        this.z = str2;
    }

    public final String d() {
        return this.z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        f72.a(this, parcel, i);
    }
}
