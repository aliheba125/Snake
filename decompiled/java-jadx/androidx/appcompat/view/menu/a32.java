package androidx.appcompat.view.menu;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class a32 implements Runnable {
    public final /* synthetic */ hm1 m;
    public final /* synthetic */ oi1 n;
    public final /* synthetic */ String o;
    public final /* synthetic */ AppMeasurementDynamiteService p;

    public a32(AppMeasurementDynamiteService appMeasurementDynamiteService, hm1 hm1Var, oi1 oi1Var, String str) {
        this.p = appMeasurementDynamiteService;
        this.m = hm1Var;
        this.n = oi1Var;
        this.o = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.p.l.J().G(this.m, this.n, this.o);
    }
}
