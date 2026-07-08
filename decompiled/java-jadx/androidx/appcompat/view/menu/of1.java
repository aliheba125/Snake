package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public abstract class of1 extends kh1 implements rf1 {
    public static rf1 j(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IGoogleCertificatesApi");
        return queryLocalInterface instanceof rf1 ? (rf1) queryLocalInterface : new gf1(iBinder);
    }
}
