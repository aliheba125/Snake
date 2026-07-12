package com.google.android.gms.common.api.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Keep;
import androidx.appcompat.view.menu.mj0;
import androidx.appcompat.view.menu.tm1;
import androidx.appcompat.view.menu.vh1;
import androidx.appcompat.view.menu.w80;
import androidx.appcompat.view.menu.y80;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* loaded from: classes.dex */
public class LifecycleCallback {
    public final y80 a;

    public LifecycleCallback(y80 y80Var) {
        this.a = y80Var;
    }

    public static y80 c(Activity activity) {
        return d(new w80(activity));
    }

    public static y80 d(w80 w80Var) {
        if (w80Var.d()) {
            w80Var.b();
            return tm1.h1(null);
        }
        if (w80Var.c()) {
            return vh1.f(w80Var.a());
        }
        throw new IllegalArgumentException("Can't get fragment for unexpected activity.");
    }

    @Keep
    private static y80 getChimeraLifecycleFragmentImpl(w80 w80Var) {
        throw new IllegalStateException("Method not available in SDK.");
    }

    public void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public Activity b() {
        Activity e = this.a.e();
        mj0.i(e);
        return e;
    }

    public void e(int i, int i2, Intent intent) {
    }

    public void f(Bundle bundle) {
    }

    public void g() {
    }

    public void h() {
    }

    public void i(Bundle bundle) {
    }

    public void j() {
    }

    public void k() {
    }
}
