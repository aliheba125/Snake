package androidx.appcompat.view.menu;

import android.view.View;
import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public final class og0 implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {
    public final View a;
    public ViewTreeObserver b;
    public final Runnable c;

    public og0(View view, Runnable runnable) {
        this.a = view;
        this.b = view.getViewTreeObserver();
        this.c = runnable;
    }

    public static og0 a(View view, Runnable runnable) {
        if (view == null) {
            throw new NullPointerException("view == null");
        }
        if (runnable == null) {
            throw new NullPointerException("runnable == null");
        }
        og0 og0Var = new og0(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(og0Var);
        view.addOnAttachStateChangeListener(og0Var);
        return og0Var;
    }

    public void b() {
        if (this.b.isAlive()) {
            this.b.removeOnPreDrawListener(this);
        } else {
            this.a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.c.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
