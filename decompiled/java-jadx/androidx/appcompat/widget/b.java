package androidx.appcompat.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.hy;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.mn0;
import androidx.appcompat.view.menu.p61;
import androidx.appcompat.view.menu.y01;

/* loaded from: classes.dex */
public abstract class b extends ViewGroup {
    public boolean a;
    public int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public float g;
    public boolean h;
    public int[] i;
    public int[] j;
    public Drawable k;
    public int l;
    public int m;
    public int n;
    public int o;

    public static class a extends LinearLayout.LayoutParams {
        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public a(int i, int i2) {
            super(i, i2);
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void i(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View p = p(i3);
            if (p.getVisibility() != 8) {
                a aVar = (a) p.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).width == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).height;
                    ((LinearLayout.LayoutParams) aVar).height = p.getMeasuredHeight();
                    measureChildWithMargins(p, makeMeasureSpec, 0, i2, 0);
                    ((LinearLayout.LayoutParams) aVar).height = i4;
                }
            }
        }
    }

    private void x(View view, int i, int i2, int i3, int i4) {
        view.layout(i, i2, i3 + i, i4 + i2);
    }

    public void c(Canvas canvas) {
        int right;
        int left;
        int i;
        int virtualChildCount = getVirtualChildCount();
        boolean a2 = p61.a(this);
        for (int i2 = 0; i2 < virtualChildCount; i2++) {
            View p = p(i2);
            if (p != null && p.getVisibility() != 8 && q(i2)) {
                a aVar = (a) p.getLayoutParams();
                g(canvas, a2 ? p.getRight() + ((LinearLayout.LayoutParams) aVar).rightMargin : (p.getLeft() - ((LinearLayout.LayoutParams) aVar).leftMargin) - this.l);
            }
        }
        if (q(virtualChildCount)) {
            View p2 = p(virtualChildCount - 1);
            if (p2 != null) {
                a aVar2 = (a) p2.getLayoutParams();
                if (a2) {
                    left = p2.getLeft() - ((LinearLayout.LayoutParams) aVar2).leftMargin;
                    i = this.l;
                    right = left - i;
                } else {
                    right = p2.getRight() + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                }
            } else if (a2) {
                right = getPaddingLeft();
            } else {
                left = getWidth() - getPaddingRight();
                i = this.l;
                right = left - i;
            }
            g(canvas, right);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public void e(Canvas canvas) {
        int virtualChildCount = getVirtualChildCount();
        for (int i = 0; i < virtualChildCount; i++) {
            View p = p(i);
            if (p != null && p.getVisibility() != 8 && q(i)) {
                f(canvas, (p.getTop() - ((LinearLayout.LayoutParams) ((a) p.getLayoutParams())).topMargin) - this.m);
            }
        }
        if (q(virtualChildCount)) {
            View p2 = p(virtualChildCount - 1);
            f(canvas, p2 == null ? (getHeight() - getPaddingBottom()) - this.m : p2.getBottom() + ((LinearLayout.LayoutParams) ((a) p2.getLayoutParams())).bottomMargin);
        }
    }

    public void f(Canvas canvas, int i) {
        this.k.setBounds(getPaddingLeft() + this.o, i, (getWidth() - getPaddingRight()) - this.o, this.m + i);
        this.k.draw(canvas);
    }

    public void g(Canvas canvas, int i) {
        this.k.setBounds(i, getPaddingTop() + this.o, this.l + i, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.b;
        if (childCount <= i2) {
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int i3 = this.c;
        if (this.d == 1 && (i = this.e & 112) != 48) {
            if (i == 16) {
                i3 += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f) / 2;
            } else if (i == 80) {
                i3 = ((getBottom() - getTop()) - getPaddingBottom()) - this.f;
            }
        }
        return i3 + ((LinearLayout.LayoutParams) ((a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public Drawable getDividerDrawable() {
        return this.k;
    }

    public int getDividerPadding() {
        return this.o;
    }

    public int getDividerWidth() {
        return this.l;
    }

    public int getGravity() {
        return this.e;
    }

    public int getOrientation() {
        return this.d;
    }

    public int getShowDividers() {
        return this.n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.g;
    }

    public final void h(int i, int i2) {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824);
        for (int i3 = 0; i3 < i; i3++) {
            View p = p(i3);
            if (p.getVisibility() != 8) {
                a aVar = (a) p.getLayoutParams();
                if (((LinearLayout.LayoutParams) aVar).height == -1) {
                    int i4 = ((LinearLayout.LayoutParams) aVar).width;
                    ((LinearLayout.LayoutParams) aVar).width = p.getMeasuredWidth();
                    measureChildWithMargins(p, i2, 0, makeMeasureSpec, 0);
                    ((LinearLayout.LayoutParams) aVar).width = i4;
                }
            }
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public a generateDefaultLayoutParams() {
        int i = this.d;
        if (i == 0) {
            return new a(-2, -2);
        }
        if (i == 1) {
            return new a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public a generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a ? new a((ViewGroup.MarginLayoutParams) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new a((ViewGroup.MarginLayoutParams) layoutParams) : new a(layoutParams);
    }

    public int m(View view, int i) {
        return 0;
    }

    public int n(View view) {
        return 0;
    }

    public int o(View view) {
        return 0;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        if (this.k == null) {
            return;
        }
        if (this.d == 1) {
            e(canvas);
        } else {
            c(canvas);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        if (this.d == 1) {
            s(i, i2, i3, i4);
        } else {
            r(i, i2, i3, i4);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (this.d == 1) {
            w(i, i2);
        } else {
            u(i, i2);
        }
    }

    public View p(int i) {
        return getChildAt(i);
    }

    public boolean q(int i) {
        if (i == 0) {
            return (this.n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ec  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void r(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10;
        int i11;
        int i12;
        int i13;
        boolean a2 = p61.a(this);
        int paddingTop = getPaddingTop();
        int i14 = i4 - i2;
        int paddingBottom = i14 - getPaddingBottom();
        int paddingBottom2 = (i14 - paddingTop) - getPaddingBottom();
        int virtualChildCount = getVirtualChildCount();
        int i15 = this.e;
        int i16 = i15 & 112;
        boolean z2 = this.a;
        int[] iArr = this.i;
        int[] iArr2 = this.j;
        int b = hy.b(8388615 & i15, getLayoutDirection());
        boolean z3 = true;
        int paddingLeft = b != 1 ? b != 5 ? getPaddingLeft() : ((getPaddingLeft() + i3) - i) - this.f : getPaddingLeft() + (((i3 - i) - this.f) / 2);
        if (a2) {
            i5 = virtualChildCount - 1;
            i6 = -1;
        } else {
            i5 = 0;
            i6 = 1;
        }
        int i17 = 0;
        while (i17 < virtualChildCount) {
            int i18 = i5 + (i6 * i17);
            View p = p(i18);
            if (p == null) {
                paddingLeft += v(i18);
                z = z3;
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i16;
            } else if (p.getVisibility() != 8) {
                int measuredWidth = p.getMeasuredWidth();
                int measuredHeight = p.getMeasuredHeight();
                a aVar = (a) p.getLayoutParams();
                int i19 = i17;
                if (z2) {
                    i8 = virtualChildCount;
                    if (((LinearLayout.LayoutParams) aVar).height != -1) {
                        i10 = p.getBaseline();
                        i11 = ((LinearLayout.LayoutParams) aVar).gravity;
                        if (i11 < 0) {
                            i11 = i16;
                        }
                        i12 = i11 & 112;
                        i9 = i16;
                        if (i12 == 16) {
                            if (i12 == 48) {
                                i13 = ((LinearLayout.LayoutParams) aVar).topMargin + paddingTop;
                                if (i10 != -1) {
                                    z = true;
                                    i13 += iArr[1] - i10;
                                }
                            } else if (i12 != 80) {
                                i13 = paddingTop;
                            } else {
                                i13 = (paddingBottom - measuredHeight) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                                if (i10 != -1) {
                                    i13 -= iArr2[2] - (p.getMeasuredHeight() - i10);
                                }
                            }
                            z = true;
                        } else {
                            z = true;
                            i13 = ((((paddingBottom2 - measuredHeight) / 2) + paddingTop) + ((LinearLayout.LayoutParams) aVar).topMargin) - ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        }
                        if (q(i18)) {
                            paddingLeft += this.l;
                        }
                        int i20 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                        i7 = paddingTop;
                        x(p, i20 + n(p), i13, measuredWidth, measuredHeight);
                        int o = i20 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + o(p);
                        i17 = i19 + m(p, i18);
                        paddingLeft = o;
                        i17++;
                        virtualChildCount = i8;
                        i16 = i9;
                        z3 = z;
                        paddingTop = i7;
                    }
                } else {
                    i8 = virtualChildCount;
                }
                i10 = -1;
                i11 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i11 < 0) {
                }
                i12 = i11 & 112;
                i9 = i16;
                if (i12 == 16) {
                }
                if (q(i18)) {
                }
                int i202 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                i7 = paddingTop;
                x(p, i202 + n(p), i13, measuredWidth, measuredHeight);
                int o2 = i202 + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + o(p);
                i17 = i19 + m(p, i18);
                paddingLeft = o2;
                i17++;
                virtualChildCount = i8;
                i16 = i9;
                z3 = z;
                paddingTop = i7;
            } else {
                i7 = paddingTop;
                i8 = virtualChildCount;
                i9 = i16;
                z = true;
            }
            i17++;
            virtualChildCount = i8;
            i16 = i9;
            z3 = z;
            paddingTop = i7;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00a1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void s(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        int paddingLeft = getPaddingLeft();
        int i9 = i3 - i;
        int paddingRight = i9 - getPaddingRight();
        int paddingRight2 = (i9 - paddingLeft) - getPaddingRight();
        int virtualChildCount = getVirtualChildCount();
        int i10 = this.e;
        int i11 = i10 & 112;
        int i12 = i10 & 8388615;
        int paddingTop = i11 != 16 ? i11 != 80 ? getPaddingTop() : ((getPaddingTop() + i4) - i2) - this.f : getPaddingTop() + (((i4 - i2) - this.f) / 2);
        int i13 = 0;
        while (i13 < virtualChildCount) {
            View p = p(i13);
            if (p == null) {
                paddingTop += v(i13);
            } else if (p.getVisibility() != 8) {
                int measuredWidth = p.getMeasuredWidth();
                int measuredHeight = p.getMeasuredHeight();
                a aVar = (a) p.getLayoutParams();
                int i14 = ((LinearLayout.LayoutParams) aVar).gravity;
                if (i14 < 0) {
                    i14 = i12;
                }
                int b = hy.b(i14, getLayoutDirection()) & 7;
                if (b == 1) {
                    i5 = ((paddingRight2 - measuredWidth) / 2) + paddingLeft + ((LinearLayout.LayoutParams) aVar).leftMargin;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                } else if (b != 5) {
                    i7 = ((LinearLayout.LayoutParams) aVar).leftMargin + paddingLeft;
                    int i15 = i7;
                    if (q(i13)) {
                        paddingTop += this.m;
                    }
                    int i16 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                    x(p, i15, i16 + n(p), measuredWidth, measuredHeight);
                    int o = i16 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + o(p);
                    i13 += m(p, i13);
                    paddingTop = o;
                    i8 = 1;
                    i13 += i8;
                } else {
                    i5 = paddingRight - measuredWidth;
                    i6 = ((LinearLayout.LayoutParams) aVar).rightMargin;
                }
                i7 = i5 - i6;
                int i152 = i7;
                if (q(i13)) {
                }
                int i162 = paddingTop + ((LinearLayout.LayoutParams) aVar).topMargin;
                x(p, i152, i162 + n(p), measuredWidth, measuredHeight);
                int o2 = i162 + measuredHeight + ((LinearLayout.LayoutParams) aVar).bottomMargin + o(p);
                i13 += m(p, i13);
                paddingTop = o2;
                i8 = 1;
                i13 += i8;
            }
            i8 = 1;
            i13 += i8;
        }
    }

    public void setBaselineAligned(boolean z) {
        this.a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.b = i;
            return;
        }
        throw new IllegalArgumentException("base aligned child index out of range (0, " + getChildCount() + ")");
    }

    public void setDividerDrawable(Drawable drawable) {
        if (drawable == this.k) {
            return;
        }
        this.k = drawable;
        if (drawable != null) {
            this.l = drawable.getIntrinsicWidth();
            this.m = drawable.getIntrinsicHeight();
        } else {
            this.l = 0;
            this.m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.o = i;
    }

    public void setGravity(int i) {
        if (this.e != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.e = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.e;
        if ((8388615 & i3) != i2) {
            this.e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.h = z;
    }

    public void setOrientation(int i) {
        if (this.d != i) {
            this.d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.n) {
            requestLayout();
        }
        this.n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.e;
        if ((i3 & 112) != i2) {
            this.e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f) {
        this.g = Math.max(0.0f, f);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public void t(View view, int i, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    /* JADX WARN: Removed duplicated region for block: B:200:0x045b  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void u(int i, int i2) {
        int[] iArr;
        int i3;
        int max;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        float f;
        int i10;
        boolean z;
        int baseline;
        int i11;
        int i12;
        int i13;
        char c;
        int i14;
        int i15;
        boolean z2;
        boolean z3;
        View view;
        int i16;
        boolean z4;
        int measuredHeight;
        int m;
        int baseline2;
        int i17;
        this.f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        if (this.i == null || this.j == null) {
            this.i = new int[4];
            this.j = new int[4];
        }
        int[] iArr2 = this.i;
        int[] iArr3 = this.j;
        iArr2[3] = -1;
        iArr2[2] = -1;
        iArr2[1] = -1;
        iArr2[0] = -1;
        iArr3[3] = -1;
        iArr3[2] = -1;
        iArr3[1] = -1;
        iArr3[0] = -1;
        boolean z5 = this.a;
        boolean z6 = this.h;
        int i18 = 1073741824;
        boolean z7 = mode == 1073741824;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        boolean z8 = false;
        int i24 = 0;
        boolean z9 = false;
        boolean z10 = true;
        float f2 = 0.0f;
        while (true) {
            iArr = iArr3;
            if (i19 >= virtualChildCount) {
                break;
            }
            View p = p(i19);
            if (p == null) {
                this.f += v(i19);
            } else if (p.getVisibility() == 8) {
                i19 += m(p, i19);
            } else {
                if (q(i19)) {
                    this.f += this.l;
                }
                a aVar = (a) p.getLayoutParams();
                float f3 = ((LinearLayout.LayoutParams) aVar).weight;
                float f4 = f2 + f3;
                if (mode == i18 && ((LinearLayout.LayoutParams) aVar).width == 0 && f3 > 0.0f) {
                    if (z7) {
                        this.f += ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin;
                    } else {
                        int i25 = this.f;
                        this.f = Math.max(i25, ((LinearLayout.LayoutParams) aVar).leftMargin + i25 + ((LinearLayout.LayoutParams) aVar).rightMargin);
                    }
                    if (z5) {
                        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                        p.measure(makeMeasureSpec, makeMeasureSpec);
                        i15 = i19;
                        z2 = z6;
                        z3 = z5;
                        view = p;
                    } else {
                        i15 = i19;
                        z2 = z6;
                        z3 = z5;
                        view = p;
                        z8 = true;
                        i16 = 1073741824;
                        if (mode2 == i16 && ((LinearLayout.LayoutParams) aVar).height == -1) {
                            z4 = true;
                            z9 = true;
                        } else {
                            z4 = false;
                        }
                        int i26 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                        measuredHeight = view.getMeasuredHeight() + i26;
                        i24 = View.combineMeasuredStates(i24, view.getMeasuredState());
                        if (z3 && (baseline2 = view.getBaseline()) != -1) {
                            i17 = ((LinearLayout.LayoutParams) aVar).gravity;
                            if (i17 < 0) {
                                i17 = this.e;
                            }
                            int i27 = (((i17 & 112) >> 4) & (-2)) >> 1;
                            iArr2[i27] = Math.max(iArr2[i27], baseline2);
                            iArr[i27] = Math.max(iArr[i27], measuredHeight - baseline2);
                        }
                        i21 = Math.max(i21, measuredHeight);
                        z10 = !z10 && ((LinearLayout.LayoutParams) aVar).height == -1;
                        if (((LinearLayout.LayoutParams) aVar).weight <= 0.0f) {
                            if (!z4) {
                                i26 = measuredHeight;
                            }
                            i23 = Math.max(i23, i26);
                        } else {
                            int i28 = i23;
                            if (!z4) {
                                i26 = measuredHeight;
                            }
                            i22 = Math.max(i22, i26);
                            i23 = i28;
                        }
                        int i29 = i15;
                        m = m(view, i29) + i29;
                        f2 = f4;
                        int i30 = m + 1;
                        iArr3 = iArr;
                        z6 = z2;
                        z5 = z3;
                        i18 = i16;
                        i19 = i30;
                    }
                } else {
                    if (((LinearLayout.LayoutParams) aVar).width != 0 || f3 <= 0.0f) {
                        c = 65534;
                        i14 = Integer.MIN_VALUE;
                    } else {
                        c = 65534;
                        ((LinearLayout.LayoutParams) aVar).width = -2;
                        i14 = 0;
                    }
                    i15 = i19;
                    int i31 = i14;
                    z2 = z6;
                    z3 = z5;
                    t(p, i15, i, f4 == 0.0f ? this.f : 0, i2, 0);
                    if (i31 != Integer.MIN_VALUE) {
                        ((LinearLayout.LayoutParams) aVar).width = i31;
                    }
                    int measuredWidth = p.getMeasuredWidth();
                    if (z7) {
                        view = p;
                        this.f += ((LinearLayout.LayoutParams) aVar).leftMargin + measuredWidth + ((LinearLayout.LayoutParams) aVar).rightMargin + o(view);
                    } else {
                        view = p;
                        int i32 = this.f;
                        this.f = Math.max(i32, i32 + measuredWidth + ((LinearLayout.LayoutParams) aVar).leftMargin + ((LinearLayout.LayoutParams) aVar).rightMargin + o(view));
                    }
                    if (z2) {
                        i20 = Math.max(measuredWidth, i20);
                    }
                }
                i16 = 1073741824;
                if (mode2 == i16) {
                }
                z4 = false;
                int i262 = ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin;
                measuredHeight = view.getMeasuredHeight() + i262;
                i24 = View.combineMeasuredStates(i24, view.getMeasuredState());
                if (z3) {
                    i17 = ((LinearLayout.LayoutParams) aVar).gravity;
                    if (i17 < 0) {
                    }
                    int i272 = (((i17 & 112) >> 4) & (-2)) >> 1;
                    iArr2[i272] = Math.max(iArr2[i272], baseline2);
                    iArr[i272] = Math.max(iArr[i272], measuredHeight - baseline2);
                }
                i21 = Math.max(i21, measuredHeight);
                if (z10) {
                }
                if (((LinearLayout.LayoutParams) aVar).weight <= 0.0f) {
                }
                int i292 = i15;
                m = m(view, i292) + i292;
                f2 = f4;
                int i302 = m + 1;
                iArr3 = iArr;
                z6 = z2;
                z5 = z3;
                i18 = i16;
                i19 = i302;
            }
            z2 = z6;
            z3 = z5;
            int i33 = i18;
            m = i19;
            i16 = i33;
            int i3022 = m + 1;
            iArr3 = iArr;
            z6 = z2;
            z5 = z3;
            i18 = i16;
            i19 = i3022;
        }
        boolean z11 = z6;
        boolean z12 = z5;
        int i34 = i21;
        int i35 = i22;
        int i36 = i23;
        int i37 = i24;
        if (this.f > 0 && q(virtualChildCount)) {
            this.f += this.l;
        }
        int i38 = iArr2[1];
        if (i38 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) {
            max = i34;
            i3 = i37;
        } else {
            i3 = i37;
            max = Math.max(i34, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i38, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
        }
        if (z11 && (mode == Integer.MIN_VALUE || mode == 0)) {
            this.f = 0;
            int i39 = 0;
            while (i39 < virtualChildCount) {
                View p2 = p(i39);
                if (p2 == null) {
                    this.f += v(i39);
                } else if (p2.getVisibility() == 8) {
                    i39 += m(p2, i39);
                } else {
                    a aVar2 = (a) p2.getLayoutParams();
                    if (z7) {
                        this.f += ((LinearLayout.LayoutParams) aVar2).leftMargin + i20 + ((LinearLayout.LayoutParams) aVar2).rightMargin + o(p2);
                    } else {
                        int i40 = this.f;
                        i13 = max;
                        this.f = Math.max(i40, i40 + i20 + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin + o(p2));
                        i39++;
                        max = i13;
                    }
                }
                i13 = max;
                i39++;
                max = i13;
            }
        }
        int i41 = max;
        int paddingLeft = this.f + getPaddingLeft() + getPaddingRight();
        this.f = paddingLeft;
        int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingLeft, getSuggestedMinimumWidth()), i, 0);
        int i42 = (16777215 & resolveSizeAndState) - this.f;
        if (z8 || (i42 != 0 && f2 > 0.0f)) {
            float f5 = this.g;
            if (f5 > 0.0f) {
                f2 = f5;
            }
            iArr2[3] = -1;
            iArr2[2] = -1;
            iArr2[1] = -1;
            iArr2[0] = -1;
            iArr[3] = -1;
            iArr[2] = -1;
            iArr[1] = -1;
            iArr[0] = -1;
            this.f = 0;
            int i43 = i35;
            int i44 = -1;
            i4 = i3;
            int i45 = 0;
            while (i45 < virtualChildCount) {
                View p3 = p(i45);
                if (p3 == null || p3.getVisibility() == 8) {
                    i8 = i42;
                    i9 = virtualChildCount;
                } else {
                    a aVar3 = (a) p3.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) aVar3).weight;
                    if (f6 > 0.0f) {
                        int i46 = (int) ((i42 * f6) / f2);
                        float f7 = f2 - f6;
                        int i47 = i42 - i46;
                        i9 = virtualChildCount;
                        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom() + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin, ((LinearLayout.LayoutParams) aVar3).height);
                        if (((LinearLayout.LayoutParams) aVar3).width == 0) {
                            i12 = 1073741824;
                            if (mode == 1073741824) {
                                if (i46 <= 0) {
                                    i46 = 0;
                                }
                                p3.measure(View.MeasureSpec.makeMeasureSpec(i46, 1073741824), childMeasureSpec);
                                i4 = View.combineMeasuredStates(i4, p3.getMeasuredState() & (-16777216));
                                f2 = f7;
                                i8 = i47;
                            }
                        } else {
                            i12 = 1073741824;
                        }
                        int measuredWidth2 = p3.getMeasuredWidth() + i46;
                        if (measuredWidth2 < 0) {
                            measuredWidth2 = 0;
                        }
                        p3.measure(View.MeasureSpec.makeMeasureSpec(measuredWidth2, i12), childMeasureSpec);
                        i4 = View.combineMeasuredStates(i4, p3.getMeasuredState() & (-16777216));
                        f2 = f7;
                        i8 = i47;
                    } else {
                        i8 = i42;
                        i9 = virtualChildCount;
                    }
                    if (z7) {
                        this.f += p3.getMeasuredWidth() + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + o(p3);
                        f = f2;
                    } else {
                        int i48 = this.f;
                        f = f2;
                        this.f = Math.max(i48, p3.getMeasuredWidth() + i48 + ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin + o(p3));
                    }
                    boolean z13 = mode2 != 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == -1;
                    int i49 = ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin;
                    int measuredHeight2 = p3.getMeasuredHeight() + i49;
                    i44 = Math.max(i44, measuredHeight2);
                    if (!z13) {
                        i49 = measuredHeight2;
                    }
                    int max2 = Math.max(i43, i49);
                    if (z10) {
                        i10 = -1;
                        if (((LinearLayout.LayoutParams) aVar3).height == -1) {
                            z = true;
                            if (z12 && (baseline = p3.getBaseline()) != i10) {
                                i11 = ((LinearLayout.LayoutParams) aVar3).gravity;
                                if (i11 < 0) {
                                    i11 = this.e;
                                }
                                int i50 = (((i11 & 112) >> 4) & (-2)) >> 1;
                                iArr2[i50] = Math.max(iArr2[i50], baseline);
                                iArr[i50] = Math.max(iArr[i50], measuredHeight2 - baseline);
                            }
                            z10 = z;
                            i43 = max2;
                            f2 = f;
                        }
                    } else {
                        i10 = -1;
                    }
                    z = false;
                    if (z12) {
                        i11 = ((LinearLayout.LayoutParams) aVar3).gravity;
                        if (i11 < 0) {
                        }
                        int i502 = (((i11 & 112) >> 4) & (-2)) >> 1;
                        iArr2[i502] = Math.max(iArr2[i502], baseline);
                        iArr[i502] = Math.max(iArr[i502], measuredHeight2 - baseline);
                    }
                    z10 = z;
                    i43 = max2;
                    f2 = f;
                }
                i45++;
                i42 = i8;
                virtualChildCount = i9;
            }
            i5 = i2;
            i6 = virtualChildCount;
            this.f += getPaddingLeft() + getPaddingRight();
            int i51 = iArr2[1];
            i41 = (i51 == -1 && iArr2[0] == -1 && iArr2[2] == -1 && iArr2[3] == -1) ? i44 : Math.max(i44, Math.max(iArr2[3], Math.max(iArr2[0], Math.max(i51, iArr2[2]))) + Math.max(iArr[3], Math.max(iArr[0], Math.max(iArr[1], iArr[2]))));
            i7 = i43;
        } else {
            i7 = Math.max(i35, i36);
            if (z11 && mode != 1073741824) {
                for (int i52 = 0; i52 < virtualChildCount; i52++) {
                    View p4 = p(i52);
                    if (p4 != null && p4.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) p4.getLayoutParams())).weight > 0.0f) {
                        p4.measure(View.MeasureSpec.makeMeasureSpec(i20, 1073741824), View.MeasureSpec.makeMeasureSpec(p4.getMeasuredHeight(), 1073741824));
                    }
                }
            }
            i5 = i2;
            i6 = virtualChildCount;
            i4 = i3;
        }
        if (z10 || mode2 == 1073741824) {
            i7 = i41;
        }
        setMeasuredDimension(resolveSizeAndState | ((-16777216) & i4), View.resolveSizeAndState(Math.max(i7 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i5, i4 << 16));
        if (z9) {
            h(i6, i);
        }
    }

    public int v(int i) {
        return 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:157:0x031c, code lost:
    
        if (((android.widget.LinearLayout.LayoutParams) r14).width == (-1)) goto L148;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void w(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        View view;
        int max;
        boolean z;
        this.f = 0;
        int virtualChildCount = getVirtualChildCount();
        int mode = View.MeasureSpec.getMode(i);
        int mode2 = View.MeasureSpec.getMode(i2);
        int i19 = this.b;
        boolean z2 = this.h;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        int i23 = 0;
        int i24 = 0;
        int i25 = 0;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = true;
        float f = 0.0f;
        while (true) {
            int i26 = 8;
            int i27 = i23;
            if (i25 >= virtualChildCount) {
                int i28 = i20;
                int i29 = i22;
                int i30 = i24;
                int i31 = mode2;
                int i32 = i21;
                int i33 = virtualChildCount;
                if (this.f > 0) {
                    i3 = i33;
                    if (q(i3)) {
                        this.f += this.m;
                    }
                } else {
                    i3 = i33;
                }
                if (z2 && (i31 == Integer.MIN_VALUE || i31 == 0)) {
                    this.f = 0;
                    int i34 = 0;
                    while (i34 < i3) {
                        View p = p(i34);
                        if (p == null) {
                            this.f += v(i34);
                        } else if (p.getVisibility() == i26) {
                            i34 += m(p, i34);
                        } else {
                            a aVar = (a) p.getLayoutParams();
                            int i35 = this.f;
                            this.f = Math.max(i35, i35 + i29 + ((LinearLayout.LayoutParams) aVar).topMargin + ((LinearLayout.LayoutParams) aVar).bottomMargin + o(p));
                        }
                        i34++;
                        i26 = 8;
                    }
                }
                int paddingTop = this.f + getPaddingTop() + getPaddingBottom();
                this.f = paddingTop;
                int resolveSizeAndState = View.resolveSizeAndState(Math.max(paddingTop, getSuggestedMinimumHeight()), i2, 0);
                int i36 = (16777215 & resolveSizeAndState) - this.f;
                if (z3 || (i36 != 0 && f > 0.0f)) {
                    float f2 = this.g;
                    if (f2 > 0.0f) {
                        f = f2;
                    }
                    this.f = 0;
                    int i37 = i36;
                    int i38 = i30;
                    i4 = i28;
                    int i39 = 0;
                    while (i39 < i3) {
                        View p2 = p(i39);
                        if (p2.getVisibility() == 8) {
                            i7 = i37;
                        } else {
                            a aVar2 = (a) p2.getLayoutParams();
                            float f3 = ((LinearLayout.LayoutParams) aVar2).weight;
                            if (f3 > 0.0f) {
                                int i40 = (int) ((i37 * f3) / f);
                                float f4 = f - f3;
                                i7 = i37 - i40;
                                int childMeasureSpec = ViewGroup.getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight() + ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin, ((LinearLayout.LayoutParams) aVar2).width);
                                if (((LinearLayout.LayoutParams) aVar2).height == 0) {
                                    i10 = 1073741824;
                                    if (i31 == 1073741824) {
                                        if (i40 <= 0) {
                                            i40 = 0;
                                        }
                                        p2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(i40, 1073741824));
                                        i4 = View.combineMeasuredStates(i4, p2.getMeasuredState() & (-256));
                                        f = f4;
                                    }
                                } else {
                                    i10 = 1073741824;
                                }
                                int measuredHeight = p2.getMeasuredHeight() + i40;
                                if (measuredHeight < 0) {
                                    measuredHeight = 0;
                                }
                                p2.measure(childMeasureSpec, View.MeasureSpec.makeMeasureSpec(measuredHeight, i10));
                                i4 = View.combineMeasuredStates(i4, p2.getMeasuredState() & (-256));
                                f = f4;
                            } else {
                                i7 = i37;
                            }
                            int i41 = ((LinearLayout.LayoutParams) aVar2).leftMargin + ((LinearLayout.LayoutParams) aVar2).rightMargin;
                            int measuredWidth = p2.getMeasuredWidth() + i41;
                            i32 = Math.max(i32, measuredWidth);
                            float f5 = f;
                            if (mode != 1073741824) {
                                i8 = i4;
                                i9 = -1;
                            } else {
                                i8 = i4;
                                i9 = -1;
                            }
                            i41 = measuredWidth;
                            int max2 = Math.max(i38, i41);
                            boolean z6 = z5 && ((LinearLayout.LayoutParams) aVar2).width == i9;
                            int i42 = this.f;
                            this.f = Math.max(i42, p2.getMeasuredHeight() + i42 + ((LinearLayout.LayoutParams) aVar2).topMargin + ((LinearLayout.LayoutParams) aVar2).bottomMargin + o(p2));
                            z5 = z6;
                            i4 = i8;
                            i38 = max2;
                            f = f5;
                        }
                        i39++;
                        i37 = i7;
                    }
                    i5 = i;
                    this.f += getPaddingTop() + getPaddingBottom();
                    i6 = i38;
                } else {
                    i6 = Math.max(i30, i27);
                    if (z2 && i31 != 1073741824) {
                        for (int i43 = 0; i43 < i3; i43++) {
                            View p3 = p(i43);
                            if (p3 != null && p3.getVisibility() != 8 && ((LinearLayout.LayoutParams) ((a) p3.getLayoutParams())).weight > 0.0f) {
                                p3.measure(View.MeasureSpec.makeMeasureSpec(p3.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(i29, 1073741824));
                            }
                        }
                    }
                    i5 = i;
                    i4 = i28;
                }
                if (z5 || mode == 1073741824) {
                    i6 = i32;
                }
                setMeasuredDimension(View.resolveSizeAndState(Math.max(i6 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i5, i4), resolveSizeAndState);
                if (z4) {
                    i(i3, i2);
                    return;
                }
                return;
            }
            View p4 = p(i25);
            if (p4 == null) {
                this.f += v(i25);
                i14 = mode2;
                i23 = i27;
                i16 = virtualChildCount;
            } else {
                int i44 = i20;
                if (p4.getVisibility() == 8) {
                    i25 += m(p4, i25);
                    i23 = i27;
                    i20 = i44;
                    i16 = virtualChildCount;
                    i14 = mode2;
                } else {
                    if (q(i25)) {
                        this.f += this.m;
                    }
                    a aVar3 = (a) p4.getLayoutParams();
                    float f6 = ((LinearLayout.LayoutParams) aVar3).weight;
                    float f7 = f + f6;
                    if (mode2 == 1073741824 && ((LinearLayout.LayoutParams) aVar3).height == 0 && f6 > 0.0f) {
                        int i45 = this.f;
                        this.f = Math.max(i45, ((LinearLayout.LayoutParams) aVar3).topMargin + i45 + ((LinearLayout.LayoutParams) aVar3).bottomMargin);
                        max = i22;
                        view = p4;
                        i17 = i24;
                        z3 = true;
                        i12 = i44;
                        i13 = i21;
                        i14 = mode2;
                        i15 = i27;
                        i16 = virtualChildCount;
                        i18 = i25;
                    } else {
                        int i46 = i21;
                        if (((LinearLayout.LayoutParams) aVar3).height != 0 || f6 <= 0.0f) {
                            i11 = Integer.MIN_VALUE;
                        } else {
                            ((LinearLayout.LayoutParams) aVar3).height = -2;
                            i11 = 0;
                        }
                        i12 = i44;
                        int i47 = i11;
                        i13 = i46;
                        int i48 = i22;
                        i14 = mode2;
                        i15 = i27;
                        i16 = virtualChildCount;
                        i17 = i24;
                        i18 = i25;
                        t(p4, i25, i, 0, i2, f7 == 0.0f ? this.f : 0);
                        if (i47 != Integer.MIN_VALUE) {
                            ((LinearLayout.LayoutParams) aVar3).height = i47;
                        }
                        int measuredHeight2 = p4.getMeasuredHeight();
                        int i49 = this.f;
                        view = p4;
                        this.f = Math.max(i49, i49 + measuredHeight2 + ((LinearLayout.LayoutParams) aVar3).topMargin + ((LinearLayout.LayoutParams) aVar3).bottomMargin + o(view));
                        max = z2 ? Math.max(measuredHeight2, i48) : i48;
                    }
                    if (i19 >= 0 && i19 == i18 + 1) {
                        this.c = this.f;
                    }
                    if (i18 < i19 && ((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                        throw new RuntimeException("A child of LinearLayout with index less than mBaselineAlignedChildIndex has weight > 0, which won't work.  Either remove the weight, or don't set mBaselineAlignedChildIndex.");
                    }
                    if (mode == 1073741824 || ((LinearLayout.LayoutParams) aVar3).width != -1) {
                        z = false;
                    } else {
                        z = true;
                        z4 = true;
                    }
                    int i50 = ((LinearLayout.LayoutParams) aVar3).leftMargin + ((LinearLayout.LayoutParams) aVar3).rightMargin;
                    int measuredWidth2 = view.getMeasuredWidth() + i50;
                    int max3 = Math.max(i13, measuredWidth2);
                    int combineMeasuredStates = View.combineMeasuredStates(i12, view.getMeasuredState());
                    z5 = z5 && ((LinearLayout.LayoutParams) aVar3).width == -1;
                    if (((LinearLayout.LayoutParams) aVar3).weight > 0.0f) {
                        if (!z) {
                            i50 = measuredWidth2;
                        }
                        i23 = Math.max(i15, i50);
                    } else {
                        if (!z) {
                            i50 = measuredWidth2;
                        }
                        i17 = Math.max(i17, i50);
                        i23 = i15;
                    }
                    int m = m(view, i18) + i18;
                    i22 = max;
                    i21 = max3;
                    f = f7;
                    i24 = i17;
                    i25 = m;
                    i20 = combineMeasuredStates;
                }
            }
            i25++;
            virtualChildCount = i16;
            mode2 = i14;
        }
    }

    public b(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = true;
        this.b = -1;
        this.c = 0;
        this.e = 8388659;
        y01 t = y01.t(context, attributeSet, mn0.v0, i, 0);
        m51.i0(this, context, mn0.v0, attributeSet, t.p(), i, 0);
        int j = t.j(mn0.x0, -1);
        if (j >= 0) {
            setOrientation(j);
        }
        int j2 = t.j(mn0.w0, -1);
        if (j2 >= 0) {
            setGravity(j2);
        }
        boolean a2 = t.a(mn0.y0, true);
        if (!a2) {
            setBaselineAligned(a2);
        }
        this.g = t.h(mn0.A0, -1.0f);
        this.b = t.j(mn0.z0, -1);
        this.h = t.a(mn0.D0, false);
        setDividerDrawable(t.g(mn0.B0));
        this.n = t.j(mn0.E0, 0);
        this.o = t.f(mn0.C0, 0);
        t.v();
    }
}
