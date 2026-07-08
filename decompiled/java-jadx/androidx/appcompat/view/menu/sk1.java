package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class sk1 extends rj1 implements zj1 {
    public sk1(IBinder iBinder) {
        super(iBinder, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService");
    }

    @Override // androidx.appcompat.view.menu.zj1
    public final Bundle f(Bundle bundle) {
        Parcel h = h();
        vj1.d(h, bundle);
        Parcel j = j(1, h);
        Bundle bundle2 = (Bundle) vj1.a(j, Bundle.CREATOR);
        j.recycle();
        return bundle2;
    }
}
