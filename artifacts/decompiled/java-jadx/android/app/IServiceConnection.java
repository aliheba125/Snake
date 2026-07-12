package android.app;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public interface IServiceConnection extends IInterface {

    public static class Default implements IServiceConnection {
        @Override // android.os.IInterface
        public IBinder asBinder() {
            return null;
        }

        @Override // android.app.IServiceConnection
        public void connected(ComponentName componentName, IBinder iBinder) {
        }
    }

    public static abstract class Stub extends Binder implements IServiceConnection {
        public static final String DESCRIPTOR = IServiceConnection.class.getName();
        static final int TRANSACTION_connected = 1;

        public static class Proxy implements IServiceConnection {
            private IBinder mRemote;

            public Proxy(IBinder iBinder) {
                this.mRemote = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.mRemote;
            }

            @Override // android.app.IServiceConnection
            public void connected(ComponentName componentName, IBinder iBinder) {
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(Stub.DESCRIPTOR);
                    _Parcel.writeTypedObject(obtain, componentName, 0);
                    obtain.writeStrongBinder(iBinder);
                    this.mRemote.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                } finally {
                    obtain2.recycle();
                    obtain.recycle();
                }
            }

            public String getInterfaceDescriptor() {
                return Stub.DESCRIPTOR;
            }
        }

        public Stub() {
            attachInterface(this, DESCRIPTOR);
        }

        public static IServiceConnection asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(DESCRIPTOR);
            return (queryLocalInterface == null || !(queryLocalInterface instanceof IServiceConnection)) ? new Proxy(iBinder) : (IServiceConnection) queryLocalInterface;
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            String str = DESCRIPTOR;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            connected((ComponentName) _Parcel.readTypedObject(parcel, ComponentName.CREATOR), parcel.readStrongBinder());
            parcel2.writeNoException();
            return true;
        }
    }

    public static class _Parcel {
        /* JADX INFO: Access modifiers changed from: private */
        public static <T> T readTypedObject(Parcel parcel, Parcelable.Creator<T> creator) {
            if (parcel.readInt() != 0) {
                return creator.createFromParcel(parcel);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static <T extends Parcelable> void writeTypedObject(Parcel parcel, T t, int i) {
            if (t == null) {
                parcel.writeInt(0);
            } else {
                parcel.writeInt(1);
                t.writeToParcel(parcel, i);
            }
        }
    }

    void connected(ComponentName componentName, IBinder iBinder);
}
