package androidx.appcompat.view.menu;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;

/* loaded from: classes.dex */
public final class s62 {
    public final Context a;

    public s62(Context context) {
        mj0.i(context);
        this.a = context;
    }

    public final int a(final Intent intent, int i, final int i2) {
        final pt1 l = cx1.c(this.a, null, null).l();
        if (intent == null) {
            l.L().a("AppMeasurementService started with null intent");
            return 2;
        }
        String action = intent.getAction();
        l.K().c("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            f(new Runnable() { // from class: androidx.appcompat.view.menu.w62
                @Override // java.lang.Runnable
                public final void run() {
                    s62.this.d(i2, l, intent);
                }
            });
        }
        return 2;
    }

    public final IBinder b(Intent intent) {
        if (intent == null) {
            j().G().a("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new kx1(o82.k(this.a));
        }
        j().L().b("onBind received unknown action", action);
        return null;
    }

    public final void c() {
        cx1.c(this.a, null, null).l().K().a("Local AppMeasurementService is starting up");
    }

    public final /* synthetic */ void d(int i, pt1 pt1Var, Intent intent) {
        if (((a72) this.a).e(i)) {
            pt1Var.K().b("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i));
            j().K().a("Completed wakeful intent.");
            ((a72) this.a).a(intent);
        }
    }

    public final /* synthetic */ void e(pt1 pt1Var, JobParameters jobParameters) {
        pt1Var.K().a("AppMeasurementJobService processed last upload request.");
        ((a72) this.a).b(jobParameters, false);
    }

    public final void f(Runnable runnable) {
        o82 k = o82.k(this.a);
        k.h().D(new u62(this, k, runnable));
    }

    public final boolean g(final JobParameters jobParameters) {
        final pt1 l = cx1.c(this.a, null, null).l();
        String string = jobParameters.getExtras().getString("action");
        l.K().b("Local AppMeasurementJobService called. action", string);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(string)) {
            return true;
        }
        f(new Runnable() { // from class: androidx.appcompat.view.menu.r62
            @Override // java.lang.Runnable
            public final void run() {
                s62.this.e(l, jobParameters);
            }
        });
        return true;
    }

    public final void h() {
        cx1.c(this.a, null, null).l().K().a("Local AppMeasurementService is shutting down");
    }

    public final void i(Intent intent) {
        if (intent == null) {
            j().G().a("onRebind called with null intent");
        } else {
            j().K().b("onRebind called. action", intent.getAction());
        }
    }

    public final pt1 j() {
        return cx1.c(this.a, null, null).l();
    }

    public final boolean k(Intent intent) {
        if (intent == null) {
            j().G().a("onUnbind called with null intent");
            return true;
        }
        j().K().b("onUnbind called for intent. action", intent.getAction());
        return true;
    }
}
