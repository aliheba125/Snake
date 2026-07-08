package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;

/* loaded from: classes.dex */
public final class ae1 extends r {
    public static final Parcelable.Creator<ae1> CREATOR = new be1();
    public final int m;
    public final Account n;
    public final int o;
    public final GoogleSignInAccount p;

    public ae1(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.m = i;
        this.n = account;
        this.o = i2;
        this.p = googleSignInAccount;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.i(parcel, 1, this.m);
        jr0.m(parcel, 2, this.n, i, false);
        jr0.i(parcel, 3, this.o);
        jr0.m(parcel, 4, this.p, i, false);
        jr0.b(parcel, a);
    }

    public ae1(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }
}
