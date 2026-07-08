package androidx.appcompat.view.menu;

import android.view.View;

/* loaded from: classes.dex */
public abstract class x61 extends v61 {
    public static boolean f = true;

    @Override // androidx.appcompat.view.menu.b71
    public void d(View view, int i, int i2, int i3, int i4) {
        if (f) {
            try {
                view.setLeftTopRightBottom(i, i2, i3, i4);
            } catch (NoSuchMethodError unused) {
                f = false;
            }
        }
    }
}
