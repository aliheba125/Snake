package androidx.appcompat.view.menu;

import android.os.Build;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public abstract class w51 {
    public static boolean a = true;

    public static u51 a(ViewGroup viewGroup) {
        return new t51(viewGroup);
    }

    public static void b(ViewGroup viewGroup, boolean z) {
        if (a) {
            try {
                viewGroup.suppressLayout(z);
            } catch (NoSuchMethodError unused) {
                a = false;
            }
        }
    }

    public static void c(ViewGroup viewGroup, boolean z) {
        if (Build.VERSION.SDK_INT >= 29) {
            viewGroup.suppressLayout(z);
        } else {
            b(viewGroup, z);
        }
    }
}
