package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import androidx.appcompat.view.menu.b20;

/* loaded from: classes.dex */
public final class od2 extends se1 {
    public od2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.dynamite.IDynamiteLoader");
    }

    public final int k() {
        Parcel h = h(6, j());
        int readInt = h.readInt();
        h.recycle();
        return readInt;
    }

    public final int u2(b20 b20Var, String str, boolean z) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        ok1.c(j, z);
        Parcel h = h(3, j);
        int readInt = h.readInt();
        h.recycle();
        return readInt;
    }

    public final int v2(b20 b20Var, String str, boolean z) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        ok1.c(j, z);
        Parcel h = h(5, j);
        int readInt = h.readInt();
        h.recycle();
        return readInt;
    }

    public final b20 w2(b20 b20Var, String str, int i) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        j.writeInt(i);
        Parcel h = h(2, j);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }

    public final b20 x2(b20 b20Var, String str, int i, b20 b20Var2) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        j.writeInt(i);
        ok1.e(j, b20Var2);
        Parcel h = h(8, j);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }

    public final b20 y2(b20 b20Var, String str, int i) {
        Parcel j = j();
        ok1.e(j, b20Var);
        j.writeString(str);
        j.writeInt(i);
        Parcel h = h(4, j);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }

    public final b20 z2(b20 b20Var, String str, boolean z, long j) {
        Parcel j2 = j();
        ok1.e(j2, b20Var);
        j2.writeString(str);
        ok1.c(j2, z);
        j2.writeLong(j);
        Parcel h = h(7, j2);
        b20 asInterface = b20.a.asInterface(h.readStrongBinder());
        h.recycle();
        return asInterface;
    }
}
