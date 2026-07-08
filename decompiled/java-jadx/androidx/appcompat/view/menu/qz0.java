package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.text.TextPaint;
import androidx.appcompat.view.menu.fp0;

/* loaded from: classes.dex */
public class qz0 {
    public final ColorStateList a;
    public final ColorStateList b;
    public final ColorStateList c;
    public final String d;
    public final int e;
    public final int f;
    public final boolean g;
    public final float h;
    public final float i;
    public final float j;
    public final boolean k;
    public final float l;
    public ColorStateList m;
    public float n;
    public final int o;
    public boolean p = false;
    public Typeface q;

    public class a extends fp0.e {
        public final /* synthetic */ sz0 a;

        public a(sz0 sz0Var) {
            this.a = sz0Var;
        }

        @Override // androidx.appcompat.view.menu.fp0.e
        /* renamed from: h */
        public void f(int i) {
            qz0.this.p = true;
            this.a.a(i);
        }

        @Override // androidx.appcompat.view.menu.fp0.e
        /* renamed from: i */
        public void g(Typeface typeface) {
            qz0 qz0Var = qz0.this;
            qz0Var.q = Typeface.create(typeface, qz0Var.e);
            qz0.this.p = true;
            this.a.b(qz0.this.q, false);
        }
    }

    public class b extends sz0 {
        public final /* synthetic */ Context a;
        public final /* synthetic */ TextPaint b;
        public final /* synthetic */ sz0 c;

        public b(Context context, TextPaint textPaint, sz0 sz0Var) {
            this.a = context;
            this.b = textPaint;
            this.c = sz0Var;
        }

        @Override // androidx.appcompat.view.menu.sz0
        public void a(int i) {
            this.c.a(i);
        }

        @Override // androidx.appcompat.view.menu.sz0
        public void b(Typeface typeface, boolean z) {
            qz0.this.p(this.a, this.b, typeface);
            this.c.b(typeface, z);
        }
    }

    public qz0(Context context, int i) {
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, ln0.y4);
        l(obtainStyledAttributes.getDimension(ln0.z4, 0.0f));
        k(nb0.a(context, obtainStyledAttributes, ln0.C4));
        this.a = nb0.a(context, obtainStyledAttributes, ln0.D4);
        this.b = nb0.a(context, obtainStyledAttributes, ln0.E4);
        this.e = obtainStyledAttributes.getInt(ln0.B4, 0);
        this.f = obtainStyledAttributes.getInt(ln0.A4, 1);
        int d = nb0.d(obtainStyledAttributes, ln0.K4, ln0.J4);
        this.o = obtainStyledAttributes.getResourceId(d, 0);
        this.d = obtainStyledAttributes.getString(d);
        this.g = obtainStyledAttributes.getBoolean(ln0.L4, false);
        this.c = nb0.a(context, obtainStyledAttributes, ln0.F4);
        this.h = obtainStyledAttributes.getFloat(ln0.G4, 0.0f);
        this.i = obtainStyledAttributes.getFloat(ln0.H4, 0.0f);
        this.j = obtainStyledAttributes.getFloat(ln0.I4, 0.0f);
        obtainStyledAttributes.recycle();
        TypedArray obtainStyledAttributes2 = context.obtainStyledAttributes(i, ln0.X2);
        this.k = obtainStyledAttributes2.hasValue(ln0.Y2);
        this.l = obtainStyledAttributes2.getFloat(ln0.Y2, 0.0f);
        obtainStyledAttributes2.recycle();
    }

    public final void d() {
        String str;
        if (this.q == null && (str = this.d) != null) {
            this.q = Typeface.create(str, this.e);
        }
        if (this.q == null) {
            int i = this.f;
            if (i == 1) {
                this.q = Typeface.SANS_SERIF;
            } else if (i == 2) {
                this.q = Typeface.SERIF;
            } else if (i != 3) {
                this.q = Typeface.DEFAULT;
            } else {
                this.q = Typeface.MONOSPACE;
            }
            this.q = Typeface.create(this.q, this.e);
        }
    }

    public Typeface e() {
        d();
        return this.q;
    }

    public Typeface f(Context context) {
        if (this.p) {
            return this.q;
        }
        if (!context.isRestricted()) {
            try {
                Typeface g = fp0.g(context, this.o);
                this.q = g;
                if (g != null) {
                    this.q = Typeface.create(g, this.e);
                }
            } catch (Resources.NotFoundException | UnsupportedOperationException unused) {
            } catch (Exception unused2) {
                StringBuilder sb = new StringBuilder();
                sb.append("Error loading font ");
                sb.append(this.d);
            }
        }
        d();
        this.p = true;
        return this.q;
    }

    public void g(Context context, TextPaint textPaint, sz0 sz0Var) {
        p(context, textPaint, e());
        h(context, new b(context, textPaint, sz0Var));
    }

    public void h(Context context, sz0 sz0Var) {
        if (m(context)) {
            f(context);
        } else {
            d();
        }
        int i = this.o;
        if (i == 0) {
            this.p = true;
        }
        if (this.p) {
            sz0Var.b(this.q, true);
            return;
        }
        try {
            fp0.i(context, i, new a(sz0Var), null);
        } catch (Resources.NotFoundException unused) {
            this.p = true;
            sz0Var.a(1);
        } catch (Exception unused2) {
            StringBuilder sb = new StringBuilder();
            sb.append("Error loading font ");
            sb.append(this.d);
            this.p = true;
            sz0Var.a(-3);
        }
    }

    public ColorStateList i() {
        return this.m;
    }

    public float j() {
        return this.n;
    }

    public void k(ColorStateList colorStateList) {
        this.m = colorStateList;
    }

    public void l(float f) {
        this.n = f;
    }

    public final boolean m(Context context) {
        if (rz0.a()) {
            return true;
        }
        int i = this.o;
        return (i != 0 ? fp0.c(context, i) : null) != null;
    }

    public void n(Context context, TextPaint textPaint, sz0 sz0Var) {
        o(context, textPaint, sz0Var);
        ColorStateList colorStateList = this.m;
        textPaint.setColor(colorStateList != null ? colorStateList.getColorForState(textPaint.drawableState, colorStateList.getDefaultColor()) : -16777216);
        float f = this.j;
        float f2 = this.h;
        float f3 = this.i;
        ColorStateList colorStateList2 = this.c;
        textPaint.setShadowLayer(f, f2, f3, colorStateList2 != null ? colorStateList2.getColorForState(textPaint.drawableState, colorStateList2.getDefaultColor()) : 0);
    }

    public void o(Context context, TextPaint textPaint, sz0 sz0Var) {
        if (m(context)) {
            p(context, textPaint, f(context));
        } else {
            g(context, textPaint, sz0Var);
        }
    }

    public void p(Context context, TextPaint textPaint, Typeface typeface) {
        Typeface a2 = c31.a(context, typeface);
        if (a2 != null) {
            typeface = a2;
        }
        textPaint.setTypeface(typeface);
        int i = this.e & (~typeface.getStyle());
        textPaint.setFakeBoldText((i & 1) != 0);
        textPaint.setTextSkewX((i & 2) != 0 ? -0.25f : 0.0f);
        textPaint.setTextSize(this.n);
        if (this.k) {
            textPaint.setLetterSpacing(this.l);
        }
    }
}
