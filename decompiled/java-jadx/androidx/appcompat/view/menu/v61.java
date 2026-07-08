package androidx.appcompat.view.menu;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public abstract class v61 extends s61 {
    public static boolean d = true;
    public static boolean e = true;

    @Override // androidx.appcompat.view.menu.b71
    public void g(View view, Matrix matrix) {
        if (d) {
            try {
                view.transformMatrixToGlobal(matrix);
            } catch (NoSuchMethodError unused) {
                d = false;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.b71
    public void h(View view, Matrix matrix) {
        if (e) {
            try {
                view.transformMatrixToLocal(matrix);
            } catch (NoSuchMethodError unused) {
                e = false;
            }
        }
    }
}
