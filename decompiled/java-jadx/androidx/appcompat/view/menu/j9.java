package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.RippleDrawable;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class j9 {
    public final Rect a;
    public final ColorStateList b;
    public final ColorStateList c;
    public final ColorStateList d;
    public final int e;
    public final st0 f;

    public j9(ColorStateList colorStateList, ColorStateList colorStateList2, ColorStateList colorStateList3, int i, st0 st0Var, Rect rect) {
        qj0.d(rect.left);
        qj0.d(rect.top);
        qj0.d(rect.right);
        qj0.d(rect.bottom);
        this.a = rect;
        this.b = colorStateList2;
        this.c = colorStateList;
        this.d = colorStateList3;
        this.e = i;
        this.f = st0Var;
    }

    public static j9 a(Context context, int i) {
        qj0.b(i != 0, "Cannot create a CalendarItemStyle with a styleResId of 0");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(i, ln0.D2);
        Rect rect = new Rect(obtainStyledAttributes.getDimensionPixelOffset(ln0.E2, 0), obtainStyledAttributes.getDimensionPixelOffset(ln0.G2, 0), obtainStyledAttributes.getDimensionPixelOffset(ln0.F2, 0), obtainStyledAttributes.getDimensionPixelOffset(ln0.H2, 0));
        ColorStateList a = nb0.a(context, obtainStyledAttributes, ln0.I2);
        ColorStateList a2 = nb0.a(context, obtainStyledAttributes, ln0.N2);
        ColorStateList a3 = nb0.a(context, obtainStyledAttributes, ln0.L2);
        int dimensionPixelSize = obtainStyledAttributes.getDimensionPixelSize(ln0.M2, 0);
        st0 m = st0.b(context, obtainStyledAttributes.getResourceId(ln0.J2, 0), obtainStyledAttributes.getResourceId(ln0.K2, 0)).m();
        obtainStyledAttributes.recycle();
        return new j9(a, a2, a3, dimensionPixelSize, m, rect);
    }

    public void b(TextView textView) {
        c(textView, null, null);
    }

    public void c(TextView textView, ColorStateList colorStateList, ColorStateList colorStateList2) {
        ob0 ob0Var = new ob0();
        ob0 ob0Var2 = new ob0();
        ob0Var.setShapeAppearanceModel(this.f);
        ob0Var2.setShapeAppearanceModel(this.f);
        if (colorStateList == null) {
            colorStateList = this.c;
        }
        ob0Var.T(colorStateList);
        ob0Var.Y(this.e, this.d);
        if (colorStateList2 == null) {
            colorStateList2 = this.b;
        }
        textView.setTextColor(colorStateList2);
        RippleDrawable rippleDrawable = new RippleDrawable(this.b.withAlpha(30), ob0Var, ob0Var2);
        Rect rect = this.a;
        m51.o0(textView, new InsetDrawable((Drawable) rippleDrawable, rect.left, rect.top, rect.right, rect.bottom));
    }
}
