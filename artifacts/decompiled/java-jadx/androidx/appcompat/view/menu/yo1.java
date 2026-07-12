package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class yo1 extends ai1 implements dr1 {
    public static dr1 h(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
        return queryLocalInterface instanceof dr1 ? (dr1) queryLocalInterface : new wm1(iBinder);
    }
}
