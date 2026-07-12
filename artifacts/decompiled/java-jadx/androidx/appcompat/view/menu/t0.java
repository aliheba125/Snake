package androidx.appcompat.view.menu;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import androidx.appcompat.view.menu.mz;

/* loaded from: classes.dex */
public abstract class t0 extends mz.a {
    public static Account j(mz mzVar) {
        Account account = null;
        if (mzVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = mzVar.b();
            } catch (RemoteException unused) {
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
            Binder.restoreCallingIdentity(clearCallingIdentity);
        }
        return account;
    }
}
