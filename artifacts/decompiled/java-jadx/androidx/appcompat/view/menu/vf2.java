package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class vf2 extends kh1 implements zf2 {
    public vf2() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    public static zf2 j(IBinder iBinder) {
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof zf2 ? (zf2) queryLocalInterface : new qf2(iBinder);
    }

    @Override // androidx.appcompat.view.menu.kh1
    public final boolean h(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            b20 d = d();
            parcel2.writeNoException();
            ok1.e(parcel2, d);
        } else {
            if (i != 2) {
                return false;
            }
            int c = c();
            parcel2.writeNoException();
            parcel2.writeInt(c);
        }
        return true;
    }
}
