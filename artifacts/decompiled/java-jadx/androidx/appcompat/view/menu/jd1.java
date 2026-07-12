package androidx.appcompat.view.menu;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class jd1 {
    public final int a;

    public jd1(int i) {
        this.a = i;
    }

    public static /* bridge */ /* synthetic */ Status e(RemoteException remoteException) {
        return new Status(19, remoteException.getClass().getSimpleName() + ": " + remoteException.getLocalizedMessage());
    }

    public abstract void a(Status status);

    public abstract void b(Exception exc);

    public abstract void c(tb1 tb1Var);

    public abstract void d(gb1 gb1Var, boolean z);
}
