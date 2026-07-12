package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.LocaleList;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.widget.TextView;
import androidx.appcompat.view.menu.fp0;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public class k3 {
    public final TextView a;
    public w01 b;
    public w01 c;
    public w01 d;
    public w01 e;
    public w01 f;
    public w01 g;
    public w01 h;
    public final m3 i;
    public int j = 0;
    public int k = -1;
    public Typeface l;
    public boolean m;

    public class a extends fp0.e {
        public final /* synthetic */ int a;
        public final /* synthetic */ int b;
        public final /* synthetic */ WeakReference c;

        public a(int i, int i2, WeakReference weakReference) {
            this.a = i;
            this.b = i2;
            this.c = weakReference;
        }

        @Override // androidx.appcompat.view.menu.fp0.e
        /* renamed from: h */
        public void f(int i) {
        }

        @Override // androidx.appcompat.view.menu.fp0.e
        /* renamed from: i */
        public void g(Typeface typeface) {
            int i = this.a;
            if (i != -1) {
                typeface = e.a(typeface, i, (this.b & 2) != 0);
            }
            k3.this.n(this.c, typeface);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ TextView m;
        public final /* synthetic */ Typeface n;
        public final /* synthetic */ int o;

        public b(TextView textView, Typeface typeface, int i) {
            this.m = textView;
            this.n = typeface;
            this.o = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.m.setTypeface(this.n, this.o);
        }
    }

    public static class c {
        public static LocaleList a(String str) {
            return LocaleList.forLanguageTags(str);
        }

        public static void b(TextView textView, LocaleList localeList) {
            textView.setTextLocales(localeList);
        }
    }

    public static class d {
        public static int a(TextView textView) {
            return textView.getAutoSizeStepGranularity();
        }

        public static void b(TextView textView, int i, int i2, int i3, int i4) {
            textView.setAutoSizeTextTypeUniformWithConfiguration(i, i2, i3, i4);
        }

        public static void c(TextView textView, int[] iArr, int i) {
            textView.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i);
        }

        public static boolean d(TextView textView, String str) {
            return textView.setFontVariationSettings(str);
        }
    }

    public static class e {
        public static Typeface a(Typeface typeface, int i, boolean z) {
            return Typeface.create(typeface, i, z);
        }
    }

    public k3(TextView textView) {
        this.a = textView;
        this.i = new m3(textView);
    }

    public static w01 d(Context context, y2 y2Var, int i) {
        ColorStateList e2 = y2Var.e(context, i);
        if (e2 == null) {
            return null;
        }
        w01 w01Var = new w01();
        w01Var.d = true;
        w01Var.a = e2;
        return w01Var;
    }

    public void A(int i, float f) {
        if (p61.a || l()) {
            return;
        }
        B(i, f);
    }

    public final void B(int i, float f) {
        this.i.t(i, f);
    }

    public final void C(Context context, y01 y01Var) {
        String n;
        this.j = y01Var.j(mn0.G1, this.j);
        int j = y01Var.j(mn0.I1, -1);
        this.k = j;
        if (j != -1) {
            this.j &= 2;
        }
        if (!y01Var.q(mn0.H1) && !y01Var.q(mn0.J1)) {
            if (y01Var.q(mn0.F1)) {
                this.m = false;
                int j2 = y01Var.j(mn0.F1, 1);
                if (j2 == 1) {
                    this.l = Typeface.SANS_SERIF;
                    return;
                } else if (j2 == 2) {
                    this.l = Typeface.SERIF;
                    return;
                } else {
                    if (j2 != 3) {
                        return;
                    }
                    this.l = Typeface.MONOSPACE;
                    return;
                }
            }
            return;
        }
        this.l = null;
        int i = y01Var.q(mn0.J1) ? mn0.J1 : mn0.H1;
        int i2 = this.k;
        int i3 = this.j;
        if (!context.isRestricted()) {
            try {
                Typeface i4 = y01Var.i(i, this.j, new a(i2, i3, new WeakReference(this.a)));
                if (i4 != null) {
                    if (this.k != -1) {
                        this.l = e.a(Typeface.create(i4, 0), this.k, (this.j & 2) != 0);
                    } else {
                        this.l = i4;
                    }
                }
                this.m = this.l == null;
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            }
        }
        if (this.l != null || (n = y01Var.n(i)) == null) {
            return;
        }
        if (this.k != -1) {
            this.l = e.a(Typeface.create(n, 0), this.k, (this.j & 2) != 0);
        } else {
            this.l = Typeface.create(n, this.j);
        }
    }

    public final void a(Drawable drawable, w01 w01Var) {
        if (drawable == null || w01Var == null) {
            return;
        }
        y2.g(drawable, w01Var, this.a.getDrawableState());
    }

    public void b() {
        if (this.b != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = this.a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
        if (this.f == null && this.g == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
        a(compoundDrawablesRelative[0], this.f);
        a(compoundDrawablesRelative[2], this.g);
    }

    public void c() {
        this.i.a();
    }

    public int e() {
        return this.i.f();
    }

    public int f() {
        return this.i.g();
    }

    public int g() {
        return this.i.h();
    }

    public int[] h() {
        return this.i.i();
    }

    public int i() {
        return this.i.j();
    }

    public ColorStateList j() {
        w01 w01Var = this.h;
        if (w01Var != null) {
            return w01Var.a;
        }
        return null;
    }

    public PorterDuff.Mode k() {
        w01 w01Var = this.h;
        if (w01Var != null) {
            return w01Var.b;
        }
        return null;
    }

    public boolean l() {
        return this.i.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:106:0x028d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0294  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x029d  */
    /* JADX WARN: Removed duplicated region for block: B:117:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void m(AttributeSet attributeSet, int i) {
        boolean z;
        boolean z2;
        String str;
        String str2;
        float f;
        int i2;
        Context context = this.a.getContext();
        y2 b2 = y2.b();
        y01 t = y01.t(context, attributeSet, mn0.K, i, 0);
        TextView textView = this.a;
        m51.i0(textView, textView.getContext(), mn0.K, attributeSet, t.p(), i, 0);
        int m = t.m(mn0.L, -1);
        if (t.q(mn0.O)) {
            this.b = d(context, b2, t.m(mn0.O, 0));
        }
        if (t.q(mn0.M)) {
            this.c = d(context, b2, t.m(mn0.M, 0));
        }
        if (t.q(mn0.P)) {
            this.d = d(context, b2, t.m(mn0.P, 0));
        }
        if (t.q(mn0.N)) {
            this.e = d(context, b2, t.m(mn0.N, 0));
        }
        if (t.q(mn0.Q)) {
            this.f = d(context, b2, t.m(mn0.Q, 0));
        }
        if (t.q(mn0.R)) {
            this.g = d(context, b2, t.m(mn0.R, 0));
        }
        t.v();
        boolean z3 = this.a.getTransformationMethod() instanceof PasswordTransformationMethod;
        boolean z4 = true;
        if (m != -1) {
            y01 r = y01.r(context, m, mn0.D1);
            if (z3 || !r.q(mn0.L1)) {
                z = false;
                z2 = false;
            } else {
                z = r.a(mn0.L1, false);
                z2 = true;
            }
            C(context, r);
            str = r.q(mn0.M1) ? r.n(mn0.M1) : null;
            str2 = r.q(mn0.K1) ? r.n(mn0.K1) : null;
            r.v();
        } else {
            z = false;
            z2 = false;
            str = null;
            str2 = null;
        }
        y01 t2 = y01.t(context, attributeSet, mn0.D1, i, 0);
        if (z3 || !t2.q(mn0.L1)) {
            z4 = z2;
        } else {
            z = t2.a(mn0.L1, false);
        }
        if (t2.q(mn0.M1)) {
            str = t2.n(mn0.M1);
        }
        if (t2.q(mn0.K1)) {
            str2 = t2.n(mn0.K1);
        }
        if (t2.q(mn0.E1) && t2.f(mn0.E1, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        C(context, t2);
        t2.v();
        if (!z3 && z4) {
            s(z);
        }
        Typeface typeface = this.l;
        if (typeface != null) {
            if (this.k == -1) {
                this.a.setTypeface(typeface, this.j);
            } else {
                this.a.setTypeface(typeface);
            }
        }
        if (str2 != null) {
            d.d(this.a, str2);
        }
        if (str != null) {
            c.b(this.a, c.a(str));
        }
        this.i.o(attributeSet, i);
        if (p61.a && this.i.j() != 0) {
            int[] i3 = this.i.i();
            if (i3.length > 0) {
                if (d.a(this.a) != -1.0f) {
                    d.b(this.a, this.i.g(), this.i.f(), this.i.h(), 0);
                } else {
                    d.c(this.a, i3, 0);
                }
            }
        }
        y01 s = y01.s(context, attributeSet, mn0.S);
        int m2 = s.m(mn0.a0, -1);
        Drawable c2 = m2 != -1 ? b2.c(context, m2) : null;
        int m3 = s.m(mn0.f0, -1);
        Drawable c3 = m3 != -1 ? b2.c(context, m3) : null;
        int m4 = s.m(mn0.b0, -1);
        Drawable c4 = m4 != -1 ? b2.c(context, m4) : null;
        int m5 = s.m(mn0.Y, -1);
        Drawable c5 = m5 != -1 ? b2.c(context, m5) : null;
        int m6 = s.m(mn0.c0, -1);
        Drawable c6 = m6 != -1 ? b2.c(context, m6) : null;
        int m7 = s.m(mn0.Z, -1);
        y(c2, c3, c4, c5, c6, m7 != -1 ? b2.c(context, m7) : null);
        if (s.q(mn0.d0)) {
            c01.f(this.a, s.c(mn0.d0));
        }
        if (s.q(mn0.e0)) {
            c01.g(this.a, vm.d(s.j(mn0.e0, -1), null));
        }
        int f2 = s.f(mn0.h0, -1);
        int f3 = s.f(mn0.i0, -1);
        if (s.q(mn0.j0)) {
            TypedValue u = s.u(mn0.j0);
            if (u != null && u.type == 5) {
                i2 = r21.a(u.data);
                f = TypedValue.complexToFloat(u.data);
                s.v();
                if (f2 != -1) {
                    c01.i(this.a, f2);
                }
                if (f3 != -1) {
                    c01.j(this.a, f3);
                }
                if (f == -1.0f) {
                    if (i2 == -1) {
                        c01.k(this.a, (int) f);
                        return;
                    } else {
                        c01.l(this.a, i2, f);
                        return;
                    }
                }
                return;
            }
            f = s.f(mn0.j0, -1);
        } else {
            f = -1.0f;
        }
        i2 = -1;
        s.v();
        if (f2 != -1) {
        }
        if (f3 != -1) {
        }
        if (f == -1.0f) {
        }
    }

    public void n(WeakReference weakReference, Typeface typeface) {
        if (this.m) {
            this.l = typeface;
            TextView textView = (TextView) weakReference.get();
            if (textView != null) {
                if (textView.isAttachedToWindow()) {
                    textView.post(new b(textView, typeface, this.j));
                } else {
                    textView.setTypeface(typeface, this.j);
                }
            }
        }
    }

    public void o(boolean z, int i, int i2, int i3, int i4) {
        if (p61.a) {
            return;
        }
        c();
    }

    public void p() {
        b();
    }

    public void q(Context context, int i) {
        String n;
        y01 r = y01.r(context, i, mn0.D1);
        if (r.q(mn0.L1)) {
            s(r.a(mn0.L1, false));
        }
        if (r.q(mn0.E1) && r.f(mn0.E1, -1) == 0) {
            this.a.setTextSize(0, 0.0f);
        }
        C(context, r);
        if (r.q(mn0.K1) && (n = r.n(mn0.K1)) != null) {
            d.d(this.a, n);
        }
        r.v();
        Typeface typeface = this.l;
        if (typeface != null) {
            this.a.setTypeface(typeface, this.j);
        }
    }

    public void r(TextView textView, InputConnection inputConnection, EditorInfo editorInfo) {
        if (Build.VERSION.SDK_INT >= 30 || inputConnection == null) {
            return;
        }
        mn.e(editorInfo, textView.getText());
    }

    public void s(boolean z) {
        this.a.setAllCaps(z);
    }

    public void t(int i, int i2, int i3, int i4) {
        this.i.p(i, i2, i3, i4);
    }

    public void u(int[] iArr, int i) {
        this.i.q(iArr, i);
    }

    public void v(int i) {
        this.i.r(i);
    }

    public void w(ColorStateList colorStateList) {
        if (this.h == null) {
            this.h = new w01();
        }
        w01 w01Var = this.h;
        w01Var.a = colorStateList;
        w01Var.d = colorStateList != null;
        z();
    }

    public void x(PorterDuff.Mode mode) {
        if (this.h == null) {
            this.h = new w01();
        }
        w01 w01Var = this.h;
        w01Var.b = mode;
        w01Var.c = mode != null;
        z();
    }

    public final void y(Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4, Drawable drawable5, Drawable drawable6) {
        if (drawable5 != null || drawable6 != null) {
            Drawable[] compoundDrawablesRelative = this.a.getCompoundDrawablesRelative();
            if (drawable5 == null) {
                drawable5 = compoundDrawablesRelative[0];
            }
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative[1];
            }
            if (drawable6 == null) {
                drawable6 = compoundDrawablesRelative[2];
            }
            TextView textView = this.a;
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative[3];
            }
            textView.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable5, drawable2, drawable6, drawable4);
            return;
        }
        if (drawable == null && drawable2 == null && drawable3 == null && drawable4 == null) {
            return;
        }
        Drawable[] compoundDrawablesRelative2 = this.a.getCompoundDrawablesRelative();
        Drawable drawable7 = compoundDrawablesRelative2[0];
        if (drawable7 != null || compoundDrawablesRelative2[2] != null) {
            if (drawable2 == null) {
                drawable2 = compoundDrawablesRelative2[1];
            }
            if (drawable4 == null) {
                drawable4 = compoundDrawablesRelative2[3];
            }
            this.a.setCompoundDrawablesRelativeWithIntrinsicBounds(drawable7, drawable2, compoundDrawablesRelative2[2], drawable4);
            return;
        }
        Drawable[] compoundDrawables = this.a.getCompoundDrawables();
        TextView textView2 = this.a;
        if (drawable == null) {
            drawable = compoundDrawables[0];
        }
        if (drawable2 == null) {
            drawable2 = compoundDrawables[1];
        }
        if (drawable3 == null) {
            drawable3 = compoundDrawables[2];
        }
        if (drawable4 == null) {
            drawable4 = compoundDrawables[3];
        }
        textView2.setCompoundDrawablesWithIntrinsicBounds(drawable, drawable2, drawable3, drawable4);
    }

    public final void z() {
        w01 w01Var = this.h;
        this.b = w01Var;
        this.c = w01Var;
        this.d = w01Var;
        this.e = w01Var;
        this.f = w01Var;
        this.g = w01Var;
    }
}
