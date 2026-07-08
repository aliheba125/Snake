package androidx.appcompat.view.menu;

import android.R;
import android.content.res.ColorStateList;

/* loaded from: classes.dex */
public abstract class tp0 {
    public static final boolean a = true;
    public static final int[] b = {R.attr.state_pressed};
    public static final int[] c = {R.attr.state_hovered, R.attr.state_focused};
    public static final int[] d = {R.attr.state_focused};
    public static final int[] e = {R.attr.state_hovered};
    public static final int[] f = {R.attr.state_selected, R.attr.state_pressed};
    public static final int[] g = {R.attr.state_selected, R.attr.state_hovered, R.attr.state_focused};
    public static final int[] h = {R.attr.state_selected, R.attr.state_focused};
    public static final int[] i = {R.attr.state_selected, R.attr.state_hovered};
    public static final int[] j = {R.attr.state_selected};
    public static final int[] k = {R.attr.state_enabled, R.attr.state_pressed};
    public static final String l = tp0.class.getSimpleName();

    public static ColorStateList a(ColorStateList colorStateList) {
        return colorStateList != null ? colorStateList : ColorStateList.valueOf(0);
    }

    public static boolean b(int[] iArr) {
        boolean z = false;
        boolean z2 = false;
        for (int i2 : iArr) {
            if (i2 == 16842910) {
                z = true;
            } else if (i2 == 16842908 || i2 == 16842919 || i2 == 16843623) {
                z2 = true;
            }
        }
        return z && z2;
    }
}
