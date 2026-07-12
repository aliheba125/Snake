package com.google.android.material.appbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.Menu;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.appcompat.view.menu.e11;
import androidx.appcompat.view.menu.en0;
import androidx.appcompat.view.menu.f01;
import androidx.appcompat.view.menu.ln0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.mc0;
import androidx.appcompat.view.menu.ob0;
import androidx.appcompat.view.menu.om;
import androidx.appcompat.view.menu.pb0;
import androidx.appcompat.view.menu.sb0;
import androidx.appcompat.view.menu.tm;
import androidx.appcompat.view.menu.zl0;
import androidx.appcompat.widget.Toolbar;

/* loaded from: classes.dex */
public class MaterialToolbar extends Toolbar {
    public static final int b0 = en0.l;
    public static final ImageView.ScaleType[] c0 = {ImageView.ScaleType.MATRIX, ImageView.ScaleType.FIT_XY, ImageView.ScaleType.FIT_START, ImageView.ScaleType.FIT_CENTER, ImageView.ScaleType.FIT_END, ImageView.ScaleType.CENTER, ImageView.ScaleType.CENTER_CROP, ImageView.ScaleType.CENTER_INSIDE};
    public Integer T;
    public boolean U;
    public boolean V;
    public ImageView.ScaleType W;
    public Boolean a0;

    public MaterialToolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, zl0.G);
    }

    public final Pair M(TextView textView, TextView textView2) {
        int measuredWidth = getMeasuredWidth();
        int i = measuredWidth / 2;
        int paddingLeft = getPaddingLeft();
        int paddingRight = measuredWidth - getPaddingRight();
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8 && childAt != textView && childAt != textView2) {
                if (childAt.getRight() < i && childAt.getRight() > paddingLeft) {
                    paddingLeft = childAt.getRight();
                }
                if (childAt.getLeft() > i && childAt.getLeft() < paddingRight) {
                    paddingRight = childAt.getLeft();
                }
            }
        }
        return new Pair(Integer.valueOf(paddingLeft), Integer.valueOf(paddingRight));
    }

    public final void N(Context context) {
        Drawable background = getBackground();
        ColorStateList valueOf = background == null ? ColorStateList.valueOf(0) : tm.a(background);
        if (valueOf != null) {
            ob0 ob0Var = new ob0();
            ob0Var.T(valueOf);
            ob0Var.J(context);
            ob0Var.S(m51.s(this));
            m51.o0(this, ob0Var);
        }
    }

    public final void O(View view, Pair pair) {
        int measuredWidth = getMeasuredWidth();
        int measuredWidth2 = view.getMeasuredWidth();
        int i = (measuredWidth / 2) - (measuredWidth2 / 2);
        int i2 = measuredWidth2 + i;
        int max = Math.max(Math.max(((Integer) pair.first).intValue() - i, 0), Math.max(i2 - ((Integer) pair.second).intValue(), 0));
        if (max > 0) {
            i += max;
            i2 -= max;
            view.measure(View.MeasureSpec.makeMeasureSpec(i2 - i, 1073741824), view.getMeasuredHeightAndState());
        }
        view.layout(i, view.getTop(), i2, view.getBottom());
    }

    public final void P() {
        if (this.U || this.V) {
            TextView e = e11.e(this);
            TextView c = e11.c(this);
            if (e == null && c == null) {
                return;
            }
            Pair M = M(e, c);
            if (this.U && e != null) {
                O(e, M);
            }
            if (!this.V || c == null) {
                return;
            }
            O(c, M);
        }
    }

    public final Drawable Q(Drawable drawable) {
        if (drawable == null || this.T == null) {
            return drawable;
        }
        Drawable l = om.l(drawable.mutate());
        om.h(l, this.T.intValue());
        return l;
    }

    public final void R() {
        ImageView b = e11.b(this);
        if (b != null) {
            Boolean bool = this.a0;
            if (bool != null) {
                b.setAdjustViewBounds(bool.booleanValue());
            }
            ImageView.ScaleType scaleType = this.W;
            if (scaleType != null) {
                b.setScaleType(scaleType);
            }
        }
    }

    public ImageView.ScaleType getLogoScaleType() {
        return this.W;
    }

    public Integer getNavigationIconTint() {
        return this.T;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        pb0.e(this);
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        P();
        R();
    }

    @Override // android.view.View
    public void setElevation(float f) {
        super.setElevation(f);
        pb0.d(this, f);
    }

    public void setLogoAdjustViewBounds(boolean z) {
        Boolean bool = this.a0;
        if (bool == null || bool.booleanValue() != z) {
            this.a0 = Boolean.valueOf(z);
            requestLayout();
        }
    }

    public void setLogoScaleType(ImageView.ScaleType scaleType) {
        if (this.W != scaleType) {
            this.W = scaleType;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setNavigationIcon(Drawable drawable) {
        super.setNavigationIcon(Q(drawable));
    }

    public void setNavigationIconTint(int i) {
        this.T = Integer.valueOf(i);
        Drawable navigationIcon = getNavigationIcon();
        if (navigationIcon != null) {
            setNavigationIcon(navigationIcon);
        }
    }

    public void setSubtitleCentered(boolean z) {
        if (this.V != z) {
            this.V = z;
            requestLayout();
        }
    }

    public void setTitleCentered(boolean z) {
        if (this.U != z) {
            this.U = z;
            requestLayout();
        }
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void u(int i) {
        Menu menu = getMenu();
        boolean z = menu instanceof mc0;
        if (z) {
            ((mc0) menu).W();
        }
        super.u(i);
        if (z) {
            ((mc0) menu).V();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public MaterialToolbar(Context context, AttributeSet attributeSet, int i) {
        super(sb0.c(context, attributeSet, i, r4), attributeSet, i);
        int i2 = b0;
        Context context2 = getContext();
        TypedArray h = f01.h(context2, attributeSet, ln0.b3, i, i2, new int[0]);
        if (h.hasValue(ln0.e3)) {
            setNavigationIconTint(h.getColor(ln0.e3, -1));
        }
        this.U = h.getBoolean(ln0.g3, false);
        this.V = h.getBoolean(ln0.f3, false);
        int i3 = h.getInt(ln0.d3, -1);
        if (i3 >= 0) {
            ImageView.ScaleType[] scaleTypeArr = c0;
            if (i3 < scaleTypeArr.length) {
                this.W = scaleTypeArr[i3];
            }
        }
        if (h.hasValue(ln0.c3)) {
            this.a0 = Boolean.valueOf(h.getBoolean(ln0.c3, false));
        }
        h.recycle();
        N(context2);
    }
}
