package androidx.appcompat.view.menu;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
public abstract class hb0 {
    public final TimeInterpolator a;
    public final View b;
    public final int c;
    public final int d;
    public final int e;

    public hb0(View view) {
        this.b = view;
        Context context = view.getContext();
        this.a = zd0.g(context, zl0.B, rh0.a(0.0f, 0.0f, 0.0f, 1.0f));
        this.c = zd0.f(context, zl0.t, 300);
        this.d = zd0.f(context, zl0.w, 150);
        this.e = zd0.f(context, zl0.v, 100);
    }
}
