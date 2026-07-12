package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class bf1 implements g10 {
    public final IBinder l;

    public bf1(IBinder iBinder) {
        this.l = iBinder;
    }

    @Override // androidx.appcompat.view.menu.g10
    public final void Q(f10 f10Var, mx mxVar) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(f10Var != null ? f10Var.asBinder() : null);
            if (mxVar != null) {
                obtain.writeInt(1);
                f72.a(mxVar, obtain, 0);
            } else {
                obtain.writeInt(0);
            }
            this.l.transact(46, obtain, obtain2, 0);
            obtain2.readException();
            obtain2.recycle();
            obtain.recycle();
        } catch (Throwable th) {
            obtain2.recycle();
            obtain.recycle();
            throw th;
        }
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.l;
    }
}
