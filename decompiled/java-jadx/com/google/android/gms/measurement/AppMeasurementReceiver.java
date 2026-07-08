package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import androidx.appcompat.view.menu.nv1;
import androidx.appcompat.view.menu.r71;

/* loaded from: classes.dex */
public final class AppMeasurementReceiver extends r71 implements nv1.a {
    public nv1 c;

    @Override // androidx.appcompat.view.menu.nv1.a
    public final void a(Context context, Intent intent) {
        r71.c(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (this.c == null) {
            this.c = new nv1(this);
        }
        this.c.a(context, intent);
    }
}
