package com.google.firebase.iid;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.appcompat.view.menu.er;
import androidx.appcompat.view.menu.jc;
import androidx.appcompat.view.menu.jz0;
import androidx.appcompat.view.menu.kc;
import androidx.appcompat.view.menu.zc0;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public final class FirebaseInstanceIdReceiver extends kc {
    public static Intent g(Context context, String str, Bundle bundle) {
        return new Intent(str).putExtras(bundle);
    }

    @Override // androidx.appcompat.view.menu.kc
    public int b(Context context, jc jcVar) {
        try {
            return ((Integer) jz0.a(new er(context).k(jcVar.d()))).intValue();
        } catch (InterruptedException | ExecutionException unused) {
            return 500;
        }
    }

    @Override // androidx.appcompat.view.menu.kc
    public void c(Context context, Bundle bundle) {
        Intent g = g(context, "com.google.firebase.messaging.NOTIFICATION_DISMISS", bundle);
        if (zc0.A(g)) {
            zc0.s(g);
        }
    }
}
