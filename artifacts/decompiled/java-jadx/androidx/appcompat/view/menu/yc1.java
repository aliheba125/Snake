package androidx.appcompat.view.menu;

import android.os.IBinder;
import android.os.Parcel;

/* loaded from: classes.dex */
public final class yc1 extends bb1 {
    public yc1(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.signin.internal.ISignInService");
    }

    public final void u2(id1 id1Var, vc1 vc1Var) {
        Parcel h = h();
        dc1.b(h, id1Var);
        dc1.c(h, vc1Var);
        j(12, h);
    }
}
