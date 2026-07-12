package androidx.appcompat.view.menu;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface b10 extends IInterface {
    public static final String k = "androidx.appcompat.view.menu.b10";

    public static abstract class a extends Binder implements b10 {

        /* renamed from: androidx.appcompat.view.menu.b10$a$a, reason: collision with other inner class name */
        public static class C0000a implements b10 {
            public IBinder l;

            public C0000a(IBinder iBinder) {
                this.l = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.l;
            }
        }

        public a() {
            attachInterface(this, b10.k);
        }

        public static b10 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(b10.k);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof b10)) ? new C0000a(iBinder) : (b10) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = b10.k;
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString(str);
            return true;
        }
    }
}
