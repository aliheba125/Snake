package androidx.appcompat.view.menu;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.widget.ImageView;

/* loaded from: classes.dex */
public class e3 {
    public final ImageView a;
    public w01 b;
    public w01 c;
    public w01 d;
    public int e = 0;

    public e3(ImageView imageView) {
        this.a = imageView;
    }

    public final boolean a(Drawable drawable) {
        if (this.d == null) {
            this.d = new w01();
        }
        w01 w01Var = this.d;
        w01Var.a();
        ColorStateList a = h40.a(this.a);
        if (a != null) {
            w01Var.d = true;
            w01Var.a = a;
        }
        PorterDuff.Mode b = h40.b(this.a);
        if (b != null) {
            w01Var.c = true;
            w01Var.b = b;
        }
        if (!w01Var.d && !w01Var.c) {
            return false;
        }
        y2.g(drawable, w01Var, this.a.getDrawableState());
        return true;
    }

    public void b() {
        if (this.a.getDrawable() != null) {
            this.a.getDrawable().setLevel(this.e);
        }
    }

    public void c() {
        Drawable drawable = this.a.getDrawable();
        if (drawable != null) {
            vm.b(drawable);
        }
        if (drawable != null) {
            if (l() && a(drawable)) {
                return;
            }
            w01 w01Var = this.c;
            if (w01Var != null) {
                y2.g(drawable, w01Var, this.a.getDrawableState());
                return;
            }
            w01 w01Var2 = this.b;
            if (w01Var2 != null) {
                y2.g(drawable, w01Var2, this.a.getDrawableState());
            }
        }
    }

    public ColorStateList d() {
        w01 w01Var = this.c;
        if (w01Var != null) {
            return w01Var.a;
        }
        return null;
    }

    public PorterDuff.Mode e() {
        w01 w01Var = this.c;
        if (w01Var != null) {
            return w01Var.b;
        }
        return null;
    }

    public boolean f() {
        return !(this.a.getBackground() instanceof RippleDrawable);
    }

    public void g(AttributeSet attributeSet, int i) {
        int m;
        y01 t = y01.t(this.a.getContext(), attributeSet, mn0.F, i, 0);
        ImageView imageView = this.a;
        m51.i0(imageView, imageView.getContext(), mn0.F, attributeSet, t.p(), i, 0);
        try {
            Drawable drawable = this.a.getDrawable();
            if (drawable == null && (m = t.m(mn0.G, -1)) != -1 && (drawable = i3.b(this.a.getContext(), m)) != null) {
                this.a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                vm.b(drawable);
            }
            if (t.q(mn0.H)) {
                h40.c(this.a, t.c(mn0.H));
            }
            if (t.q(mn0.I)) {
                h40.d(this.a, vm.d(t.j(mn0.I, -1), null));
            }
            t.v();
        } catch (Throwable th) {
            t.v();
            throw th;
        }
    }

    public void h(Drawable drawable) {
        this.e = drawable.getLevel();
    }

    public void i(int i) {
        if (i != 0) {
            Drawable b = i3.b(this.a.getContext(), i);
            if (b != null) {
                vm.b(b);
            }
            this.a.setImageDrawable(b);
        } else {
            this.a.setImageDrawable(null);
        }
        c();
    }

    public void j(ColorStateList colorStateList) {
        if (this.c == null) {
            this.c = new w01();
        }
        w01 w01Var = this.c;
        w01Var.a = colorStateList;
        w01Var.d = true;
        c();
    }

    public void k(PorterDuff.Mode mode) {
        if (this.c == null) {
            this.c = new w01();
        }
        w01 w01Var = this.c;
        w01Var.b = mode;
        w01Var.c = true;
        c();
    }

    public final boolean l() {
        return this.b != null;
    }
}
