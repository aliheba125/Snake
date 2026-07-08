package androidx.appcompat.view.menu;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;

/* loaded from: classes.dex */
public class u2 {
    public final View a;
    public w01 d;
    public w01 e;
    public w01 f;
    public int c = -1;
    public final y2 b = y2.b();

    public u2(View view) {
        this.a = view;
    }

    public final boolean a(Drawable drawable) {
        if (this.f == null) {
            this.f = new w01();
        }
        w01 w01Var = this.f;
        w01Var.a();
        ColorStateList o = m51.o(this.a);
        if (o != null) {
            w01Var.d = true;
            w01Var.a = o;
        }
        PorterDuff.Mode p = m51.p(this.a);
        if (p != null) {
            w01Var.c = true;
            w01Var.b = p;
        }
        if (!w01Var.d && !w01Var.c) {
            return false;
        }
        y2.g(drawable, w01Var, this.a.getDrawableState());
        return true;
    }

    public void b() {
        Drawable background = this.a.getBackground();
        if (background != null) {
            if (k() && a(background)) {
                return;
            }
            w01 w01Var = this.e;
            if (w01Var != null) {
                y2.g(background, w01Var, this.a.getDrawableState());
                return;
            }
            w01 w01Var2 = this.d;
            if (w01Var2 != null) {
                y2.g(background, w01Var2, this.a.getDrawableState());
            }
        }
    }

    public ColorStateList c() {
        w01 w01Var = this.e;
        if (w01Var != null) {
            return w01Var.a;
        }
        return null;
    }

    public PorterDuff.Mode d() {
        w01 w01Var = this.e;
        if (w01Var != null) {
            return w01Var.b;
        }
        return null;
    }

    public void e(AttributeSet attributeSet, int i) {
        y01 t = y01.t(this.a.getContext(), attributeSet, mn0.s2, i, 0);
        View view = this.a;
        m51.i0(view, view.getContext(), mn0.s2, attributeSet, t.p(), i, 0);
        try {
            if (t.q(mn0.t2)) {
                this.c = t.m(mn0.t2, -1);
                ColorStateList e = this.b.e(this.a.getContext(), this.c);
                if (e != null) {
                    h(e);
                }
            }
            if (t.q(mn0.u2)) {
                m51.p0(this.a, t.c(mn0.u2));
            }
            if (t.q(mn0.v2)) {
                m51.q0(this.a, vm.d(t.j(mn0.v2, -1), null));
            }
            t.v();
        } catch (Throwable th) {
            t.v();
            throw th;
        }
    }

    public void f(Drawable drawable) {
        this.c = -1;
        h(null);
        b();
    }

    public void g(int i) {
        this.c = i;
        y2 y2Var = this.b;
        h(y2Var != null ? y2Var.e(this.a.getContext(), i) : null);
        b();
    }

    public void h(ColorStateList colorStateList) {
        if (colorStateList != null) {
            if (this.d == null) {
                this.d = new w01();
            }
            w01 w01Var = this.d;
            w01Var.a = colorStateList;
            w01Var.d = true;
        } else {
            this.d = null;
        }
        b();
    }

    public void i(ColorStateList colorStateList) {
        if (this.e == null) {
            this.e = new w01();
        }
        w01 w01Var = this.e;
        w01Var.a = colorStateList;
        w01Var.d = true;
        b();
    }

    public void j(PorterDuff.Mode mode) {
        if (this.e == null) {
            this.e = new w01();
        }
        w01 w01Var = this.e;
        w01Var.b = mode;
        w01Var.c = true;
        b();
    }

    public final boolean k() {
        return this.d != null;
    }
}
