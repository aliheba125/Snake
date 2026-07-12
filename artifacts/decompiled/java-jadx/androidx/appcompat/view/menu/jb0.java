package androidx.appcompat.view.menu;

import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import com.google.android.material.button.MaterialButton;

/* loaded from: classes.dex */
public class jb0 {
    public static final boolean u = true;
    public static final boolean v = false;
    public final MaterialButton a;
    public st0 b;
    public int c;
    public int d;
    public int e;
    public int f;
    public int g;
    public int h;
    public PorterDuff.Mode i;
    public ColorStateList j;
    public ColorStateList k;
    public ColorStateList l;
    public Drawable m;
    public boolean q;
    public LayerDrawable s;
    public int t;
    public boolean n = false;
    public boolean o = false;
    public boolean p = false;
    public boolean r = true;

    public jb0(MaterialButton materialButton, st0 st0Var) {
        this.a = materialButton;
        this.b = st0Var;
    }

    public void A(boolean z) {
        this.n = z;
        J();
    }

    public void B(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            J();
        }
    }

    public void C(int i) {
        if (this.h != i) {
            this.h = i;
            J();
        }
    }

    public void D(ColorStateList colorStateList) {
        if (this.j != colorStateList) {
            this.j = colorStateList;
            if (f() != null) {
                om.i(f(), this.j);
            }
        }
    }

    public void E(PorterDuff.Mode mode) {
        if (this.i != mode) {
            this.i = mode;
            if (f() == null || this.i == null) {
                return;
            }
            om.j(f(), this.i);
        }
    }

    public void F(boolean z) {
        this.r = z;
    }

    public final void G(int i, int i2) {
        int C = m51.C(this.a);
        int paddingTop = this.a.getPaddingTop();
        int B = m51.B(this.a);
        int paddingBottom = this.a.getPaddingBottom();
        int i3 = this.e;
        int i4 = this.f;
        this.f = i2;
        this.e = i;
        if (!this.o) {
            H();
        }
        m51.z0(this.a, C, (paddingTop + i) - i3, B, (paddingBottom + i2) - i4);
    }

    public final void H() {
        this.a.setInternalBackground(a());
        ob0 f = f();
        if (f != null) {
            f.S(this.t);
            f.setState(this.a.getDrawableState());
        }
    }

    public final void I(st0 st0Var) {
        if (v && !this.o) {
            int C = m51.C(this.a);
            int paddingTop = this.a.getPaddingTop();
            int B = m51.B(this.a);
            int paddingBottom = this.a.getPaddingBottom();
            H();
            m51.z0(this.a, C, paddingTop, B, paddingBottom);
            return;
        }
        if (f() != null) {
            f().setShapeAppearanceModel(st0Var);
        }
        if (n() != null) {
            n().setShapeAppearanceModel(st0Var);
        }
        if (e() != null) {
            e().setShapeAppearanceModel(st0Var);
        }
    }

    public final void J() {
        ob0 f = f();
        ob0 n = n();
        if (f != null) {
            f.Y(this.h, this.k);
            if (n != null) {
                n.X(this.h, this.n ? lb0.d(this.a, zl0.h) : 0);
            }
        }
    }

    public final InsetDrawable K(Drawable drawable) {
        return new InsetDrawable(drawable, this.c, this.e, this.d, this.f);
    }

    public final Drawable a() {
        ob0 ob0Var = new ob0(this.b);
        ob0Var.J(this.a.getContext());
        om.i(ob0Var, this.j);
        PorterDuff.Mode mode = this.i;
        if (mode != null) {
            om.j(ob0Var, mode);
        }
        ob0Var.Y(this.h, this.k);
        ob0 ob0Var2 = new ob0(this.b);
        ob0Var2.setTint(0);
        ob0Var2.X(this.h, this.n ? lb0.d(this.a, zl0.h) : 0);
        if (u) {
            ob0 ob0Var3 = new ob0(this.b);
            this.m = ob0Var3;
            om.h(ob0Var3, -1);
            RippleDrawable rippleDrawable = new RippleDrawable(tp0.a(this.l), K(new LayerDrawable(new Drawable[]{ob0Var2, ob0Var})), this.m);
            this.s = rippleDrawable;
            return rippleDrawable;
        }
        sp0 sp0Var = new sp0(this.b);
        this.m = sp0Var;
        om.i(sp0Var, tp0.a(this.l));
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{ob0Var2, ob0Var, this.m});
        this.s = layerDrawable;
        return K(layerDrawable);
    }

    public int b() {
        return this.g;
    }

    public int c() {
        return this.f;
    }

    public int d() {
        return this.e;
    }

    public vt0 e() {
        LayerDrawable layerDrawable = this.s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.s.getNumberOfLayers() > 2 ? (vt0) this.s.getDrawable(2) : (vt0) this.s.getDrawable(1);
    }

    public ob0 f() {
        return g(false);
    }

    public final ob0 g(boolean z) {
        LayerDrawable layerDrawable = this.s;
        if (layerDrawable == null || layerDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return u ? (ob0) ((LayerDrawable) ((InsetDrawable) this.s.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0) : (ob0) this.s.getDrawable(!z ? 1 : 0);
    }

    public ColorStateList h() {
        return this.l;
    }

    public st0 i() {
        return this.b;
    }

    public ColorStateList j() {
        return this.k;
    }

    public int k() {
        return this.h;
    }

    public ColorStateList l() {
        return this.j;
    }

    public PorterDuff.Mode m() {
        return this.i;
    }

    public final ob0 n() {
        return g(true);
    }

    public boolean o() {
        return this.o;
    }

    public boolean p() {
        return this.q;
    }

    public boolean q() {
        return this.r;
    }

    public void r(TypedArray typedArray) {
        this.c = typedArray.getDimensionPixelOffset(ln0.V1, 0);
        this.d = typedArray.getDimensionPixelOffset(ln0.W1, 0);
        this.e = typedArray.getDimensionPixelOffset(ln0.X1, 0);
        this.f = typedArray.getDimensionPixelOffset(ln0.Y1, 0);
        if (typedArray.hasValue(ln0.c2)) {
            int dimensionPixelSize = typedArray.getDimensionPixelSize(ln0.c2, -1);
            this.g = dimensionPixelSize;
            z(this.b.w(dimensionPixelSize));
            this.p = true;
        }
        this.h = typedArray.getDimensionPixelSize(ln0.m2, 0);
        this.i = m61.i(typedArray.getInt(ln0.b2, -1), PorterDuff.Mode.SRC_IN);
        this.j = nb0.a(this.a.getContext(), typedArray, ln0.a2);
        this.k = nb0.a(this.a.getContext(), typedArray, ln0.l2);
        this.l = nb0.a(this.a.getContext(), typedArray, ln0.k2);
        this.q = typedArray.getBoolean(ln0.Z1, false);
        this.t = typedArray.getDimensionPixelSize(ln0.d2, 0);
        this.r = typedArray.getBoolean(ln0.n2, true);
        int C = m51.C(this.a);
        int paddingTop = this.a.getPaddingTop();
        int B = m51.B(this.a);
        int paddingBottom = this.a.getPaddingBottom();
        if (typedArray.hasValue(ln0.U1)) {
            t();
        } else {
            H();
        }
        m51.z0(this.a, C + this.c, paddingTop + this.e, B + this.d, paddingBottom + this.f);
    }

    public void s(int i) {
        if (f() != null) {
            f().setTint(i);
        }
    }

    public void t() {
        this.o = true;
        this.a.setSupportBackgroundTintList(this.j);
        this.a.setSupportBackgroundTintMode(this.i);
    }

    public void u(boolean z) {
        this.q = z;
    }

    public void v(int i) {
        if (this.p && this.g == i) {
            return;
        }
        this.g = i;
        this.p = true;
        z(this.b.w(i));
    }

    public void w(int i) {
        G(this.e, i);
    }

    public void x(int i) {
        G(i, this.f);
    }

    public void y(ColorStateList colorStateList) {
        if (this.l != colorStateList) {
            this.l = colorStateList;
            boolean z = u;
            if (z && (this.a.getBackground() instanceof RippleDrawable)) {
                ((RippleDrawable) this.a.getBackground()).setColor(tp0.a(colorStateList));
            } else {
                if (z || !(this.a.getBackground() instanceof sp0)) {
                    return;
                }
                ((sp0) this.a.getBackground()).setTintList(tp0.a(colorStateList));
            }
        }
    }

    public void z(st0 st0Var) {
        this.b = st0Var;
        I(st0Var);
    }
}
