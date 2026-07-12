package androidx.appcompat.view.menu;

import android.graphics.drawable.Drawable;
import android.view.View;

/* loaded from: classes.dex */
public abstract class pb0 {
    public static hh a(int i) {
        return i != 0 ? i != 1 ? b() : new li() : new wp0();
    }

    public static hh b() {
        return new wp0();
    }

    public static kn c() {
        return new kn();
    }

    public static void d(View view, float f) {
        Drawable background = view.getBackground();
        if (background instanceof ob0) {
            ((ob0) background).S(f);
        }
    }

    public static void e(View view) {
        Drawable background = view.getBackground();
        if (background instanceof ob0) {
            f(view, (ob0) background);
        }
    }

    public static void f(View view, ob0 ob0Var) {
        if (ob0Var.L()) {
            ob0Var.W(m61.f(view));
        }
    }
}
