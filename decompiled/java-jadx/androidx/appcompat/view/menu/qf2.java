package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import androidx.appcompat.view.menu.b20;

/* loaded from: classes.dex */
public final class qf2 extends se1 implements zf2 {
    public qf2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ICertData");
    }

    @Override // androidx.appcompat.view.menu.zf2
    public final int c() {
        Parcel h = h(2, j());
        int readInt = h.readInt();
        h.recycle();
        return readInt;
    }

    @Override // androidx.appcompat.view.menu.zf2
    public final b20 d() {
        Parcel h = h(1, j());
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }
}
