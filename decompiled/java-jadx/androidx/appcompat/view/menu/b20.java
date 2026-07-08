package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.IInterface;

/* loaded from: classes.dex */
public interface b20 extends IInterface {

    public static abstract class a extends kh1 implements b20 {
        public a() {
            super("com.google.android.gms.dynamic.IObjectWrapper");
        }

        public static b20 asInterface(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.dynamic.IObjectWrapper");
            return queryLocalInterface instanceof b20 ? (b20) queryLocalInterface : new yh1(iBinder);
        }
    }
}
