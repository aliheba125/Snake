package androidx.appcompat.view.menu;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;

/* loaded from: classes.dex */
public final class xd1 extends qx {
    public final oz0 T;

    public xd1(Context context, Looper looper, ac acVar, oz0 oz0Var, df dfVar, hg0 hg0Var) {
        super(context, looper, 270, acVar, dfVar, hg0Var);
        this.T = oz0Var;
    }

    @Override // androidx.appcompat.view.menu.z7
    public final Bundle A() {
        return this.T.b();
    }

    @Override // androidx.appcompat.view.menu.z7
    public final String E() {
        return "com.google.android.gms.common.internal.service.IClientTelemetryService";
    }

    @Override // androidx.appcompat.view.menu.z7
    public final String F() {
        return "com.google.android.gms.common.telemetry.service.START";
    }

    @Override // androidx.appcompat.view.menu.z7
    public final boolean I() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.z7, androidx.appcompat.view.menu.m2.f
    public final int e() {
        return 203400000;
    }

    @Override // androidx.appcompat.view.menu.z7
    public final /* synthetic */ IInterface s(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.service.IClientTelemetryService");
        return queryLocalInterface instanceof hd1 ? (hd1) queryLocalInterface : new hd1(iBinder);
    }

    @Override // androidx.appcompat.view.menu.z7
    public final hr[] v() {
        return qc1.b;
    }
}
