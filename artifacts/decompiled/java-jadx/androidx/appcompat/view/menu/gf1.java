package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class gf1 extends se1 implements rf1 {
    public gf1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IGoogleCertificatesApi");
    }

    @Override // androidx.appcompat.view.menu.rf1
    public final md2 Q1(za2 za2Var) {
        Parcel j = j();
        ok1.d(j, za2Var);
        Parcel h = h(6, j);
        md2 md2Var = (md2) ok1.a(h, md2.CREATOR);
        h.recycle();
        return md2Var;
    }

    @Override // androidx.appcompat.view.menu.rf1
    public final boolean e() {
        Parcel h = h(7, j());
        boolean f = ok1.f(h);
        h.recycle();
        return f;
    }

    @Override // androidx.appcompat.view.menu.rf1
    public final md2 j2(za2 za2Var) {
        Parcel j = j();
        ok1.d(j, za2Var);
        Parcel h = h(8, j);
        md2 md2Var = (md2) ok1.a(h, md2.CREATOR);
        h.recycle();
        return md2Var;
    }

    @Override // androidx.appcompat.view.menu.rf1
    public final boolean w0(oe2 oe2Var, b20 b20Var) {
        Parcel j = j();
        ok1.d(j, oe2Var);
        ok1.e(j, b20Var);
        Parcel h = h(5, j);
        boolean f = ok1.f(h);
        h.recycle();
        return f;
    }
}
