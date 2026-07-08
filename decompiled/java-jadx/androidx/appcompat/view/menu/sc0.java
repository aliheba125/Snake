package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
import androidx.appcompat.view.menu.uc0;

/* loaded from: classes.dex */
public class sc0 {
    public final Context a;
    public final mc0 b;
    public final boolean c;
    public final int d;
    public final int e;
    public View f;
    public int g;
    public boolean h;
    public uc0.a i;
    public rc0 j;
    public PopupWindow.OnDismissListener k;
    public final PopupWindow.OnDismissListener l;

    public class a implements PopupWindow.OnDismissListener {
        public a() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            sc0.this.e();
        }
    }

    public sc0(Context context, mc0 mc0Var, View view, boolean z, int i) {
        this(context, mc0Var, view, z, i, 0);
    }

    public final rc0 a() {
        Display defaultDisplay = ((WindowManager) this.a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        rc0 kaVar = Math.min(point.x, point.y) >= this.a.getResources().getDimensionPixelSize(fm0.a) ? new ka(this.a, this.f, this.d, this.e, this.c) : new ow0(this.a, this.b, this.f, this.d, this.e, this.c);
        kaVar.l(this.b);
        kaVar.u(this.l);
        kaVar.p(this.f);
        kaVar.k(this.i);
        kaVar.r(this.h);
        kaVar.s(this.g);
        return kaVar;
    }

    public void b() {
        if (d()) {
            this.j.dismiss();
        }
    }

    public rc0 c() {
        if (this.j == null) {
            this.j = a();
        }
        return this.j;
    }

    public boolean d() {
        rc0 rc0Var = this.j;
        return rc0Var != null && rc0Var.i();
    }

    public void e() {
        this.j = null;
        PopupWindow.OnDismissListener onDismissListener = this.k;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    public void f(View view) {
        this.f = view;
    }

    public void g(boolean z) {
        this.h = z;
        rc0 rc0Var = this.j;
        if (rc0Var != null) {
            rc0Var.r(z);
        }
    }

    public void h(int i) {
        this.g = i;
    }

    public void i(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void j(uc0.a aVar) {
        this.i = aVar;
        rc0 rc0Var = this.j;
        if (rc0Var != null) {
            rc0Var.k(aVar);
        }
    }

    public void k() {
        if (!m()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public final void l(int i, int i2, boolean z, boolean z2) {
        rc0 c = c();
        c.v(z2);
        if (z) {
            if ((hy.b(this.g, this.f.getLayoutDirection()) & 7) == 5) {
                i -= this.f.getWidth();
            }
            c.t(i);
            c.w(i2);
            int i3 = (int) ((this.a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            c.q(new Rect(i - i3, i2 - i3, i + i3, i2 + i3));
        }
        c.a();
    }

    public boolean m() {
        if (d()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        l(0, 0, false, false);
        return true;
    }

    public boolean n(int i, int i2) {
        if (d()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        l(i, i2, true, true);
        return true;
    }

    public sc0(Context context, mc0 mc0Var, View view, boolean z, int i, int i2) {
        this.g = 8388611;
        this.l = new a();
        this.a = context;
        this.b = mc0Var;
        this.f = view;
        this.c = z;
        this.d = i;
        this.e = i2;
    }
}
