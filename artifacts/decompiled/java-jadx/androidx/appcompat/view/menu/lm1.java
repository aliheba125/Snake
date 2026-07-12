package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class lm1 extends rj1 implements hm1 {
    public lm1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // androidx.appcompat.view.menu.hm1
    public final void f(Bundle bundle) {
        Parcel h = h();
        vj1.d(h, bundle);
        k(1, h);
    }
}
