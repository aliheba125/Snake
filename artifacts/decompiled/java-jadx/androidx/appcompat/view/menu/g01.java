package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.TypedValue;
import android.view.View;

/* loaded from: classes.dex */
public abstract class g01 {
    public static final ThreadLocal a = new ThreadLocal();
    public static final int[] b = {-16842910};
    public static final int[] c = {R.attr.state_focused};
    public static final int[] d = {R.attr.state_activated};
    public static final int[] e = {R.attr.state_pressed};
    public static final int[] f = {R.attr.state_checked};
    public static final int[] g = {R.attr.state_selected};
    public static final int[] h = {-16842919, -16842908};
    public static final int[] i = new int[0];
    public static final int[] j = new int[1];

    public static void a(View view, Context context) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(mn0.k0);
        try {
            if (!obtainStyledAttributes.hasValue(mn0.l0)) {
                StringBuilder sb = new StringBuilder();
                sb.append("View ");
                sb.append(view.getClass());
                sb.append(" is an AppCompat widget that can only be used with a Theme.AppCompat theme (or descendant).");
            }
        } finally {
            obtainStyledAttributes.recycle();
        }
    }

    public static int b(Context context, int i2) {
        ColorStateList e2 = e(context, i2);
        if (e2 != null && e2.isStateful()) {
            return e2.getColorForState(b, e2.getDefaultColor());
        }
        TypedValue f2 = f();
        context.getTheme().resolveAttribute(R.attr.disabledAlpha, f2, true);
        return d(context, i2, f2.getFloat());
    }

    public static int c(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        y01 s = y01.s(context, null, iArr);
        try {
            return s.b(0, 0);
        } finally {
            s.v();
        }
    }

    public static int d(Context context, int i2, float f2) {
        return cd.k(c(context, i2), Math.round(Color.alpha(r0) * f2));
    }

    public static ColorStateList e(Context context, int i2) {
        int[] iArr = j;
        iArr[0] = i2;
        y01 s = y01.s(context, null, iArr);
        try {
            return s.c(0);
        } finally {
            s.v();
        }
    }

    public static TypedValue f() {
        ThreadLocal threadLocal = a;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }
}
