package androidx.appcompat.view.menu;

import com.google.android.gms.measurement.internal.AppMeasurementDynamiteService;

/* loaded from: classes.dex */
public final class z02 implements Runnable {
    public final /* synthetic */ hm1 m;
    public final /* synthetic */ String n;
    public final /* synthetic */ String o;
    public final /* synthetic */ boolean p;
    public final /* synthetic */ AppMeasurementDynamiteService q;

    public z02(AppMeasurementDynamiteService appMeasurementDynamiteService, hm1 hm1Var, String str, String str2, boolean z) {
        this.q = appMeasurementDynamiteService;
        this.m = hm1Var;
        this.n = str;
        this.o = str2;
        this.p = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.q.l.J().I(this.m, this.n, this.o, this.p);
    }
}
