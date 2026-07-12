package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class gf2 extends se1 implements mz {
    public gf2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // androidx.appcompat.view.menu.mz
    public final Account b() {
        Parcel h = h(2, j());
        Account account = (Account) ok1.a(h, Account.CREATOR);
        h.recycle();
        return account;
    }
}
