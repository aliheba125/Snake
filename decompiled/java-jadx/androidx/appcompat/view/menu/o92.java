package androidx.appcompat.view.menu;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class o92 implements Runnable {
    public final /* synthetic */ hm1 m;
    public final /* synthetic */ AppMeasurementDynamiteService n;

    public o92(AppMeasurementDynamiteService appMeasurementDynamiteService, hm1 hm1Var) {
        this.n = appMeasurementDynamiteService;
        this.m = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.l.L().T(this.m, this.n.l.o());
    }
}
