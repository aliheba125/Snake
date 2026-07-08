package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class oe2 extends r {
    public static final Parcelable.Creator<oe2> CREATOR = new te2();
    public final String m;
    public final w02 n;
    public final boolean o;
    public final boolean p;

    public oe2(String str, w02 w02Var, boolean z, boolean z2) {
        this.m = str;
        this.n = w02Var;
        this.o = z;
        this.p = z2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int a = jr0.a(parcel);
        jr0.n(parcel, 1, this.m, false);
        w02 w02Var = this.n;
        if (w02Var == null) {
            w02Var = null;
        }
        jr0.h(parcel, 2, w02Var, false);
        jr0.c(parcel, 3, this.o);
        jr0.c(parcel, 4, this.p);
        jr0.b(parcel, a);
    }

    public oe2(String str, IBinder iBinder, boolean z, boolean z2) {
        this.m = str;
        x22 x22Var = null;
        if (iBinder != null) {
            try {
                b20 d = vf2.j(iBinder).d();
                byte[] bArr = d == null ? null : (byte[]) vf0.j(d);
                if (bArr != null) {
                    x22Var = new x22(bArr);
                }
            } catch (RemoteException unused) {
            }
        }
        this.n = x22Var;
        this.o = z;
        this.p = z2;
    }
}
