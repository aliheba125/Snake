package com.snake.helper;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import androidx.appcompat.view.menu.jl0;
import androidx.appcompat.view.menu.wh0;
import androidx.appcompat.view.menu.yu0;

/* loaded from: classes.dex */
public class ProxyBroadcastReceiver extends BroadcastReceiver {
    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        intent.setExtrasClassLoader(context.getClassLoader());
        jl0 a = jl0.a(intent);
        if (a.a == null) {
            return;
        }
        BroadcastReceiver.PendingResult goAsync = goAsync();
        try {
            yu0.j().z(a.a, new wh0(goAsync), a.b);
        } catch (RemoteException unused) {
            goAsync.finish();
        }
    }
}
