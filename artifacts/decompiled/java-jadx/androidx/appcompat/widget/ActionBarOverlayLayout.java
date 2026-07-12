package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageParser;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.am0;
import androidx.appcompat.view.menu.h50;
import androidx.appcompat.view.menu.jj;
import androidx.appcompat.view.menu.km0;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.se0;
import androidx.appcompat.view.menu.te0;
import androidx.appcompat.view.menu.ue0;
import androidx.appcompat.view.menu.y81;

@SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends ViewGroup implements se0, te0 {
    public static final int[] F = {am0.b, R.attr.windowContentOverlay};
    public static final y81 G = new y81.b().d(h50.b(0, 1, 0, 1)).a();
    public static final Rect H = new Rect();
    public final AnimatorListenerAdapter A;
    public final Runnable B;
    public final Runnable C;
    public final ue0 D;
    public final f E;
    public int a;
    public int b;
    public ContentFrameLayout c;
    public ActionBarContainer d;
    public jj e;
    public Drawable f;
    public boolean g;
    public boolean h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public final Rect m;
    public final Rect n;
    public final Rect o;
    public final Rect p;
    public final Rect q;
    public final Rect r;
    public final Rect s;
    public final Rect t;
    public y81 u;
    public y81 v;
    public y81 w;
    public y81 x;
    public OverScroller y;
    public ViewPropertyAnimator z;

    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.z = null;
            actionBarOverlayLayout.j = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.z = null;
            actionBarOverlayLayout.j = false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.z = actionBarOverlayLayout.d.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.A);
        }
    }

    public class c implements Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.m();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.z = actionBarOverlayLayout.d.animate().translationY(-ActionBarOverlayLayout.this.d.getHeight()).setListener(ActionBarOverlayLayout.this.A);
        }
    }

    public interface d {
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i, int i2) {
            super(i, i2);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public static final class f extends View {
        public f(Context context) {
            super(context);
            setWillNotDraw(true);
        }

        @Override // android.view.View
        public int getWindowSystemUiVisibility() {
            return 0;
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.m = new Rect();
        this.n = new Rect();
        this.o = new Rect();
        this.p = new Rect();
        this.q = new Rect();
        this.r = new Rect();
        this.s = new Rect();
        this.t = new Rect();
        y81 y81Var = y81.b;
        this.u = y81Var;
        this.v = y81Var;
        this.w = y81Var;
        this.x = y81Var;
        this.A = new a();
        this.B = new b();
        this.C = new c();
        n(context);
        this.D = new ue0(this);
        f fVar = new f(context);
        this.E = fVar;
        addView(fVar);
    }

    @Override // androidx.appcompat.view.menu.se0
    public void a(View view, View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // androidx.appcompat.view.menu.se0
    public void b(View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.appcompat.view.menu.se0
    public void c(View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.view.menu.te0
    public void d(View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        e(view, i, i2, i3, i4, i5);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f != null) {
            int bottom = this.d.getVisibility() == 0 ? (int) (this.d.getBottom() + this.d.getTranslationY() + 0.5f) : 0;
            this.f.setBounds(0, bottom, getWidth(), this.f.getIntrinsicHeight() + bottom);
            this.f.draw(canvas);
        }
    }

    @Override // androidx.appcompat.view.menu.se0
    public void e(View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // androidx.appcompat.view.menu.se0
    public boolean f(View view, View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public boolean fitSystemWindows(Rect rect) {
        return super.fitSystemWindows(rect);
    }

    public final void g() {
        m();
        this.C.run();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.D.a();
    }

    public CharSequence getTitle() {
        q();
        return this.e.getTitle();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0021  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x002c  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0016  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(View view, Rect rect, boolean z, boolean z2, boolean z3, boolean z4) {
        boolean z5;
        e eVar = (e) view.getLayoutParams();
        if (z) {
            int i = ((ViewGroup.MarginLayoutParams) eVar).leftMargin;
            int i2 = rect.left;
            if (i != i2) {
                ((ViewGroup.MarginLayoutParams) eVar).leftMargin = i2;
                z5 = true;
                if (z2) {
                    int i3 = ((ViewGroup.MarginLayoutParams) eVar).topMargin;
                    int i4 = rect.top;
                    if (i3 != i4) {
                        ((ViewGroup.MarginLayoutParams) eVar).topMargin = i4;
                        z5 = true;
                    }
                }
                if (z4) {
                    int i5 = ((ViewGroup.MarginLayoutParams) eVar).rightMargin;
                    int i6 = rect.right;
                    if (i5 != i6) {
                        ((ViewGroup.MarginLayoutParams) eVar).rightMargin = i6;
                        z5 = true;
                    }
                }
                if (z3) {
                    int i7 = ((ViewGroup.MarginLayoutParams) eVar).bottomMargin;
                    int i8 = rect.bottom;
                    if (i7 != i8) {
                        ((ViewGroup.MarginLayoutParams) eVar).bottomMargin = i8;
                        return true;
                    }
                }
                return z5;
            }
        }
        z5 = false;
        if (z2) {
        }
        if (z4) {
        }
        if (z3) {
        }
        return z5;
    }

    public final boolean i() {
        m51.e(this.E, G, this.p);
        return !this.p.equals(H);
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final jj l(View view) {
        if (view instanceof jj) {
            return (jj) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    public void m() {
        removeCallbacks(this.B);
        removeCallbacks(this.C);
        ViewPropertyAnimator viewPropertyAnimator = this.z;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void n(Context context) {
        TypedArray obtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(F);
        this.a = obtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = obtainStyledAttributes.getDrawable(1);
        this.f = drawable;
        setWillNotDraw(drawable == null);
        obtainStyledAttributes.recycle();
        this.y = new OverScroller(context);
    }

    public final void o() {
        m();
        postDelayed(this.C, 600L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x005b, code lost:
    
        if (r0 != false) goto L9;
     */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        q();
        y81 u = y81.u(windowInsets, this);
        boolean h = h(this.d, new Rect(u.i(), u.k(), u.j(), u.h()), true, true, false, true);
        m51.e(this, u, this.m);
        Rect rect = this.m;
        y81 l = u.l(rect.left, rect.top, rect.right, rect.bottom);
        this.u = l;
        if (!this.v.equals(l)) {
            this.v = this.u;
            h = true;
        }
        if (!this.n.equals(this.m)) {
            this.n.set(this.m);
        }
        requestLayout();
        return u.a().c().b().s();
    }

    @Override // android.view.View
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        n(getContext());
        m51.h0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i7 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        q();
        measureChildWithMargins(this.d, i, 0, i2, 0);
        e eVar = (e) this.d.getLayoutParams();
        int max = Math.max(0, this.d.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int max2 = Math.max(0, this.d.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int combineMeasuredStates = View.combineMeasuredStates(0, this.d.getMeasuredState());
        boolean z = (m51.H(this) & PackageParser.PARSE_COLLECT_CERTIFICATES) != 0;
        if (z) {
            measuredHeight = this.a;
            if (this.h && this.d.getTabContainer() != null) {
                measuredHeight += this.a;
            }
        } else {
            measuredHeight = this.d.getVisibility() != 8 ? this.d.getMeasuredHeight() : 0;
        }
        this.o.set(this.m);
        this.w = this.u;
        if (this.g || z || !i()) {
            this.w = new y81.b(this.w).d(h50.b(this.w.i(), this.w.k() + measuredHeight, this.w.j(), this.w.h())).a();
        } else {
            Rect rect = this.o;
            rect.top += measuredHeight;
            rect.bottom = rect.bottom;
            this.w = this.w.l(0, measuredHeight, 0, 0);
        }
        h(this.c, this.o, true, true, true, true);
        if (!this.x.equals(this.w)) {
            y81 y81Var = this.w;
            this.x = y81Var;
            m51.f(this.c, y81Var);
        }
        measureChildWithMargins(this.c, i, 0, i2, 0);
        e eVar2 = (e) this.c.getLayoutParams();
        int max3 = Math.max(max, this.c.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int max4 = Math.max(max2, this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int combineMeasuredStates2 = View.combineMeasuredStates(combineMeasuredStates, this.c.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i, combineMeasuredStates2), View.resolveSizeAndState(Math.max(max4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i2, combineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedFling(View view, float f2, float f3, boolean z) {
        if (!this.i || !z) {
            return false;
        }
        if (s(f3)) {
            g();
        } else {
            r();
        }
        this.j = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onNestedPreFling(View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedPreScroll(View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScroll(View view, int i, int i2, int i3, int i4) {
        int i5 = this.k + i2;
        this.k = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onNestedScrollAccepted(View view, View view2, int i) {
        this.D.b(view, view2, i);
        this.k = getActionBarHideOffset();
        m();
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean onStartNestedScroll(View view, View view2, int i) {
        if ((i & 2) == 0 || this.d.getVisibility() != 0) {
            return false;
        }
        return this.i;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void onStopNestedScroll(View view) {
        if (!this.i || this.j) {
            return;
        }
        if (this.k <= this.d.getHeight()) {
            p();
        } else {
            o();
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        q();
        this.l = i;
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
    }

    public final void p() {
        m();
        postDelayed(this.B, 600L);
    }

    public void q() {
        if (this.c == null) {
            this.c = (ContentFrameLayout) findViewById(km0.b);
            this.d = (ActionBarContainer) findViewById(km0.c);
            this.e = l(findViewById(km0.a));
        }
    }

    public final void r() {
        m();
        this.B.run();
    }

    public final boolean s(float f2) {
        this.y.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.y.getFinalY() > this.d.getHeight();
    }

    public void setActionBarHideOffset(int i) {
        m();
        this.d.setTranslationY(-Math.max(0, Math.min(i, this.d.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        if (getWindowToken() != null) {
            throw null;
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.h = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.i) {
            this.i = z;
            if (z) {
                return;
            }
            m();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        q();
        this.e.setIcon(i);
    }

    public void setLogo(int i) {
        q();
        this.e.c(i);
    }

    public void setOverlayMode(boolean z) {
        this.g = z;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    public void setWindowCallback(Window.Callback callback) {
        q();
        this.e.b(callback);
    }

    public void setWindowTitle(CharSequence charSequence) {
        q();
        this.e.a(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        q();
        this.e.setIcon(drawable);
    }
}
