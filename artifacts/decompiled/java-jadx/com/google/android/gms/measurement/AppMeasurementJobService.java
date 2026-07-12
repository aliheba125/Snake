package com.google.android.gms.measurement;

import android.annotation.TargetApi;
import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import androidx.appcompat.view.menu.a72;
import androidx.appcompat.view.menu.s62;

@TargetApi(24)
/* loaded from: classes.dex */
public final class AppMeasurementJobService extends JobService implements a72 {
    public s62 a;

    @Override // androidx.appcompat.view.menu.a72
    public final void a(Intent intent) {
    }

    @Override // androidx.appcompat.view.menu.a72
    public final void b(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    public final s62 c() {
        if (this.a == null) {
            this.a = new s62(this);
        }
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.a72
    public final boolean e(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        c().c();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        c().h();
        super.onDestroy();
    }

    @Override // android.app.Service
    public final void onRebind(Intent intent) {
        c().i(intent);
    }

    @Override // android.app.job.JobService
    public final boolean onStartJob(JobParameters jobParameters) {
        return c().g(jobParameters);
    }

    @Override // android.app.job.JobService
    public final boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return c().k(intent);
    }
}
