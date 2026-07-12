package androidx.appcompat.view.menu;

import android.graphics.Matrix;
import android.view.View;

/* loaded from: classes.dex */
public class a71 extends z61 {
    @Override // androidx.appcompat.view.menu.s61, androidx.appcompat.view.menu.b71
    public float b(View view) {
        float transitionAlpha;
        transitionAlpha = view.getTransitionAlpha();
        return transitionAlpha;
    }

    @Override // androidx.appcompat.view.menu.x61, androidx.appcompat.view.menu.b71
    public void d(View view, int i, int i2, int i3, int i4) {
        view.setLeftTopRightBottom(i, i2, i3, i4);
    }

    @Override // androidx.appcompat.view.menu.s61, androidx.appcompat.view.menu.b71
    public void e(View view, float f) {
        view.setTransitionAlpha(f);
    }

    @Override // androidx.appcompat.view.menu.z61, androidx.appcompat.view.menu.b71
    public void f(View view, int i) {
        view.setTransitionVisibility(i);
    }

    @Override // androidx.appcompat.view.menu.v61, androidx.appcompat.view.menu.b71
    public void g(View view, Matrix matrix) {
        view.transformMatrixToGlobal(matrix);
    }

    @Override // androidx.appcompat.view.menu.v61, androidx.appcompat.view.menu.b71
    public void h(View view, Matrix matrix) {
        view.transformMatrixToLocal(matrix);
    }
}
