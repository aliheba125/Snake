package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.as;
import androidx.appcompat.view.menu.fk1;
import androidx.appcompat.view.menu.jz0;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.mn1;
import androidx.appcompat.view.menu.v22;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class FirebaseAnalytics {
    public static volatile FirebaseAnalytics b;
    public final mn1 a;

    public FirebaseAnalytics(mn1 mn1Var) {
        mj0.i(mn1Var);
        this.a = mn1Var;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (b == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (b == null) {
                        b = new FirebaseAnalytics(mn1.e(context));
                    }
                } finally {
                }
            }
        }
        return b;
    }

    @Keep
    public static v22 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        mn1 f = mn1.f(context, null, null, null, bundle);
        if (f == null) {
            return null;
        }
        return new fk1(f);
    }

    @Keep
    public final String getFirebaseInstanceId() {
        try {
            return (String) jz0.b(as.q().a(), 30000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public final void setCurrentScreen(Activity activity, String str, String str2) {
        this.a.j(activity, str, str2);
    }
}
