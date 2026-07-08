package androidx.appcompat.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import androidx.coordinatorlayout.widget.CoordinatorLayout;

/* loaded from: classes.dex */
public abstract class c61 extends CoordinatorLayout.b {
    public d61 a;
    public int b;
    public int c;

    public c61() {
        this.b = 0;
        this.c = 0;
    }

    public int E() {
        d61 d61Var = this.a;
        if (d61Var != null) {
            return d61Var.b();
        }
        return 0;
    }

    public void F(CoordinatorLayout coordinatorLayout, View view, int i) {
        coordinatorLayout.G(view, i);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i) {
        F(coordinatorLayout, view, i);
        if (this.a == null) {
            this.a = new d61(view);
        }
        this.a.c();
        this.a.a();
        int i2 = this.b;
        if (i2 != 0) {
            this.a.e(i2);
            this.b = 0;
        }
        int i3 = this.c;
        if (i3 == 0) {
            return true;
        }
        this.a.d(i3);
        this.c = 0;
        return true;
    }

    public c61(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.c = 0;
    }
}
