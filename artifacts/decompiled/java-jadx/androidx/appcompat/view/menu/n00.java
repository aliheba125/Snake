package androidx.appcompat.view.menu;

import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.storage.StorageVolume;

/* loaded from: classes.dex */
public interface n00 extends IInterface {
    public static final String i = "androidx.appcompat.view.menu.n00";

    public static abstract class a extends Binder implements n00 {

        /* renamed from: androidx.appcompat.view.menu.n00$a$a, reason: collision with other inner class name */
        public static class C0023a implements n00 {
            public IBinder l;

            public C0023a(IBinder iBinder) {
                this.l = iBinder;
            }

            @Override // androidx.appcompat.view.menu.n00
            public StorageVolume[] D0(int i, String str, int i2, int i3) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(n00.i);
                    obtain.writeInt(i);
                    obtain.writeString(str);
                    obtain.writeInt(i2);
                    obtain.writeInt(i3);
                    this.l.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    return (StorageVolume[]) obtain2.createTypedArray(StorageVolume.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.l;
            }

            @Override // androidx.appcompat.view.menu.n00
            public Uri x0(String str) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(n00.i);
                    obtain.writeString(str);
                    this.l.transact(2, obtain, obtain2, 0);
                    obtain2.readException();
                    return (Uri) b.c(obtain2, Uri.CREATOR);
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, n00.i);
        }

        public static n00 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(n00.i);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof n00)) ? new C0023a(iBinder) : (n00) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = n00.i;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i == 1) {
                StorageVolume[] D0 = D0(parcel.readInt(), parcel.readString(), parcel.readInt(), parcel.readInt());
                parcel2.writeNoException();
                parcel2.writeTypedArray(D0, 1);
            } else {
                if (i != 2) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                Uri x0 = x0(parcel.readString());
                parcel2.writeNoException();
                b.d(parcel2, x0, 1);
            }
            return true;
        }
    }

    public static class b {
        public static Object c(Parcel parcel, Parcelable.Creator creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        public static void d(Parcel parcel, Parcelable parcelable, int i) {
            if (parcelable == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                parcelable.writeToParcel(parcel, i);
            }
        }
    }

    StorageVolume[] D0(int i2, String str, int i3, int i4);

    Uri x0(String str);
}
