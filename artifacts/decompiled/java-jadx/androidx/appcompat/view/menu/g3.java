package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.PopupWindow;

/* loaded from: classes.dex */
public class g3 extends PopupWindow {
    public static final boolean b = false;
    public boolean a;

    public g3(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        a(context, attributeSet, i, i2);
    }

    public final void a(Context context, AttributeSet attributeSet, int i, int i2) {
        y01 t = y01.t(context, attributeSet, mn0.t1, i, i2);
        if (t.q(mn0.v1)) {
            b(t.a(mn0.v1, false));
        }
        setBackgroundDrawable(t.g(mn0.u1));
        t.v();
    }

    public final void b(boolean z) {
        if (b) {
            this.a = z;
        } else {
            jj0.a(this, z);
        }
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2);
    }

    @Override // android.widget.PopupWindow
    public void update(View view, int i, int i2, int i3, int i4) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.update(view, i, i2, i3, i4);
    }

    @Override // android.widget.PopupWindow
    public void showAsDropDown(View view, int i, int i2, int i3) {
        if (b && this.a) {
            i2 -= view.getHeight();
        }
        super.showAsDropDown(view, i, i2, i3);
    }
}
