package androidx.appcompat.view.menu;

import android.content.ComponentName;

/* loaded from: classes.dex */
public final class h62 implements Runnable {
    public final /* synthetic */ ComponentName m;
    public final /* synthetic */ d62 n;

    public h62(d62 d62Var, ComponentName componentName) {
        this.n = d62Var;
        this.m = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h42.M(this.n.n, this.m);
    }
}
