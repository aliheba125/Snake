package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class xe1 extends kh1 implements f10 {
    public xe1() {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
    }

    @Override // androidx.appcompat.view.menu.kh1
    public final boolean h(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) ok1.a(parcel, Bundle.CREATOR);
            ok1.b(parcel);
            t2(readInt, readStrongBinder, bundle);
        } else if (i == 2) {
            int readInt2 = parcel.readInt();
            Bundle bundle2 = (Bundle) ok1.a(parcel, Bundle.CREATOR);
            ok1.b(parcel);
            o1(readInt2, bundle2);
        } else {
            if (i != 3) {
                return false;
            }
            int readInt3 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            x02 x02Var = (x02) ok1.a(parcel, x02.CREATOR);
            ok1.b(parcel);
            j0(readInt3, readStrongBinder2, x02Var);
        }
        parcel2.writeNoException();
        return true;
    }
}
