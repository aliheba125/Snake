package com.google.android.material.textfield;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.appcompat.view.menu.an0;
import androidx.appcompat.view.menu.c01;
import androidx.appcompat.view.menu.d40;
import androidx.appcompat.view.menu.e0;
import androidx.appcompat.view.menu.e01;
import androidx.appcompat.view.menu.em0;
import androidx.appcompat.view.menu.fb0;
import androidx.appcompat.view.menu.fn;
import androidx.appcompat.view.menu.i3;
import androidx.appcompat.view.menu.ii;
import androidx.appcompat.view.menu.jy0;
import androidx.appcompat.view.menu.l3;
import androidx.appcompat.view.menu.ln0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.m61;
import androidx.appcompat.view.menu.nb0;
import androidx.appcompat.view.menu.om;
import androidx.appcompat.view.menu.oo;
import androidx.appcompat.view.menu.qh0;
import androidx.appcompat.view.menu.sm0;
import androidx.appcompat.view.menu.vb;
import androidx.appcompat.view.menu.vm0;
import androidx.appcompat.view.menu.xe0;
import androidx.appcompat.view.menu.y01;
import com.google.android.material.internal.CheckableImageButton;
import com.google.android.material.textfield.TextInputLayout;
import java.util.Iterator;
import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public class a extends LinearLayout {
    public final TextInputLayout a;
    public final FrameLayout b;
    public final CheckableImageButton c;
    public ColorStateList d;
    public PorterDuff.Mode e;
    public View.OnLongClickListener f;
    public final CheckableImageButton g;
    public final d h;
    public int i;
    public final LinkedHashSet j;
    public ColorStateList k;
    public PorterDuff.Mode l;
    public int m;
    public ImageView.ScaleType n;
    public View.OnLongClickListener o;
    public CharSequence p;
    public final TextView q;
    public boolean r;
    public EditText s;
    public final AccessibilityManager t;
    public e0.a u;
    public final TextWatcher v;
    public final TextInputLayout.f w;

    /* renamed from: com.google.android.material.textfield.a$a, reason: collision with other inner class name */
    public class C0065a extends e01 {
        public C0065a() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            a.this.m().a(editable);
        }

        @Override // androidx.appcompat.view.menu.e01, android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            a.this.m().b(charSequence, i, i2, i3);
        }
    }

    public class b implements TextInputLayout.f {
        public b() {
        }

        @Override // com.google.android.material.textfield.TextInputLayout.f
        public void a(TextInputLayout textInputLayout) {
            if (a.this.s == textInputLayout.getEditText()) {
                return;
            }
            if (a.this.s != null) {
                a.this.s.removeTextChangedListener(a.this.v);
                if (a.this.s.getOnFocusChangeListener() == a.this.m().e()) {
                    a.this.s.setOnFocusChangeListener(null);
                }
            }
            a.this.s = textInputLayout.getEditText();
            if (a.this.s != null) {
                a.this.s.addTextChangedListener(a.this.v);
            }
            a.this.m().n(a.this.s);
            a aVar = a.this;
            aVar.h0(aVar.m());
        }
    }

    public class c implements View.OnAttachStateChangeListener {
        public c() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            a.this.g();
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            a.this.M();
        }
    }

    public static class d {
        public final SparseArray a = new SparseArray();
        public final a b;
        public final int c;
        public final int d;

        public d(a aVar, y01 y01Var) {
            this.b = aVar;
            this.c = y01Var.m(ln0.r5, 0);
            this.d = y01Var.m(ln0.P5, 0);
        }

        public final oo b(int i) {
            if (i == -1) {
                return new ii(this.b);
            }
            if (i == 0) {
                return new xe0(this.b);
            }
            if (i == 1) {
                return new qh0(this.b, this.d);
            }
            if (i == 2) {
                return new vb(this.b);
            }
            if (i == 3) {
                return new fn(this.b);
            }
            throw new IllegalArgumentException("Invalid end icon mode: " + i);
        }

        public oo c(int i) {
            oo ooVar = (oo) this.a.get(i);
            if (ooVar != null) {
                return ooVar;
            }
            oo b = b(i);
            this.a.append(i, b);
            return b;
        }
    }

    public a(TextInputLayout textInputLayout, y01 y01Var) {
        super(textInputLayout.getContext());
        this.i = 0;
        this.j = new LinkedHashSet();
        this.v = new C0065a();
        b bVar = new b();
        this.w = bVar;
        this.t = (AccessibilityManager) getContext().getSystemService("accessibility");
        this.a = textInputLayout;
        setVisibility(8);
        setOrientation(0);
        setLayoutParams(new FrameLayout.LayoutParams(-2, -1, 8388613));
        FrameLayout frameLayout = new FrameLayout(getContext());
        this.b = frameLayout;
        frameLayout.setVisibility(8);
        frameLayout.setLayoutParams(new LinearLayout.LayoutParams(-2, -1));
        LayoutInflater from = LayoutInflater.from(getContext());
        CheckableImageButton i = i(this, from, sm0.G);
        this.c = i;
        CheckableImageButton i2 = i(frameLayout, from, sm0.F);
        this.g = i2;
        this.h = new d(this, y01Var);
        l3 l3Var = new l3(getContext());
        this.q = l3Var;
        C(y01Var);
        B(y01Var);
        D(y01Var);
        frameLayout.addView(i2);
        addView(l3Var);
        addView(frameLayout);
        addView(i);
        textInputLayout.i(bVar);
        addOnAttachStateChangeListener(new c());
    }

    public boolean A() {
        return this.i != 0;
    }

    public final void B(y01 y01Var) {
        if (!y01Var.q(ln0.Q5)) {
            if (y01Var.q(ln0.v5)) {
                this.k = nb0.b(getContext(), y01Var, ln0.v5);
            }
            if (y01Var.q(ln0.w5)) {
                this.l = m61.i(y01Var.j(ln0.w5, -1), null);
            }
        }
        if (y01Var.q(ln0.t5)) {
            U(y01Var.j(ln0.t5, 0));
            if (y01Var.q(ln0.q5)) {
                Q(y01Var.o(ln0.q5));
            }
            O(y01Var.a(ln0.p5, true));
        } else if (y01Var.q(ln0.Q5)) {
            if (y01Var.q(ln0.R5)) {
                this.k = nb0.b(getContext(), y01Var, ln0.R5);
            }
            if (y01Var.q(ln0.S5)) {
                this.l = m61.i(y01Var.j(ln0.S5, -1), null);
            }
            U(y01Var.a(ln0.Q5, false) ? 1 : 0);
            Q(y01Var.o(ln0.O5));
        }
        T(y01Var.f(ln0.s5, getResources().getDimensionPixelSize(em0.R)));
        if (y01Var.q(ln0.u5)) {
            X(d40.b(y01Var.j(ln0.u5, -1)));
        }
    }

    public final void C(y01 y01Var) {
        if (y01Var.q(ln0.B5)) {
            this.d = nb0.b(getContext(), y01Var, ln0.B5);
        }
        if (y01Var.q(ln0.C5)) {
            this.e = m61.i(y01Var.j(ln0.C5, -1), null);
        }
        if (y01Var.q(ln0.A5)) {
            c0(y01Var.g(ln0.A5));
        }
        this.c.setContentDescription(getResources().getText(an0.f));
        m51.u0(this.c, 2);
        this.c.setClickable(false);
        this.c.setPressable(false);
        this.c.setFocusable(false);
    }

    public final void D(y01 y01Var) {
        this.q.setVisibility(8);
        this.q.setId(sm0.M);
        this.q.setLayoutParams(new LinearLayout.LayoutParams(-2, -2, 80.0f));
        m51.m0(this.q, 1);
        q0(y01Var.m(ln0.h6, 0));
        if (y01Var.q(ln0.i6)) {
            r0(y01Var.c(ln0.i6));
        }
        p0(y01Var.o(ln0.g6));
    }

    public boolean E() {
        return A() && this.g.isChecked();
    }

    public boolean F() {
        return this.b.getVisibility() == 0 && this.g.getVisibility() == 0;
    }

    public boolean G() {
        return this.c.getVisibility() == 0;
    }

    public void H(boolean z) {
        this.r = z;
        y0();
    }

    public void I() {
        w0();
        K();
        J();
        if (m().t()) {
            u0(this.a.d0());
        }
    }

    public void J() {
        d40.d(this.a, this.g, this.k);
    }

    public void K() {
        d40.d(this.a, this.c, this.d);
    }

    public void L(boolean z) {
        boolean z2;
        boolean isActivated;
        boolean isChecked;
        oo m = m();
        boolean z3 = true;
        if (!m.l() || (isChecked = this.g.isChecked()) == m.m()) {
            z2 = false;
        } else {
            this.g.setChecked(!isChecked);
            z2 = true;
        }
        if (!m.j() || (isActivated = this.g.isActivated()) == m.k()) {
            z3 = z2;
        } else {
            N(!isActivated);
        }
        if (z || z3) {
            J();
        }
    }

    public final void M() {
        AccessibilityManager accessibilityManager;
        e0.a aVar = this.u;
        if (aVar == null || (accessibilityManager = this.t) == null) {
            return;
        }
        e0.b(accessibilityManager, aVar);
    }

    public void N(boolean z) {
        this.g.setActivated(z);
    }

    public void O(boolean z) {
        this.g.setCheckable(z);
    }

    public void P(int i) {
        Q(i != 0 ? getResources().getText(i) : null);
    }

    public void Q(CharSequence charSequence) {
        if (l() != charSequence) {
            this.g.setContentDescription(charSequence);
        }
    }

    public void R(int i) {
        S(i != 0 ? i3.b(getContext(), i) : null);
    }

    public void S(Drawable drawable) {
        this.g.setImageDrawable(drawable);
        if (drawable != null) {
            d40.a(this.a, this.g, this.k, this.l);
            J();
        }
    }

    public void T(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("endIconSize cannot be less than 0");
        }
        if (i != this.m) {
            this.m = i;
            d40.g(this.g, i);
            d40.g(this.c, i);
        }
    }

    public void U(int i) {
        if (this.i == i) {
            return;
        }
        t0(m());
        int i2 = this.i;
        this.i = i;
        j(i2);
        a0(i != 0);
        oo m = m();
        R(t(m));
        P(m.c());
        O(m.l());
        if (!m.i(this.a.getBoxBackgroundMode())) {
            throw new IllegalStateException("The current box background mode " + this.a.getBoxBackgroundMode() + " is not supported by the end icon mode " + i);
        }
        s0(m);
        V(m.f());
        EditText editText = this.s;
        if (editText != null) {
            m.n(editText);
            h0(m);
        }
        d40.a(this.a, this.g, this.k, this.l);
        L(true);
    }

    public void V(View.OnClickListener onClickListener) {
        d40.h(this.g, onClickListener, this.o);
    }

    public void W(View.OnLongClickListener onLongClickListener) {
        this.o = onLongClickListener;
        d40.i(this.g, onLongClickListener);
    }

    public void X(ImageView.ScaleType scaleType) {
        this.n = scaleType;
        d40.j(this.g, scaleType);
        d40.j(this.c, scaleType);
    }

    public void Y(ColorStateList colorStateList) {
        if (this.k != colorStateList) {
            this.k = colorStateList;
            d40.a(this.a, this.g, colorStateList, this.l);
        }
    }

    public void Z(PorterDuff.Mode mode) {
        if (this.l != mode) {
            this.l = mode;
            d40.a(this.a, this.g, this.k, mode);
        }
    }

    public void a0(boolean z) {
        if (F() != z) {
            this.g.setVisibility(z ? 0 : 8);
            v0();
            x0();
            this.a.o0();
        }
    }

    public void b0(int i) {
        c0(i != 0 ? i3.b(getContext(), i) : null);
        K();
    }

    public void c0(Drawable drawable) {
        this.c.setImageDrawable(drawable);
        w0();
        d40.a(this.a, this.c, this.d, this.e);
    }

    public void d0(View.OnClickListener onClickListener) {
        d40.h(this.c, onClickListener, this.f);
    }

    public void e0(View.OnLongClickListener onLongClickListener) {
        this.f = onLongClickListener;
        d40.i(this.c, onLongClickListener);
    }

    public void f0(ColorStateList colorStateList) {
        if (this.d != colorStateList) {
            this.d = colorStateList;
            d40.a(this.a, this.c, colorStateList, this.e);
        }
    }

    public final void g() {
        if (this.u == null || this.t == null || !m51.N(this)) {
            return;
        }
        e0.a(this.t, this.u);
    }

    public void g0(PorterDuff.Mode mode) {
        if (this.e != mode) {
            this.e = mode;
            d40.a(this.a, this.c, this.d, mode);
        }
    }

    public void h() {
        this.g.performClick();
        this.g.jumpDrawablesToCurrentState();
    }

    public final void h0(oo ooVar) {
        if (this.s == null) {
            return;
        }
        if (ooVar.e() != null) {
            this.s.setOnFocusChangeListener(ooVar.e());
        }
        if (ooVar.g() != null) {
            this.g.setOnFocusChangeListener(ooVar.g());
        }
    }

    public final CheckableImageButton i(ViewGroup viewGroup, LayoutInflater layoutInflater, int i) {
        CheckableImageButton checkableImageButton = (CheckableImageButton) layoutInflater.inflate(vm0.b, viewGroup, false);
        checkableImageButton.setId(i);
        d40.e(checkableImageButton);
        if (nb0.f(getContext())) {
            fb0.d((ViewGroup.MarginLayoutParams) checkableImageButton.getLayoutParams(), 0);
        }
        return checkableImageButton;
    }

    public void i0(int i) {
        j0(i != 0 ? getResources().getText(i) : null);
    }

    public final void j(int i) {
        Iterator it = this.j.iterator();
        if (it.hasNext()) {
            jy0.a(it.next());
            throw null;
        }
    }

    public void j0(CharSequence charSequence) {
        this.g.setContentDescription(charSequence);
    }

    public CheckableImageButton k() {
        if (G()) {
            return this.c;
        }
        if (A() && F()) {
            return this.g;
        }
        return null;
    }

    public void k0(int i) {
        l0(i != 0 ? i3.b(getContext(), i) : null);
    }

    public CharSequence l() {
        return this.g.getContentDescription();
    }

    public void l0(Drawable drawable) {
        this.g.setImageDrawable(drawable);
    }

    public oo m() {
        return this.h.c(this.i);
    }

    public void m0(boolean z) {
        if (z && this.i != 1) {
            U(1);
        } else {
            if (z) {
                return;
            }
            U(0);
        }
    }

    public Drawable n() {
        return this.g.getDrawable();
    }

    public void n0(ColorStateList colorStateList) {
        this.k = colorStateList;
        d40.a(this.a, this.g, colorStateList, this.l);
    }

    public int o() {
        return this.m;
    }

    public void o0(PorterDuff.Mode mode) {
        this.l = mode;
        d40.a(this.a, this.g, this.k, mode);
    }

    public int p() {
        return this.i;
    }

    public void p0(CharSequence charSequence) {
        this.p = TextUtils.isEmpty(charSequence) ? null : charSequence;
        this.q.setText(charSequence);
        y0();
    }

    public ImageView.ScaleType q() {
        return this.n;
    }

    public void q0(int i) {
        c01.n(this.q, i);
    }

    public CheckableImageButton r() {
        return this.g;
    }

    public void r0(ColorStateList colorStateList) {
        this.q.setTextColor(colorStateList);
    }

    public Drawable s() {
        return this.c.getDrawable();
    }

    public final void s0(oo ooVar) {
        ooVar.s();
        this.u = ooVar.h();
        g();
    }

    public final int t(oo ooVar) {
        int i = this.h.c;
        return i == 0 ? ooVar.d() : i;
    }

    public final void t0(oo ooVar) {
        M();
        this.u = null;
        ooVar.u();
    }

    public CharSequence u() {
        return this.g.getContentDescription();
    }

    public final void u0(boolean z) {
        if (!z || n() == null) {
            d40.a(this.a, this.g, this.k, this.l);
            return;
        }
        Drawable mutate = om.l(n()).mutate();
        om.h(mutate, this.a.getErrorCurrentTextColors());
        this.g.setImageDrawable(mutate);
    }

    public Drawable v() {
        return this.g.getDrawable();
    }

    public final void v0() {
        this.b.setVisibility((this.g.getVisibility() != 0 || G()) ? 8 : 0);
        setVisibility((F() || G() || !((this.p == null || this.r) ? 8 : false)) ? 0 : 8);
    }

    public CharSequence w() {
        return this.p;
    }

    public final void w0() {
        this.c.setVisibility(s() != null && this.a.N() && this.a.d0() ? 0 : 8);
        v0();
        x0();
        if (A()) {
            return;
        }
        this.a.o0();
    }

    public ColorStateList x() {
        return this.q.getTextColors();
    }

    public void x0() {
        if (this.a.d == null) {
            return;
        }
        m51.z0(this.q, getContext().getResources().getDimensionPixelSize(em0.C), this.a.d.getPaddingTop(), (F() || G()) ? 0 : m51.B(this.a.d), this.a.d.getPaddingBottom());
    }

    public int y() {
        return m51.B(this) + m51.B(this.q) + ((F() || G()) ? this.g.getMeasuredWidth() + fb0.b((ViewGroup.MarginLayoutParams) this.g.getLayoutParams()) : 0);
    }

    public final void y0() {
        int visibility = this.q.getVisibility();
        int i = (this.p == null || this.r) ? 8 : 0;
        if (visibility != i) {
            m().q(i == 0);
        }
        v0();
        this.q.setVisibility(i);
        this.a.o0();
    }

    public TextView z() {
        return this.q;
    }
}
