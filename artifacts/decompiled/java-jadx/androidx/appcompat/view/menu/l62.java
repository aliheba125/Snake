package androidx.appcompat.view.menu;

import android.content.ComponentName;

/* loaded from: classes.dex */
public final class l62 implements Runnable {
    public final /* synthetic */ d62 m;

    public l62(d62 d62Var) {
        this.m = d62Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h42.M(this.m.n, new ComponentName(this.m.n.a(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
