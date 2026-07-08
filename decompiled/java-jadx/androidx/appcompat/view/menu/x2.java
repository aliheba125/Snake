package androidx.appcompat.view.menu;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.CompoundButton;

/* loaded from: classes.dex */
public class x2 {
    public final CompoundButton a;
    public ColorStateList b = null;
    public PorterDuff.Mode c = null;
    public boolean d = false;
    public boolean e = false;
    public boolean f;

    public x2(CompoundButton compoundButton) {
        this.a = compoundButton;
    }

    public void a() {
        Drawable a = ue.a(this.a);
        if (a != null) {
            if (this.d || this.e) {
                Drawable mutate = om.l(a).mutate();
                if (this.d) {
                    om.i(mutate, this.b);
                }
                if (this.e) {
                    om.j(mutate, this.c);
                }
                if (mutate.isStateful()) {
                    mutate.setState(this.a.getDrawableState());
                }
                this.a.setButtonDrawable(mutate);
            }
        }
    }

    public ColorStateList b() {
        return this.b;
    }

    public PorterDuff.Mode c() {
        return this.c;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0064 A[Catch: all -> 0x003d, TryCatch #1 {all -> 0x003d, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x005c, B:11:0x0064, B:12:0x006f, B:14:0x0077, B:21:0x003f, B:23:0x0047, B:25:0x004f), top: B:2:0x001f }] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0077 A[Catch: all -> 0x003d, TRY_LEAVE, TryCatch #1 {all -> 0x003d, blocks: (B:3:0x001f, B:5:0x0027, B:8:0x002f, B:9:0x005c, B:11:0x0064, B:12:0x006f, B:14:0x0077, B:21:0x003f, B:23:0x0047, B:25:0x004f), top: B:2:0x001f }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void d(AttributeSet attributeSet, int i) {
        int m;
        int m2;
        y01 t = y01.t(this.a.getContext(), attributeSet, mn0.p0, i, 0);
        CompoundButton compoundButton = this.a;
        m51.i0(compoundButton, compoundButton.getContext(), mn0.p0, attributeSet, t.p(), i, 0);
        try {
            if (t.q(mn0.r0) && (m2 = t.m(mn0.r0, 0)) != 0) {
                try {
                    CompoundButton compoundButton2 = this.a;
                    compoundButton2.setButtonDrawable(i3.b(compoundButton2.getContext(), m2));
                } catch (Resources.NotFoundException unused) {
                }
                if (t.q(mn0.s0)) {
                    ue.b(this.a, t.c(mn0.s0));
                }
                if (t.q(mn0.t0)) {
                    ue.c(this.a, vm.d(t.j(mn0.t0, -1), null));
                }
            }
            if (t.q(mn0.q0) && (m = t.m(mn0.q0, 0)) != 0) {
                CompoundButton compoundButton3 = this.a;
                compoundButton3.setButtonDrawable(i3.b(compoundButton3.getContext(), m));
            }
            if (t.q(mn0.s0)) {
            }
            if (t.q(mn0.t0)) {
            }
        } finally {
            t.v();
        }
    }

    public void e() {
        if (this.f) {
            this.f = false;
        } else {
            this.f = true;
            a();
        }
    }

    public void f(ColorStateList colorStateList) {
        this.b = colorStateList;
        this.d = true;
        a();
    }

    public void g(PorterDuff.Mode mode) {
        this.c = mode;
        this.e = true;
        a();
    }
}
