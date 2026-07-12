package androidx.appcompat.view.menu;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;

/* loaded from: classes.dex */
public class rw0 extends LinearLayout {
    public final TextInputLayout a;
    public final TextView b;
    public CharSequence c;
    public final CheckableImageButton d;
    public ColorStateList e;
    public PorterDuff.Mode f;
    public int g;
    public ImageView.ScaleType h;
    public View.OnLongClickListener i;
    public boolean j;

    public rw0(TextInputLayout textInputLayout, y01 y01Var) {
        super(textInputLayout.getContext());
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388611));
        CheckableImageButton checkableImageButton = (CheckableImageButton) LayoutInflater.from(getContext()).inflate(vm0.c, (ViewGroup) this, false);
        this.d = checkableImageButton;
        d40.e(checkableImageButton);
        l3 l3Var = new l3(getContext());
        this.b = l3Var;
        j(y01Var);
        i(y01Var);
        addView(checkableImageButton);
        addView(l3Var);
    }

    public void A(p0 p0Var) {
        if (this.b.getVisibility() != 0) {
            p0Var.z0(this.d);
        } else {
            p0Var.n0(this.b);
            p0Var.z0(this.b);
        }
    }

    public void B() {
        EditText editText = this.a.d;
        if (editText == null) {
            return;
        }
        m51.z0(this.b, k() ? 0 : m51.C(editText), editText.getCompoundPaddingTop(), getContext().getResources().getDimensionPixelSize(em0.C), editText.getCompoundPaddingBottom());
    }

    public final void C() {
        int i = (this.c == null || this.j) ? 8 : 0;
        setVisibility((this.d.getVisibility() == 0 || i == 0) ? 0 : 8);
        this.b.setVisibility(i);
        this.a.o0();
    }

    public CharSequence a() {
        return this.c;
    }

    public ColorStateList b() {
        return this.b.getTextColors();
    }

    public int c() {
        return m51.C(this) + m51.C(this.b) + (k() ? this.d.getMeasuredWidth() + fb0.a((ViewGroup.MarginLayoutParams) this.d.getLayoutParams()) : 0);
    }

    public TextView d() {
        return this.b;
    }

    public CharSequence e() {
        return this.d.getContentDescription();
    }

    public Drawable f() {
        return this.d.getDrawable();
    }

    public int g() {
        return this.g;
    }

    public ImageView.ScaleType h() {
        return this.h;
    }

    public final void i(y01 y01Var) {
        this.b.setVisibility(8);
        this.b.setId(sm0.L);
        this.b.setLayoutParams(new LinearLayout.LayoutParams(-2, -2));
        m51.m0(this.b, 1);
        o(y01Var.m(ln0.X5, 0));
        if (y01Var.q(ln0.Y5)) {
            p(y01Var.c(ln0.Y5));
        }
        n(y01Var.o(ln0.W5));
    }

    public final void j(y01 y01Var) {
        if (nb0.f(getContext())) {
            fb0.c((ViewGroup.MarginLayoutParams) this.d.getLayoutParams(), 0);
        }
        u(null);
        v(null);
        if (y01Var.q(ln0.e6)) {
            this.e = nb0.b(getContext(), y01Var, ln0.e6);
        }
        if (y01Var.q(ln0.f6)) {
            this.f = m61.i(y01Var.j(ln0.f6, -1), null);
        }
        if (y01Var.q(ln0.b6)) {
            s(y01Var.g(ln0.b6));
            if (y01Var.q(ln0.a6)) {
                r(y01Var.o(ln0.a6));
            }
            q(y01Var.a(ln0.Z5, true));
        }
        t(y01Var.f(ln0.c6, getResources().getDimensionPixelSize(em0.R)));
        if (y01Var.q(ln0.d6)) {
            w(d40.b(y01Var.j(ln0.d6, -1)));
        }
    }

    public boolean k() {
        return this.d.getVisibility() == 0;
    }

    public void l(boolean z) {
        this.j = z;
        C();
    }

    public void m() {
        d40.d(this.a, this.d, this.e);
    }

    public void n(CharSequence charSequence) {
        this.c = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.b.setText(charSequence);
        C();
    }

    public void o(int i) {
        c01.n(this.b, i);
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        B();
    }

    public void p(ColorStateList colorStateList) {
        this.b.setTextColor(colorStateList);
    }

    public void q(boolean z) {
        this.d.setCheckable(z);
    }

    public void r(CharSequence charSequence) {
        if (e() != charSequence) {
            this.d.setContentDescription(charSequence);
        }
    }

    public void s(Drawable drawable) {
        this.d.setImageDrawable(drawable);
        if (drawable != null) {
            d40.a(this.a, this.d, this.e, this.f);
            z(true);
            m();
        } else {
            z(false);
            u(null);
            v(null);
            r(null);
        }
    }

    public void t(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("startIconSize cannot be less than 0");
        }
        if (i != this.g) {
            this.g = i;
            d40.g(this.d, i);
        }
    }

    public void u(View.OnClickListener onClickListener) {
        d40.h(this.d, onClickListener, this.i);
    }

    public void v(View.OnLongClickListener onLongClickListener) {
        this.i = onLongClickListener;
        d40.i(this.d, onLongClickListener);
    }

    public void w(ImageView.ScaleType scaleType) {
        this.h = scaleType;
        d40.j(this.d, scaleType);
    }

    public void x(ColorStateList colorStateList) {
        if (this.e != colorStateList) {
            this.e = colorStateList;
            d40.a(this.a, this.d, colorStateList, this.f);
        }
    }

    public void y(PorterDuff.Mode mode) {
        if (this.f != mode) {
            this.f = mode;
            d40.a(this.a, this.d, this.e, mode);
        }
    }

    public void z(boolean z) {
        if (k() != z) {
            this.d.setVisibility(z ? 0 : 8);
            B();
            C();
        }
    }
}
