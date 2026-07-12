package androidx.appcompat.view.menu;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class hn1 extends rj1 implements dn1 {
    public hn1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // androidx.appcompat.view.menu.dn1
    public final void U(String str, String str2, Bundle bundle, long j) {
        Parcel h = h();
        h.writeString(str);
        h.writeString(str2);
        vj1.d(h, bundle);
        h.writeLong(j);
        k(1, h);
    }

    @Override // androidx.appcompat.view.menu.dn1
    public final int a() {
        Parcel j = j(2, h());
        int readInt = j.readInt();
        j.recycle();
        return readInt;
    }
}
