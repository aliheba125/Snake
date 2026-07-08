package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.view.Window;

/* loaded from: classes.dex */
public abstract class jn {
    public static void a(Window window, boolean z, Integer num, Integer num2) {
        boolean z2 = num == null || num.intValue() == 0;
        boolean z3 = num2 == null || num2.intValue() == 0;
        if (z2 || z3) {
            int b = lb0.b(window.getContext(), R.attr.colorBackground, -16777216);
            if (z2) {
                num = Integer.valueOf(b);
            }
            if (z3) {
                num2 = Integer.valueOf(b);
            }
        }
        c81.b(window, !z);
        int c = c(window.getContext(), z);
        int b2 = b(window.getContext(), z);
        window.setStatusBarColor(c);
        window.setNavigationBarColor(b2);
        f(window, d(c, lb0.h(num.intValue())));
        e(window, d(b2, lb0.h(num2.intValue())));
    }

    public static int b(Context context, boolean z) {
        if (z) {
            return 0;
        }
        return lb0.b(context, R.attr.navigationBarColor, -16777216);
    }

    public static int c(Context context, boolean z) {
        if (z) {
            return 0;
        }
        return lb0.b(context, R.attr.statusBarColor, -16777216);
    }

    public static boolean d(int i, boolean z) {
        return lb0.h(i) || (i == 0 && z);
    }

    public static void e(Window window, boolean z) {
        c81.a(window, window.getDecorView()).a(z);
    }

    public static void f(Window window, boolean z) {
        c81.a(window, window.getDecorView()).b(z);
    }
}
