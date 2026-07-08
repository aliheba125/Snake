package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class uk1 extends xj1 implements zj1 {
    public static zj1 j(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
        return queryLocalInterface instanceof zj1 ? (zj1) queryLocalInterface : new sk1(iBinder);
    }
}
