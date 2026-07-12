package androidx.appcompat.view.menu;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class wy1 implements Runnable {
    public final /* synthetic */ hm1 m;
    public final /* synthetic */ AppMeasurementDynamiteService n;

    public wy1(AppMeasurementDynamiteService appMeasurementDynamiteService, hm1 hm1Var) {
        this.n = appMeasurementDynamiteService;
        this.m = hm1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.n.l.J().F(this.m);
    }
}
