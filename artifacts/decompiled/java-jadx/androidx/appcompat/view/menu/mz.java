package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface mz extends IInterface {

    public static abstract class a extends kh1 implements mz {
        public static mz asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof mz ? (mz) queryLocalInterface : new gf2(iBinder);
        }
    }

    Account b();
}
