package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import androidx.appcompat.view.menu.b20;

/* loaded from: classes.dex */
public final class je2 extends se1 {
    public je2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoaderV2");
    }

    public final b20 k(b20 b20Var, String str, int i, b20 b20Var2) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        j.writeInt(i);
        ok1.e(j, b20Var2);
        Parcel h = h(2, j);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }

    public final b20 u2(b20 b20Var, String str, int i, b20 b20Var2) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        j.writeInt(i);
        ok1.e(j, b20Var2);
        Parcel h = h(3, j);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }
}
