package androidx.appcompat.view.menu;

import android.os.Bundle;
import com.google.android.gms.common.api.internal.LifecycleCallback;

/* loaded from: classes.dex */
public final class le1 implements Runnable {
    public final /* synthetic */ LifecycleCallback m;
    public final /* synthetic */ String n;
    public final /* synthetic */ vh1 o;

    public le1(vh1 vh1Var, LifecycleCallback lifecycleCallback, String str) {
        this.o = vh1Var;
        this.m = lifecycleCallback;
        this.n = str;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        Bundle bundle;
        Bundle bundle2;
        Bundle bundle3;
        vh1 vh1Var = this.o;
        i = vh1Var.b;
        if (i > 0) {
            LifecycleCallback lifecycleCallback = this.m;
            bundle = vh1Var.c;
            if (bundle != null) {
                bundle3 = vh1Var.c;
                bundle2 = bundle3.getBundle(this.n);
            } else {
                bundle2 = null;
            }
            lifecycleCallback.f(bundle2);
        }
        i2 = this.o.b;
        if (i2 >= 2) {
            this.m.j();
        }
        i3 = this.o.b;
        if (i3 >= 3) {
            this.m.h();
        }
        i4 = this.o.b;
        if (i4 >= 4) {
            this.m.k();
        }
        i5 = this.o.b;
        if (i5 >= 5) {
            this.m.g();
        }
    }
}
