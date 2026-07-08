package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.ContextThemeWrapper;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import android.window.OnBackInvokedCallback;
import android.window.OnBackInvokedDispatcher;
import androidx.appcompat.view.menu.am0;
import androidx.appcompat.view.menu.ay0;
import androidx.appcompat.view.menu.d3;
import androidx.appcompat.view.menu.f11;
import androidx.appcompat.view.menu.f3;
import androidx.appcompat.view.menu.hy;
import androidx.appcompat.view.menu.i3;
import androidx.appcompat.view.menu.iy0;
import androidx.appcompat.view.menu.jj;
import androidx.appcompat.view.menu.l3;
import androidx.appcompat.view.menu.m51;
import androidx.appcompat.view.menu.mc0;
import androidx.appcompat.view.menu.mn0;
import androidx.appcompat.view.menu.nc0;
import androidx.appcompat.view.menu.p61;
import androidx.appcompat.view.menu.qc0;
import androidx.appcompat.view.menu.u0;
import androidx.appcompat.view.menu.uc0;
import androidx.appcompat.view.menu.y01;
import androidx.appcompat.view.menu.yp0;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class Toolbar extends ViewGroup {
    public ColorStateList A;
    public boolean B;
    public boolean C;
    public final ArrayList D;
    public final ArrayList E;
    public final int[] F;
    public final nc0 G;
    public ArrayList H;
    public final ActionMenuView.e I;
    public androidx.appcompat.widget.d J;
    public androidx.appcompat.widget.a K;
    public f L;
    public uc0.a M;
    public mc0.a N;
    public boolean O;
    public OnBackInvokedCallback P;
    public OnBackInvokedDispatcher Q;
    public boolean R;
    public final Runnable S;
    public ActionMenuView a;
    public TextView b;
    public TextView c;
    public ImageButton d;
    public ImageView e;
    public Drawable f;
    public CharSequence g;
    public ImageButton h;
    public View i;
    public Context j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public yp0 t;
    public int u;
    public int v;
    public int w;
    public CharSequence x;
    public CharSequence y;
    public ColorStateList z;

    public class a implements ActionMenuView.e {
        public a() {
        }

        @Override // androidx.appcompat.widget.ActionMenuView.e
        public boolean onMenuItemClick(MenuItem menuItem) {
            if (Toolbar.this.G.b(menuItem)) {
                return true;
            }
            Toolbar.this.getClass();
            return false;
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Toolbar.this.K();
        }
    }

    public class c implements mc0.a {
        public c() {
        }

        @Override // androidx.appcompat.view.menu.mc0.a
        public boolean a(mc0 mc0Var, MenuItem menuItem) {
            mc0.a aVar = Toolbar.this.N;
            return aVar != null && aVar.a(mc0Var, menuItem);
        }

        @Override // androidx.appcompat.view.menu.mc0.a
        public void b(mc0 mc0Var) {
            if (!Toolbar.this.a.F()) {
                Toolbar.this.G.c(mc0Var);
            }
            mc0.a aVar = Toolbar.this.N;
            if (aVar != null) {
                aVar.b(mc0Var);
            }
        }
    }

    public class d implements View.OnClickListener {
        public d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            Toolbar.this.d();
        }
    }

    public static class e {
        public static OnBackInvokedDispatcher a(View view) {
            return view.findOnBackInvokedDispatcher();
        }

        public static OnBackInvokedCallback b(final Runnable runnable) {
            Objects.requireNonNull(runnable);
            return new OnBackInvokedCallback() { // from class: androidx.appcompat.view.menu.d11
                public final void onBackInvoked() {
                    runnable.run();
                }
            };
        }

        public static void c(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).registerOnBackInvokedCallback(1000000, (OnBackInvokedCallback) obj2);
        }

        public static void d(Object obj, Object obj2) {
            ((OnBackInvokedDispatcher) obj).unregisterOnBackInvokedCallback((OnBackInvokedCallback) obj2);
        }
    }

    public class f implements uc0 {
        public mc0 a;
        public qc0 b;

        public f() {
        }

        @Override // androidx.appcompat.view.menu.uc0
        public void b(mc0 mc0Var, boolean z) {
        }

        @Override // androidx.appcompat.view.menu.uc0
        public void c(Context context, mc0 mc0Var) {
            qc0 qc0Var;
            mc0 mc0Var2 = this.a;
            if (mc0Var2 != null && (qc0Var = this.b) != null) {
                mc0Var2.e(qc0Var);
            }
            this.a = mc0Var;
        }

        @Override // androidx.appcompat.view.menu.uc0
        public boolean e(ay0 ay0Var) {
            return false;
        }

        @Override // androidx.appcompat.view.menu.uc0
        public void f(boolean z) {
            if (this.b != null) {
                mc0 mc0Var = this.a;
                if (mc0Var != null) {
                    int size = mc0Var.size();
                    for (int i = 0; i < size; i++) {
                        if (this.a.getItem(i) == this.b) {
                            return;
                        }
                    }
                }
                h(this.a, this.b);
            }
        }

        @Override // androidx.appcompat.view.menu.uc0
        public boolean g() {
            return false;
        }

        @Override // androidx.appcompat.view.menu.uc0
        public boolean h(mc0 mc0Var, qc0 qc0Var) {
            Toolbar toolbar = Toolbar.this;
            toolbar.removeView(toolbar.i);
            Toolbar toolbar2 = Toolbar.this;
            toolbar2.removeView(toolbar2.h);
            Toolbar toolbar3 = Toolbar.this;
            toolbar3.i = null;
            toolbar3.a();
            this.b = null;
            Toolbar.this.requestLayout();
            qc0Var.q(false);
            Toolbar.this.L();
            return true;
        }

        @Override // androidx.appcompat.view.menu.uc0
        public boolean j(mc0 mc0Var, qc0 qc0Var) {
            Toolbar.this.e();
            ViewParent parent = Toolbar.this.h.getParent();
            Toolbar toolbar = Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof ViewGroup) {
                    ((ViewGroup) parent).removeView(toolbar.h);
                }
                Toolbar toolbar2 = Toolbar.this;
                toolbar2.addView(toolbar2.h);
            }
            Toolbar.this.i = qc0Var.getActionView();
            this.b = qc0Var;
            ViewParent parent2 = Toolbar.this.i.getParent();
            Toolbar toolbar3 = Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof ViewGroup) {
                    ((ViewGroup) parent2).removeView(toolbar3.i);
                }
                g generateDefaultLayoutParams = Toolbar.this.generateDefaultLayoutParams();
                Toolbar toolbar4 = Toolbar.this;
                generateDefaultLayoutParams.a = (toolbar4.n & 112) | 8388611;
                generateDefaultLayoutParams.b = 2;
                toolbar4.i.setLayoutParams(generateDefaultLayoutParams);
                Toolbar toolbar5 = Toolbar.this;
                toolbar5.addView(toolbar5.i);
            }
            Toolbar.this.E();
            Toolbar.this.requestLayout();
            qc0Var.q(true);
            Toolbar toolbar6 = Toolbar.this;
            View view = toolbar6.i;
            toolbar6.L();
            return true;
        }
    }

    public static class g extends u0 {
        public int b;

        public g(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = 0;
        }

        public void a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            ((ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public g(int i, int i2) {
            super(i, i2);
            this.b = 0;
            this.a = 8388627;
        }

        public g(g gVar) {
            super((u0) gVar);
            this.b = 0;
            this.b = gVar.b;
        }

        public g(u0 u0Var) {
            super(u0Var);
            this.b = 0;
        }

        public g(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = 0;
            a(marginLayoutParams);
        }

        public g(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = 0;
        }
    }

    public interface h {
    }

    public Toolbar(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, am0.r);
    }

    private ArrayList<MenuItem> getCurrentMenuItems() {
        ArrayList<MenuItem> arrayList = new ArrayList<>();
        Menu menu = getMenu();
        for (int i2 = 0; i2 < menu.size(); i2++) {
            arrayList.add(menu.getItem(i2));
        }
        return arrayList;
    }

    private MenuInflater getMenuInflater() {
        return new iy0(getContext());
    }

    public final int A(View view, int i2, int i3, int i4, int i5, int[] iArr) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i6 = marginLayoutParams.leftMargin - iArr[0];
        int i7 = marginLayoutParams.rightMargin - iArr[1];
        int max = Math.max(0, i6) + Math.max(0, i7);
        iArr[0] = Math.max(0, -i6);
        iArr[1] = Math.max(0, -i7);
        view.measure(ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + max + i3, marginLayoutParams.width), ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height));
        return view.getMeasuredWidth() + max;
    }

    public final void B(View view, int i2, int i3, int i4, int i5, int i6) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = ViewGroup.getChildMeasureSpec(i2, getPaddingLeft() + getPaddingRight() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i3, marginLayoutParams.width);
        int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(i4, getPaddingTop() + getPaddingBottom() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i5, marginLayoutParams.height);
        int mode = View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i6 >= 0) {
            if (mode != 0) {
                i6 = Math.min(View.MeasureSpec.getSize(childMeasureSpec2), i6);
            }
            childMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(i6, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public final void C() {
        Menu menu = getMenu();
        ArrayList<MenuItem> currentMenuItems = getCurrentMenuItems();
        this.G.a(menu, getMenuInflater());
        ArrayList<MenuItem> currentMenuItems2 = getCurrentMenuItems();
        currentMenuItems2.removeAll(currentMenuItems);
        this.H = currentMenuItems2;
    }

    public final void D() {
        removeCallbacks(this.S);
        post(this.S);
    }

    public void E() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            if (((g) childAt.getLayoutParams()).b != 2 && childAt != this.a) {
                removeViewAt(childCount);
                this.E.add(childAt);
            }
        }
    }

    public void F(int i2, int i3) {
        f();
        this.t.g(i2, i3);
    }

    public void G(Context context, int i2) {
        this.m = i2;
        TextView textView = this.c;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public void H(Context context, int i2) {
        this.l = i2;
        TextView textView = this.b;
        if (textView != null) {
            textView.setTextAppearance(context, i2);
        }
    }

    public final boolean I() {
        if (!this.O) {
            return false;
        }
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = getChildAt(i2);
            if (J(childAt) && childAt.getMeasuredWidth() > 0 && childAt.getMeasuredHeight() > 0) {
                return false;
            }
        }
        return true;
    }

    public final boolean J(View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public boolean K() {
        ActionMenuView actionMenuView = this.a;
        return actionMenuView != null && actionMenuView.K();
    }

    public void L() {
        OnBackInvokedDispatcher onBackInvokedDispatcher;
        if (Build.VERSION.SDK_INT >= 33) {
            OnBackInvokedDispatcher a2 = e.a(this);
            boolean z = t() && a2 != null && isAttachedToWindow() && this.R;
            if (z && this.Q == null) {
                if (this.P == null) {
                    this.P = e.b(new Runnable() { // from class: androidx.appcompat.view.menu.c11
                        @Override // java.lang.Runnable
                        public final void run() {
                            Toolbar.this.d();
                        }
                    });
                }
                e.c(a2, this.P);
                this.Q = a2;
                return;
            }
            if (z || (onBackInvokedDispatcher = this.Q) == null) {
                return;
            }
            e.d(onBackInvokedDispatcher, this.P);
            this.Q = null;
        }
    }

    public void a() {
        for (int size = this.E.size() - 1; size >= 0; size--) {
            addView((View) this.E.get(size));
        }
        this.E.clear();
    }

    public final void b(List list, int i2) {
        boolean z = getLayoutDirection() == 1;
        int childCount = getChildCount();
        int b2 = hy.b(i2, getLayoutDirection());
        list.clear();
        if (!z) {
            for (int i3 = 0; i3 < childCount; i3++) {
                View childAt = getChildAt(i3);
                g gVar = (g) childAt.getLayoutParams();
                if (gVar.b == 0 && J(childAt) && n(gVar.a) == b2) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i4 = childCount - 1; i4 >= 0; i4--) {
            View childAt2 = getChildAt(i4);
            g gVar2 = (g) childAt2.getLayoutParams();
            if (gVar2.b == 0 && J(childAt2) && n(gVar2.a) == b2) {
                list.add(childAt2);
            }
        }
    }

    public final void c(View view, boolean z) {
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        g generateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (g) layoutParams;
        generateDefaultLayoutParams.b = 1;
        if (!z || this.i == null) {
            addView(view, generateDefaultLayoutParams);
        } else {
            view.setLayoutParams(generateDefaultLayoutParams);
            this.E.add(view);
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof g);
    }

    public void d() {
        f fVar = this.L;
        qc0 qc0Var = fVar == null ? null : fVar.b;
        if (qc0Var != null) {
            qc0Var.collapseActionView();
        }
    }

    public void e() {
        if (this.h == null) {
            d3 d3Var = new d3(getContext(), null, am0.q);
            this.h = d3Var;
            d3Var.setImageDrawable(this.f);
            this.h.setContentDescription(this.g);
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = (this.n & 112) | 8388611;
            generateDefaultLayoutParams.b = 2;
            this.h.setLayoutParams(generateDefaultLayoutParams);
            this.h.setOnClickListener(new d());
        }
    }

    public final void f() {
        if (this.t == null) {
            this.t = new yp0();
        }
    }

    public final void g() {
        if (this.e == null) {
            this.e = new f3(getContext());
        }
    }

    public CharSequence getCollapseContentDescription() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getCollapseIcon() {
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        yp0 yp0Var = this.t;
        if (yp0Var != null) {
            return yp0Var.a();
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i2 = this.v;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        yp0 yp0Var = this.t;
        if (yp0Var != null) {
            return yp0Var.b();
        }
        return 0;
    }

    public int getContentInsetRight() {
        yp0 yp0Var = this.t;
        if (yp0Var != null) {
            return yp0Var.c();
        }
        return 0;
    }

    public int getContentInsetStart() {
        yp0 yp0Var = this.t;
        if (yp0Var != null) {
            return yp0Var.d();
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i2 = this.u;
        return i2 != Integer.MIN_VALUE ? i2 : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        mc0 I;
        ActionMenuView actionMenuView = this.a;
        return (actionMenuView == null || (I = actionMenuView.I()) == null || !I.hasVisibleItems()) ? getContentInsetEnd() : Math.max(getContentInsetEnd(), Math.max(this.v, 0));
    }

    public int getCurrentContentInsetLeft() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return getLayoutDirection() == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? Math.max(getContentInsetStart(), Math.max(this.u, 0)) : getContentInsetStart();
    }

    public Drawable getLogo() {
        ImageView imageView = this.e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public CharSequence getLogoDescription() {
        ImageView imageView = this.e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public Menu getMenu() {
        h();
        return this.a.getMenu();
    }

    public View getNavButtonView() {
        return this.d;
    }

    public CharSequence getNavigationContentDescription() {
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public Drawable getNavigationIcon() {
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public androidx.appcompat.widget.a getOuterActionMenuPresenter() {
        return this.K;
    }

    public Drawable getOverflowIcon() {
        h();
        return this.a.getOverflowIcon();
    }

    public Context getPopupContext() {
        return this.j;
    }

    public int getPopupTheme() {
        return this.k;
    }

    public CharSequence getSubtitle() {
        return this.y;
    }

    public final TextView getSubtitleTextView() {
        return this.c;
    }

    public CharSequence getTitle() {
        return this.x;
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public final TextView getTitleTextView() {
        return this.b;
    }

    public jj getWrapper() {
        if (this.J == null) {
            this.J = new androidx.appcompat.widget.d(this, true);
        }
        return this.J;
    }

    public final void h() {
        i();
        if (this.a.I() == null) {
            mc0 mc0Var = (mc0) this.a.getMenu();
            if (this.L == null) {
                this.L = new f();
            }
            this.a.setExpandedActionViewsExclusive(true);
            mc0Var.b(this.L, this.j);
            L();
        }
    }

    public final void i() {
        if (this.a == null) {
            ActionMenuView actionMenuView = new ActionMenuView(getContext());
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.a.setOnMenuItemClickListener(this.I);
            this.a.J(this.M, new c());
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = (this.n & 112) | 8388613;
            this.a.setLayoutParams(generateDefaultLayoutParams);
            c(this.a, false);
        }
    }

    public final void j() {
        if (this.d == null) {
            this.d = new d3(getContext(), null, am0.q);
            g generateDefaultLayoutParams = generateDefaultLayoutParams();
            generateDefaultLayoutParams.a = (this.n & 112) | 8388611;
            this.d.setLayoutParams(generateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public g generateDefaultLayoutParams() {
        return new g(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: l, reason: merged with bridge method [inline-methods] */
    public g generateLayoutParams(AttributeSet attributeSet) {
        return new g(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: m, reason: merged with bridge method [inline-methods] */
    public g generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof g ? new g((g) layoutParams) : layoutParams instanceof u0 ? new g((u0) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new g((ViewGroup.MarginLayoutParams) layoutParams) : new g(layoutParams);
    }

    public final int n(int i2) {
        int layoutDirection = getLayoutDirection();
        int b2 = hy.b(i2, layoutDirection) & 7;
        return (b2 == 1 || b2 == 3 || b2 == 5) ? b2 : layoutDirection == 1 ? 5 : 3;
    }

    public final int o(View view, int i2) {
        g gVar = (g) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i3 = i2 > 0 ? (measuredHeight - i2) / 2 : 0;
        int p = p(gVar.a);
        if (p == 48) {
            return getPaddingTop() - i3;
        }
        if (p == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((ViewGroup.MarginLayoutParams) gVar).bottomMargin) - i3;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int i4 = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i5 = ((ViewGroup.MarginLayoutParams) gVar).topMargin;
        if (i4 < i5) {
            i4 = i5;
        } else {
            int i6 = (((height - paddingBottom) - measuredHeight) - i4) - paddingTop;
            int i7 = ((ViewGroup.MarginLayoutParams) gVar).bottomMargin;
            if (i6 < i7) {
                i4 = Math.max(0, i4 - (i7 - i6));
            }
        }
        return paddingTop + i4;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        L();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.S);
        L();
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean onHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !onHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:109:0x01a5  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00cb  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x02a1 A[LOOP:0: B:41:0x029f->B:42:0x02a1, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x02c3 A[LOOP:1: B:45:0x02c1->B:46:0x02c3, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x02fc A[LOOP:2: B:54:0x02fa->B:55:0x02fc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0133  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0227  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        int i6;
        int i7;
        boolean J;
        boolean J2;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int paddingTop;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19;
        int size;
        int i20;
        int i21;
        int size2;
        int i22;
        int i23;
        int size3;
        boolean z2 = getLayoutDirection() == 1;
        int width = getWidth();
        int height = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingRight = getPaddingRight();
        int paddingTop2 = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int i24 = width - paddingRight;
        int[] iArr = this.F;
        iArr[1] = 0;
        iArr[0] = 0;
        int y = m51.y(this);
        int min = y >= 0 ? Math.min(y, i5 - i3) : 0;
        if (!J(this.d)) {
            i6 = paddingLeft;
        } else {
            if (z2) {
                i7 = z(this.d, i24, iArr, min);
                i6 = paddingLeft;
                if (J(this.h)) {
                    if (z2) {
                        i7 = z(this.h, i7, iArr, min);
                    } else {
                        i6 = y(this.h, i6, iArr, min);
                    }
                }
                if (J(this.a)) {
                    if (z2) {
                        i6 = y(this.a, i6, iArr, min);
                    } else {
                        i7 = z(this.a, i7, iArr, min);
                    }
                }
                int currentContentInsetLeft = getCurrentContentInsetLeft();
                int currentContentInsetRight = getCurrentContentInsetRight();
                iArr[0] = Math.max(0, currentContentInsetLeft - i6);
                iArr[1] = Math.max(0, currentContentInsetRight - (i24 - i7));
                int max = Math.max(i6, currentContentInsetLeft);
                int min2 = Math.min(i7, i24 - currentContentInsetRight);
                if (J(this.i)) {
                    if (z2) {
                        min2 = z(this.i, min2, iArr, min);
                    } else {
                        max = y(this.i, max, iArr, min);
                    }
                }
                if (J(this.e)) {
                    if (z2) {
                        min2 = z(this.e, min2, iArr, min);
                    } else {
                        max = y(this.e, max, iArr, min);
                    }
                }
                J = J(this.b);
                J2 = J(this.c);
                if (J) {
                    i8 = paddingRight;
                    i9 = 0;
                } else {
                    g gVar = (g) this.b.getLayoutParams();
                    i8 = paddingRight;
                    i9 = ((ViewGroup.MarginLayoutParams) gVar).topMargin + this.b.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) gVar).bottomMargin;
                }
                if (J2) {
                    i10 = width;
                } else {
                    g gVar2 = (g) this.c.getLayoutParams();
                    i10 = width;
                    i9 += ((ViewGroup.MarginLayoutParams) gVar2).topMargin + this.c.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) gVar2).bottomMargin;
                }
                if (!J || J2) {
                    TextView textView = !J ? this.b : this.c;
                    TextView textView2 = !J2 ? this.c : this.b;
                    g gVar3 = (g) textView.getLayoutParams();
                    g gVar4 = (g) textView2.getLayoutParams();
                    boolean z3 = (!J && this.b.getMeasuredWidth() > 0) || (J2 && this.c.getMeasuredWidth() > 0);
                    i11 = this.w & 112;
                    i12 = paddingLeft;
                    if (i11 != 48) {
                        i13 = max;
                        i14 = min;
                        paddingTop = getPaddingTop() + ((ViewGroup.MarginLayoutParams) gVar3).topMargin + this.r;
                    } else if (i11 != 80) {
                        int i25 = (((height - paddingTop2) - paddingBottom) - i9) / 2;
                        int i26 = ((ViewGroup.MarginLayoutParams) gVar3).topMargin;
                        i14 = min;
                        int i27 = this.r;
                        i13 = max;
                        if (i25 < i26 + i27) {
                            i25 = i26 + i27;
                        } else {
                            int i28 = (((height - paddingBottom) - i9) - i25) - paddingTop2;
                            int i29 = ((ViewGroup.MarginLayoutParams) gVar3).bottomMargin;
                            int i30 = this.s;
                            if (i28 < i29 + i30) {
                                i25 = Math.max(0, i25 - ((((ViewGroup.MarginLayoutParams) gVar4).bottomMargin + i30) - i28));
                            }
                        }
                        paddingTop = paddingTop2 + i25;
                    } else {
                        i13 = max;
                        i14 = min;
                        paddingTop = (((height - paddingBottom) - ((ViewGroup.MarginLayoutParams) gVar4).bottomMargin) - this.s) - i9;
                    }
                    if (z2) {
                        i15 = 0;
                        int i31 = (z3 ? this.p : 0) - iArr[0];
                        max = i13 + Math.max(0, i31);
                        iArr[0] = Math.max(0, -i31);
                        if (J) {
                            g gVar5 = (g) this.b.getLayoutParams();
                            int measuredWidth = this.b.getMeasuredWidth() + max;
                            int measuredHeight = this.b.getMeasuredHeight() + paddingTop;
                            this.b.layout(max, paddingTop, measuredWidth, measuredHeight);
                            i16 = measuredWidth + this.q;
                            paddingTop = measuredHeight + ((ViewGroup.MarginLayoutParams) gVar5).bottomMargin;
                        } else {
                            i16 = max;
                        }
                        if (J2) {
                            int i32 = paddingTop + ((ViewGroup.MarginLayoutParams) ((g) this.c.getLayoutParams())).topMargin;
                            int measuredWidth2 = this.c.getMeasuredWidth() + max;
                            this.c.layout(max, i32, measuredWidth2, this.c.getMeasuredHeight() + i32);
                            i17 = measuredWidth2 + this.q;
                        } else {
                            i17 = max;
                        }
                        if (z3) {
                            max = Math.max(i16, i17);
                        }
                        b(this.D, 3);
                        size = this.D.size();
                        i20 = max;
                        for (i21 = i15; i21 < size; i21++) {
                            i20 = y((View) this.D.get(i21), i20, iArr, i14);
                        }
                        int i33 = i14;
                        b(this.D, 5);
                        size2 = this.D.size();
                        for (i22 = i15; i22 < size2; i22++) {
                            min2 = z((View) this.D.get(i22), min2, iArr, i33);
                        }
                        b(this.D, 1);
                        int s = s(this.D, iArr);
                        i23 = (i12 + (((i10 - i12) - i8) / 2)) - (s / 2);
                        int i34 = s + i23;
                        if (i23 >= i20) {
                            i20 = i34 > min2 ? i23 - (i34 - min2) : i23;
                        }
                        size3 = this.D.size();
                        while (i15 < size3) {
                            i20 = y((View) this.D.get(i15), i20, iArr, i33);
                            i15++;
                        }
                        this.D.clear();
                        return;
                    }
                    int i35 = (z3 ? this.p : 0) - iArr[1];
                    min2 -= Math.max(0, i35);
                    iArr[1] = Math.max(0, -i35);
                    if (J) {
                        g gVar6 = (g) this.b.getLayoutParams();
                        int measuredWidth3 = min2 - this.b.getMeasuredWidth();
                        int measuredHeight2 = this.b.getMeasuredHeight() + paddingTop;
                        this.b.layout(measuredWidth3, paddingTop, min2, measuredHeight2);
                        i18 = measuredWidth3 - this.q;
                        paddingTop = measuredHeight2 + ((ViewGroup.MarginLayoutParams) gVar6).bottomMargin;
                    } else {
                        i18 = min2;
                    }
                    if (J2) {
                        int i36 = paddingTop + ((ViewGroup.MarginLayoutParams) ((g) this.c.getLayoutParams())).topMargin;
                        this.c.layout(min2 - this.c.getMeasuredWidth(), i36, min2, this.c.getMeasuredHeight() + i36);
                        i19 = min2 - this.q;
                    } else {
                        i19 = min2;
                    }
                    if (z3) {
                        min2 = Math.min(i18, i19);
                    }
                    max = i13;
                } else {
                    i12 = paddingLeft;
                    i14 = min;
                }
                i15 = 0;
                b(this.D, 3);
                size = this.D.size();
                i20 = max;
                while (i21 < size) {
                }
                int i332 = i14;
                b(this.D, 5);
                size2 = this.D.size();
                while (i22 < size2) {
                }
                b(this.D, 1);
                int s2 = s(this.D, iArr);
                i23 = (i12 + (((i10 - i12) - i8) / 2)) - (s2 / 2);
                int i342 = s2 + i23;
                if (i23 >= i20) {
                }
                size3 = this.D.size();
                while (i15 < size3) {
                }
                this.D.clear();
                return;
            }
            i6 = y(this.d, paddingLeft, iArr, min);
        }
        i7 = i24;
        if (J(this.h)) {
        }
        if (J(this.a)) {
        }
        int currentContentInsetLeft2 = getCurrentContentInsetLeft();
        int currentContentInsetRight2 = getCurrentContentInsetRight();
        iArr[0] = Math.max(0, currentContentInsetLeft2 - i6);
        iArr[1] = Math.max(0, currentContentInsetRight2 - (i24 - i7));
        int max2 = Math.max(i6, currentContentInsetLeft2);
        int min22 = Math.min(i7, i24 - currentContentInsetRight2);
        if (J(this.i)) {
        }
        if (J(this.e)) {
        }
        J = J(this.b);
        J2 = J(this.c);
        if (J) {
        }
        if (J2) {
        }
        if (J) {
        }
        if (!J) {
        }
        if (!J2) {
        }
        g gVar32 = (g) textView.getLayoutParams();
        g gVar42 = (g) textView2.getLayoutParams();
        if (J) {
        }
        i11 = this.w & 112;
        i12 = paddingLeft;
        if (i11 != 48) {
        }
        if (z2) {
        }
    }

    @Override // android.view.View
    public void onMeasure(int i2, int i3) {
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int[] iArr = this.F;
        boolean a2 = p61.a(this);
        int i11 = !a2 ? 1 : 0;
        if (J(this.d)) {
            B(this.d, i2, 0, i3, 0, this.o);
            i4 = this.d.getMeasuredWidth() + q(this.d);
            i5 = Math.max(0, this.d.getMeasuredHeight() + r(this.d));
            i6 = View.combineMeasuredStates(0, this.d.getMeasuredState());
        } else {
            i4 = 0;
            i5 = 0;
            i6 = 0;
        }
        if (J(this.h)) {
            B(this.h, i2, 0, i3, 0, this.o);
            i4 = this.h.getMeasuredWidth() + q(this.h);
            i5 = Math.max(i5, this.h.getMeasuredHeight() + r(this.h));
            i6 = View.combineMeasuredStates(i6, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int max = Math.max(currentContentInsetStart, i4);
        iArr[a2 ? 1 : 0] = Math.max(0, currentContentInsetStart - i4);
        if (J(this.a)) {
            B(this.a, i2, max, i3, 0, this.o);
            i7 = this.a.getMeasuredWidth() + q(this.a);
            i5 = Math.max(i5, this.a.getMeasuredHeight() + r(this.a));
            i6 = View.combineMeasuredStates(i6, this.a.getMeasuredState());
        } else {
            i7 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int max2 = max + Math.max(currentContentInsetEnd, i7);
        iArr[i11] = Math.max(0, currentContentInsetEnd - i7);
        if (J(this.i)) {
            max2 += A(this.i, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.i.getMeasuredHeight() + r(this.i));
            i6 = View.combineMeasuredStates(i6, this.i.getMeasuredState());
        }
        if (J(this.e)) {
            max2 += A(this.e, i2, max2, i3, 0, iArr);
            i5 = Math.max(i5, this.e.getMeasuredHeight() + r(this.e));
            i6 = View.combineMeasuredStates(i6, this.e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            if (((g) childAt.getLayoutParams()).b == 0 && J(childAt)) {
                max2 += A(childAt, i2, max2, i3, 0, iArr);
                i5 = Math.max(i5, childAt.getMeasuredHeight() + r(childAt));
                i6 = View.combineMeasuredStates(i6, childAt.getMeasuredState());
            }
        }
        int i13 = this.r + this.s;
        int i14 = this.p + this.q;
        if (J(this.b)) {
            A(this.b, i2, max2 + i14, i3, i13, iArr);
            int measuredWidth = this.b.getMeasuredWidth() + q(this.b);
            i8 = this.b.getMeasuredHeight() + r(this.b);
            i9 = View.combineMeasuredStates(i6, this.b.getMeasuredState());
            i10 = measuredWidth;
        } else {
            i8 = 0;
            i9 = i6;
            i10 = 0;
        }
        if (J(this.c)) {
            i10 = Math.max(i10, A(this.c, i2, max2 + i14, i3, i8 + i13, iArr));
            i8 += this.c.getMeasuredHeight() + r(this.c);
            i9 = View.combineMeasuredStates(i9, this.c.getMeasuredState());
        }
        setMeasuredDimension(View.resolveSizeAndState(Math.max(max2 + i10 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i2, (-16777216) & i9), I() ? 0 : View.resolveSizeAndState(Math.max(Math.max(i5, i8) + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i3, i9 << 16));
    }

    @Override // android.view.View
    public void onRestoreInstanceState(Parcelable parcelable) {
        MenuItem findItem;
        if (!(parcelable instanceof i)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        i iVar = (i) parcelable;
        super.onRestoreInstanceState(iVar.a());
        ActionMenuView actionMenuView = this.a;
        mc0 I = actionMenuView != null ? actionMenuView.I() : null;
        int i2 = iVar.o;
        if (i2 != 0 && this.L != null && I != null && (findItem = I.findItem(i2)) != null) {
            findItem.expandActionView();
        }
        if (iVar.p) {
            D();
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i2) {
        super.onRtlPropertiesChanged(i2);
        f();
        this.t.f(i2 == 1);
    }

    @Override // android.view.View
    public Parcelable onSaveInstanceState() {
        qc0 qc0Var;
        i iVar = new i(super.onSaveInstanceState());
        f fVar = this.L;
        if (fVar != null && (qc0Var = fVar.b) != null) {
            iVar.o = qc0Var.getItemId();
        }
        iVar.p = x();
        return iVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean onTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !onTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public final int p(int i2) {
        int i3 = i2 & 112;
        return (i3 == 16 || i3 == 48 || i3 == 80) ? i3 : this.w & 112;
    }

    public final int q(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.getMarginStart() + marginLayoutParams.getMarginEnd();
    }

    public final int r(View view) {
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final int s(List list, int[] iArr) {
        int i2 = iArr[0];
        int i3 = iArr[1];
        int size = list.size();
        int i4 = 0;
        int i5 = 0;
        while (i4 < size) {
            View view = (View) list.get(i4);
            g gVar = (g) view.getLayoutParams();
            int i6 = ((ViewGroup.MarginLayoutParams) gVar).leftMargin - i2;
            int i7 = ((ViewGroup.MarginLayoutParams) gVar).rightMargin - i3;
            int max = Math.max(0, i6);
            int max2 = Math.max(0, i7);
            int max3 = Math.max(0, -i6);
            int max4 = Math.max(0, -i7);
            i5 += max + view.getMeasuredWidth() + max2;
            i4++;
            i3 = max4;
            i2 = max3;
        }
        return i5;
    }

    public void setBackInvokedCallbackEnabled(boolean z) {
        if (this.R != z) {
            this.R = z;
            L();
        }
    }

    public void setCollapseContentDescription(int i2) {
        setCollapseContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setCollapseIcon(int i2) {
        setCollapseIcon(i3.b(getContext(), i2));
    }

    public void setCollapsible(boolean z) {
        this.O = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.v) {
            this.v = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i2) {
        if (i2 < 0) {
            i2 = Integer.MIN_VALUE;
        }
        if (i2 != this.u) {
            this.u = i2;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i2) {
        setLogo(i3.b(getContext(), i2));
    }

    public void setLogoDescription(int i2) {
        setLogoDescription(getContext().getText(i2));
    }

    public void setNavigationContentDescription(int i2) {
        setNavigationContentDescription(i2 != 0 ? getContext().getText(i2) : null);
    }

    public void setNavigationIcon(int i2) {
        setNavigationIcon(i3.b(getContext(), i2));
    }

    public void setNavigationOnClickListener(View.OnClickListener onClickListener) {
        j();
        this.d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(h hVar) {
    }

    public void setOverflowIcon(Drawable drawable) {
        h();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i2) {
        if (this.k != i2) {
            this.k = i2;
            if (i2 == 0) {
                this.j = getContext();
            } else {
                this.j = new ContextThemeWrapper(getContext(), i2);
            }
        }
    }

    public void setSubtitle(int i2) {
        setSubtitle(getContext().getText(i2));
    }

    public void setSubtitleTextColor(int i2) {
        setSubtitleTextColor(ColorStateList.valueOf(i2));
    }

    public void setTitle(int i2) {
        setTitle(getContext().getText(i2));
    }

    public void setTitleMarginBottom(int i2) {
        this.s = i2;
        requestLayout();
    }

    public void setTitleMarginEnd(int i2) {
        this.q = i2;
        requestLayout();
    }

    public void setTitleMarginStart(int i2) {
        this.p = i2;
        requestLayout();
    }

    public void setTitleMarginTop(int i2) {
        this.r = i2;
        requestLayout();
    }

    public void setTitleTextColor(int i2) {
        setTitleTextColor(ColorStateList.valueOf(i2));
    }

    public boolean t() {
        f fVar = this.L;
        return (fVar == null || fVar.b == null) ? false : true;
    }

    public void u(int i2) {
        getMenuInflater().inflate(i2, getMenu());
    }

    public void v() {
        Iterator it = this.H.iterator();
        while (it.hasNext()) {
            getMenu().removeItem(((MenuItem) it.next()).getItemId());
        }
        C();
    }

    public final boolean w(View view) {
        return view.getParent() == this || this.E.contains(view);
    }

    public boolean x() {
        ActionMenuView actionMenuView = this.a;
        return actionMenuView != null && actionMenuView.F();
    }

    public final int y(View view, int i2, int[] iArr, int i3) {
        g gVar = (g) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) gVar).leftMargin - iArr[0];
        int max = i2 + Math.max(0, i4);
        iArr[0] = Math.max(0, -i4);
        int o = o(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max, o, max + measuredWidth, view.getMeasuredHeight() + o);
        return max + measuredWidth + ((ViewGroup.MarginLayoutParams) gVar).rightMargin;
    }

    public final int z(View view, int i2, int[] iArr, int i3) {
        g gVar = (g) view.getLayoutParams();
        int i4 = ((ViewGroup.MarginLayoutParams) gVar).rightMargin - iArr[1];
        int max = i2 - Math.max(0, i4);
        iArr[1] = Math.max(0, -i4);
        int o = o(view, i3);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(max - measuredWidth, o, max, view.getMeasuredHeight() + o);
        return max - (measuredWidth + ((ViewGroup.MarginLayoutParams) gVar).leftMargin);
    }

    public Toolbar(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.w = 8388627;
        this.D = new ArrayList();
        this.E = new ArrayList();
        this.F = new int[2];
        this.G = new nc0(new Runnable() { // from class: androidx.appcompat.view.menu.b11
            @Override // java.lang.Runnable
            public final void run() {
                Toolbar.this.v();
            }
        });
        this.H = new ArrayList();
        this.I = new a();
        this.S = new b();
        y01 t = y01.t(getContext(), attributeSet, mn0.N1, i2, 0);
        m51.i0(this, context, mn0.N1, attributeSet, t.p(), i2, 0);
        this.l = t.m(mn0.p2, 0);
        this.m = t.m(mn0.g2, 0);
        this.w = t.k(mn0.O1, this.w);
        this.n = t.k(mn0.P1, 48);
        int e2 = t.e(mn0.j2, 0);
        e2 = t.q(mn0.o2) ? t.e(mn0.o2, e2) : e2;
        this.s = e2;
        this.r = e2;
        this.q = e2;
        this.p = e2;
        int e3 = t.e(mn0.m2, -1);
        if (e3 >= 0) {
            this.p = e3;
        }
        int e4 = t.e(mn0.l2, -1);
        if (e4 >= 0) {
            this.q = e4;
        }
        int e5 = t.e(mn0.n2, -1);
        if (e5 >= 0) {
            this.r = e5;
        }
        int e6 = t.e(mn0.k2, -1);
        if (e6 >= 0) {
            this.s = e6;
        }
        this.o = t.f(mn0.a2, -1);
        int e7 = t.e(mn0.W1, Integer.MIN_VALUE);
        int e8 = t.e(mn0.S1, Integer.MIN_VALUE);
        int f2 = t.f(mn0.U1, 0);
        int f3 = t.f(mn0.V1, 0);
        f();
        this.t.e(f2, f3);
        if (e7 != Integer.MIN_VALUE || e8 != Integer.MIN_VALUE) {
            this.t.g(e7, e8);
        }
        this.u = t.e(mn0.X1, Integer.MIN_VALUE);
        this.v = t.e(mn0.T1, Integer.MIN_VALUE);
        this.f = t.g(mn0.R1);
        this.g = t.o(mn0.Q1);
        CharSequence o = t.o(mn0.i2);
        if (!TextUtils.isEmpty(o)) {
            setTitle(o);
        }
        CharSequence o2 = t.o(mn0.f2);
        if (!TextUtils.isEmpty(o2)) {
            setSubtitle(o2);
        }
        this.j = getContext();
        setPopupTheme(t.m(mn0.e2, 0));
        Drawable g2 = t.g(mn0.d2);
        if (g2 != null) {
            setNavigationIcon(g2);
        }
        CharSequence o3 = t.o(mn0.c2);
        if (!TextUtils.isEmpty(o3)) {
            setNavigationContentDescription(o3);
        }
        Drawable g3 = t.g(mn0.Y1);
        if (g3 != null) {
            setLogo(g3);
        }
        CharSequence o4 = t.o(mn0.Z1);
        if (!TextUtils.isEmpty(o4)) {
            setLogoDescription(o4);
        }
        if (t.q(mn0.q2)) {
            setTitleTextColor(t.c(mn0.q2));
        }
        if (t.q(mn0.h2)) {
            setSubtitleTextColor(t.c(mn0.h2));
        }
        if (t.q(mn0.b2)) {
            u(t.m(mn0.b2, 0));
        }
        t.v();
    }

    public void setCollapseContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            e();
        }
        ImageButton imageButton = this.h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(Drawable drawable) {
        if (drawable != null) {
            e();
            this.h.setImageDrawable(drawable);
        } else {
            ImageButton imageButton = this.h;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f);
            }
        }
    }

    public void setLogo(Drawable drawable) {
        if (drawable != null) {
            g();
            if (!w(this.e)) {
                c(this.e, true);
            }
        } else {
            ImageView imageView = this.e;
            if (imageView != null && w(imageView)) {
                removeView(this.e);
                this.E.remove(this.e);
            }
        }
        ImageView imageView2 = this.e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            g();
        }
        ImageView imageView = this.e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(CharSequence charSequence) {
        if (!TextUtils.isEmpty(charSequence)) {
            j();
        }
        ImageButton imageButton = this.d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
            f11.a(this.d, charSequence);
        }
    }

    public void setNavigationIcon(Drawable drawable) {
        if (drawable != null) {
            j();
            if (!w(this.d)) {
                c(this.d, true);
            }
        } else {
            ImageButton imageButton = this.d;
            if (imageButton != null && w(imageButton)) {
                removeView(this.d);
                this.E.remove(this.d);
            }
        }
        ImageButton imageButton2 = this.d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setSubtitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.c;
            if (textView != null && w(textView)) {
                removeView(this.c);
                this.E.remove(this.c);
            }
        } else {
            if (this.c == null) {
                Context context = getContext();
                l3 l3Var = new l3(context);
                this.c = l3Var;
                l3Var.setSingleLine();
                this.c.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.m;
                if (i2 != 0) {
                    this.c.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.c.setTextColor(colorStateList);
                }
            }
            if (!w(this.c)) {
                c(this.c, true);
            }
        }
        TextView textView2 = this.c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setSubtitleTextColor(ColorStateList colorStateList) {
        this.A = colorStateList;
        TextView textView = this.c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(CharSequence charSequence) {
        if (TextUtils.isEmpty(charSequence)) {
            TextView textView = this.b;
            if (textView != null && w(textView)) {
                removeView(this.b);
                this.E.remove(this.b);
            }
        } else {
            if (this.b == null) {
                Context context = getContext();
                l3 l3Var = new l3(context);
                this.b = l3Var;
                l3Var.setSingleLine();
                this.b.setEllipsize(TextUtils.TruncateAt.END);
                int i2 = this.l;
                if (i2 != 0) {
                    this.b.setTextAppearance(context, i2);
                }
                ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!w(this.b)) {
                c(this.b, true);
            }
        }
        TextView textView2 = this.b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setTitleTextColor(ColorStateList colorStateList) {
        this.z = colorStateList;
        TextView textView = this.b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public static class i extends androidx.appcompat.view.menu.c {
        public static final Parcelable.Creator<i> CREATOR = new a();
        public int o;
        public boolean p;

        public class a implements Parcelable.ClassLoaderCreator {
            @Override // android.os.Parcelable.Creator
            /* renamed from: a, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel) {
                return new i(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* renamed from: b, reason: merged with bridge method [inline-methods] */
            public i createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new i(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* renamed from: c, reason: merged with bridge method [inline-methods] */
            public i[] newArray(int i) {
                return new i[i];
            }
        }

        public i(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.o = parcel.readInt();
            this.p = parcel.readInt() != 0;
        }

        @Override // androidx.appcompat.view.menu.c, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.o);
            parcel.writeInt(this.p ? 1 : 0);
        }

        public i(Parcelable parcelable) {
            super(parcelable);
        }
    }
}
