package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Base64;
import androidx.appcompat.view.menu.d21;
import androidx.appcompat.view.menu.k21;
import androidx.appcompat.view.menu.vj0;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.AlarmManagerSchedulerBroadcastReceiver;

/* loaded from: classes.dex */
public class AlarmManagerSchedulerBroadcastReceiver extends BroadcastReceiver {
    public static /* synthetic */ void b() {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String queryParameter = intent.getData().getQueryParameter("backendName");
        String queryParameter2 = intent.getData().getQueryParameter("extras");
        int intValue = Integer.valueOf(intent.getData().getQueryParameter("priority")).intValue();
        int i = intent.getExtras().getInt("attemptNumber");
        k21.f(context);
        d21.a d = d21.a().b(queryParameter).d(vj0.b(intValue));
        if (queryParameter2 != null) {
            d.c(Base64.decode(queryParameter2, 0));
        }
        k21.c().e().v(d.a(), i, new Runnable() { // from class: androidx.appcompat.view.menu.z1
            @Override // java.lang.Runnable
            public final void run() {
                AlarmManagerSchedulerBroadcastReceiver.b();
            }
        });
    }
}
