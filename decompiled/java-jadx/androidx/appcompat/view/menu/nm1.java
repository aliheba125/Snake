package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class nm1 extends xj1 implements hm1 {
    public nm1() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // androidx.appcompat.view.menu.xj1
    public final boolean h(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i != 1) {
            return false;
        }
        Bundle bundle = (Bundle) vj1.a(parcel, Bundle.CREATOR);
        vj1.f(parcel);
        f(bundle);
        parcel2.writeNoException();
        return true;
    }
}
