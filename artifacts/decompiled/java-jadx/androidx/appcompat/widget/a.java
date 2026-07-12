package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.ActionMenuItemView;
import androidx.appcompat.view.menu.am0;
import androidx.appcompat.view.menu.ay0;
import androidx.appcompat.view.menu.c8;
import androidx.appcompat.view.menu.eu0;
import androidx.appcompat.view.menu.f11;
import androidx.appcompat.view.menu.f3;
import androidx.appcompat.view.menu.mc0;
import androidx.appcompat.view.menu.om;
import androidx.appcompat.view.menu.qc0;
import androidx.appcompat.view.menu.sc0;
import androidx.appcompat.view.menu.uc0;
import androidx.appcompat.view.menu.w0;
import androidx.appcompat.view.menu.wc0;
import androidx.appcompat.view.menu.wm0;
import androidx.appcompat.view.menu.yu;
import androidx.appcompat.widget.ActionMenuView;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class a extends c8 {
    public b A;
    public final f B;
    public int C;
    public d j;
    public Drawable k;
    public boolean l;
    public boolean m;
    public boolean n;
    public int o;
    public int p;
    public int q;
    public boolean r;
    public boolean s;
    public boolean t;
    public boolean u;
    public int v;
    public final SparseBooleanArray w;
    public e x;
    public C0035a y;
    public c z;

    /* renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    public class C0035a extends sc0 {
        public C0035a(Context context, ay0 ay0Var, View view) {
            super(context, ay0Var, view, false, am0.f);
            if (!((qc0) ay0Var.getItem()).k()) {
                View view2 = a.this.j;
                f(view2 == null ? (View) a.this.i : view2);
            }
            j(a.this.B);
        }

        @Override // androidx.appcompat.view.menu.sc0
        public void e() {
            a aVar = a.this;
            aVar.y = null;
            aVar.C = 0;
            super.e();
        }
    }

    public class b extends ActionMenuItemView.b {
        public b() {
        }

        @Override // androidx.appcompat.view.menu.ActionMenuItemView.b
        public eu0 a() {
            C0035a c0035a = a.this.y;
            if (c0035a != null) {
                return c0035a.c();
            }
            return null;
        }
    }

    public class c implements Runnable {
        public e m;

        public c(e eVar) {
            this.m = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (a.this.c != null) {
                a.this.c.c();
            }
            View view = (View) a.this.i;
            if (view != null && view.getWindowToken() != null && this.m.m()) {
                a.this.x = this.m;
            }
            a.this.z = null;
        }
    }

    public class d extends f3 implements ActionMenuView.a {

        /* renamed from: androidx.appcompat.widget.a$d$a, reason: collision with other inner class name */
        public class C0036a extends yu {
            public final /* synthetic */ a j;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0036a(View view, a aVar) {
                super(view);
                this.j = aVar;
            }

            @Override // androidx.appcompat.view.menu.yu
            public eu0 b() {
                e eVar = a.this.x;
                if (eVar == null) {
                    return null;
                }
                return eVar.c();
            }

            @Override // androidx.appcompat.view.menu.yu
            public boolean c() {
                a.this.H();
                return true;
            }

            @Override // androidx.appcompat.view.menu.yu
            public boolean d() {
                a aVar = a.this;
                if (aVar.z != null) {
                    return false;
                }
                aVar.z();
                return true;
            }
        }

        public d(Context context) {
            super(context, null, am0.e);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            f11.a(this, getContentDescription());
            setOnTouchListener(new C0036a(this, a.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean c() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            a.this.H();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            Drawable drawable = getDrawable();
            Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int max = Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                om.f(background, paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
            }
            return frame;
        }
    }

    public class e extends sc0 {
        public e(Context context, mc0 mc0Var, View view, boolean z) {
            super(context, mc0Var, view, z, am0.f);
            h(8388613);
            j(a.this.B);
        }

        @Override // androidx.appcompat.view.menu.sc0
        public void e() {
            if (a.this.c != null) {
                a.this.c.close();
            }
            a.this.x = null;
            super.e();
        }
    }

    public class f implements uc0.a {
        public f() {
        }

        @Override // androidx.appcompat.view.menu.uc0.a
        public void b(mc0 mc0Var, boolean z) {
            if (mc0Var instanceof ay0) {
                mc0Var.z().d(false);
            }
            uc0.a m = a.this.m();
            if (m != null) {
                m.b(mc0Var, z);
            }
        }

        @Override // androidx.appcompat.view.menu.uc0.a
        public boolean c(mc0 mc0Var) {
            if (mc0Var == a.this.c) {
                return false;
            }
            a.this.C = ((ay0) mc0Var).getItem().getItemId();
            uc0.a m = a.this.m();
            if (m != null) {
                return m.c(mc0Var);
            }
            return false;
        }
    }

    public a(Context context) {
        super(context, wm0.c, wm0.b);
        this.w = new SparseBooleanArray();
        this.B = new f();
    }

    public boolean A() {
        C0035a c0035a = this.y;
        if (c0035a == null) {
            return false;
        }
        c0035a.b();
        return true;
    }

    public boolean B() {
        e eVar = this.x;
        return eVar != null && eVar.d();
    }

    public void C(Configuration configuration) {
        if (!this.r) {
            this.q = w0.a(this.b).c();
        }
        mc0 mc0Var = this.c;
        if (mc0Var != null) {
            mc0Var.H(true);
        }
    }

    public void D(boolean z) {
        this.u = z;
    }

    public void E(ActionMenuView actionMenuView) {
        this.i = actionMenuView;
        actionMenuView.E(this.c);
    }

    public void F(Drawable drawable) {
        d dVar = this.j;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            this.l = true;
            this.k = drawable;
        }
    }

    public void G(boolean z) {
        this.m = z;
        this.n = true;
    }

    public boolean H() {
        mc0 mc0Var;
        if (!this.m || B() || (mc0Var = this.c) == null || this.i == null || this.z != null || mc0Var.v().isEmpty()) {
            return false;
        }
        c cVar = new c(new e(this.b, this.c, this.j, true));
        this.z = cVar;
        ((View) this.i).post(cVar);
        return true;
    }

    @Override // androidx.appcompat.view.menu.c8, androidx.appcompat.view.menu.uc0
    public void b(mc0 mc0Var, boolean z) {
        w();
        super.b(mc0Var, z);
    }

    @Override // androidx.appcompat.view.menu.c8, androidx.appcompat.view.menu.uc0
    public void c(Context context, mc0 mc0Var) {
        super.c(context, mc0Var);
        Resources resources = context.getResources();
        w0 a = w0.a(context);
        if (!this.n) {
            this.m = a.d();
        }
        if (!this.t) {
            this.o = a.b();
        }
        if (!this.r) {
            this.q = a.c();
        }
        int i = this.o;
        if (this.m) {
            if (this.j == null) {
                d dVar = new d(this.a);
                this.j = dVar;
                if (this.l) {
                    dVar.setImageDrawable(this.k);
                    this.k = null;
                    this.l = false;
                }
                int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
                this.j.measure(makeMeasureSpec, makeMeasureSpec);
            }
            i -= this.j.getMeasuredWidth();
        } else {
            this.j = null;
        }
        this.p = i;
        this.v = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    @Override // androidx.appcompat.view.menu.c8
    public void d(qc0 qc0Var, wc0.a aVar) {
        aVar.d(qc0Var, 0);
        ActionMenuItemView actionMenuItemView = (ActionMenuItemView) aVar;
        actionMenuItemView.setItemInvoker((ActionMenuView) this.i);
        if (this.A == null) {
            this.A = new b();
        }
        actionMenuItemView.setPopupCallback(this.A);
    }

    @Override // androidx.appcompat.view.menu.c8, androidx.appcompat.view.menu.uc0
    public boolean e(ay0 ay0Var) {
        boolean z = false;
        if (!ay0Var.hasVisibleItems()) {
            return false;
        }
        ay0 ay0Var2 = ay0Var;
        while (ay0Var2.X() != this.c) {
            ay0Var2 = (ay0) ay0Var2.X();
        }
        View x = x(ay0Var2.getItem());
        if (x == null) {
            return false;
        }
        this.C = ay0Var.getItem().getItemId();
        int size = ay0Var.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                break;
            }
            MenuItem item = ay0Var.getItem(i);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i++;
        }
        C0035a c0035a = new C0035a(this.b, ay0Var, x);
        this.y = c0035a;
        c0035a.g(z);
        this.y.k();
        super.e(ay0Var);
        return true;
    }

    @Override // androidx.appcompat.view.menu.c8, androidx.appcompat.view.menu.uc0
    public void f(boolean z) {
        int size;
        super.f(z);
        ((View) this.i).requestLayout();
        mc0 mc0Var = this.c;
        if (mc0Var != null) {
            ArrayList r = mc0Var.r();
            int size2 = r.size();
            for (int i = 0; i < size2; i++) {
                ((qc0) r.get(i)).g();
            }
        }
        mc0 mc0Var2 = this.c;
        ArrayList v = mc0Var2 != null ? mc0Var2.v() : null;
        if (!this.m || v == null || ((size = v.size()) != 1 ? size <= 0 : !(!((qc0) v.get(0)).isActionViewExpanded()))) {
            d dVar = this.j;
            if (dVar != null) {
                Object parent = dVar.getParent();
                Object obj = this.i;
                if (parent == obj) {
                    ((ViewGroup) obj).removeView(this.j);
                }
            }
        } else {
            if (this.j == null) {
                this.j = new d(this.a);
            }
            ViewGroup viewGroup = (ViewGroup) this.j.getParent();
            if (viewGroup != this.i) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.j);
                }
                ActionMenuView actionMenuView = (ActionMenuView) this.i;
                actionMenuView.addView(this.j, actionMenuView.C());
            }
        }
        ((ActionMenuView) this.i).setOverflowReserved(this.m);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0 */
    /* JADX WARN: Type inference failed for: r3v1, types: [int] */
    /* JADX WARN: Type inference failed for: r3v12 */
    @Override // androidx.appcompat.view.menu.uc0
    public boolean g() {
        ArrayList arrayList;
        int i;
        int i2;
        int i3;
        boolean z;
        int i4;
        a aVar = this;
        mc0 mc0Var = aVar.c;
        View view = null;
        ?? r3 = 0;
        if (mc0Var != null) {
            arrayList = mc0Var.A();
            i = arrayList.size();
        } else {
            arrayList = null;
            i = 0;
        }
        int i5 = aVar.q;
        int i6 = aVar.p;
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        ViewGroup viewGroup = (ViewGroup) aVar.i;
        boolean z2 = false;
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < i; i9++) {
            qc0 qc0Var = (qc0) arrayList.get(i9);
            if (qc0Var.n()) {
                i7++;
            } else if (qc0Var.m()) {
                i8++;
            } else {
                z2 = true;
            }
            if (aVar.u && qc0Var.isActionViewExpanded()) {
                i5 = 0;
            }
        }
        if (aVar.m && (z2 || i8 + i7 > i5)) {
            i5--;
        }
        int i10 = i5 - i7;
        SparseBooleanArray sparseBooleanArray = aVar.w;
        sparseBooleanArray.clear();
        if (aVar.s) {
            int i11 = aVar.v;
            i3 = i6 / i11;
            i2 = i11 + ((i6 % i11) / i3);
        } else {
            i2 = 0;
            i3 = 0;
        }
        int i12 = 0;
        int i13 = 0;
        while (i12 < i) {
            qc0 qc0Var2 = (qc0) arrayList.get(i12);
            if (qc0Var2.n()) {
                View n = aVar.n(qc0Var2, view, viewGroup);
                if (aVar.s) {
                    i3 -= ActionMenuView.G(n, i2, i3, makeMeasureSpec, r3);
                } else {
                    n.measure(makeMeasureSpec, makeMeasureSpec);
                }
                int measuredWidth = n.getMeasuredWidth();
                i6 -= measuredWidth;
                if (i13 == 0) {
                    i13 = measuredWidth;
                }
                int groupId = qc0Var2.getGroupId();
                if (groupId != 0) {
                    sparseBooleanArray.put(groupId, true);
                }
                qc0Var2.t(true);
                z = r3;
                i4 = i;
            } else if (qc0Var2.m()) {
                int groupId2 = qc0Var2.getGroupId();
                boolean z3 = sparseBooleanArray.get(groupId2);
                boolean z4 = (i10 > 0 || z3) && i6 > 0 && (!aVar.s || i3 > 0);
                boolean z5 = z4;
                i4 = i;
                if (z4) {
                    View n2 = aVar.n(qc0Var2, null, viewGroup);
                    if (aVar.s) {
                        int G = ActionMenuView.G(n2, i2, i3, makeMeasureSpec, 0);
                        i3 -= G;
                        if (G == 0) {
                            z5 = false;
                        }
                    } else {
                        n2.measure(makeMeasureSpec, makeMeasureSpec);
                    }
                    boolean z6 = z5;
                    int measuredWidth2 = n2.getMeasuredWidth();
                    i6 -= measuredWidth2;
                    if (i13 == 0) {
                        i13 = measuredWidth2;
                    }
                    z4 = z6 & (!aVar.s ? i6 + i13 <= 0 : i6 < 0);
                }
                if (z4 && groupId2 != 0) {
                    sparseBooleanArray.put(groupId2, true);
                } else if (z3) {
                    sparseBooleanArray.put(groupId2, false);
                    for (int i14 = 0; i14 < i12; i14++) {
                        qc0 qc0Var3 = (qc0) arrayList.get(i14);
                        if (qc0Var3.getGroupId() == groupId2) {
                            if (qc0Var3.k()) {
                                i10++;
                            }
                            qc0Var3.t(false);
                        }
                    }
                }
                if (z4) {
                    i10--;
                }
                qc0Var2.t(z4);
                z = false;
            } else {
                z = r3;
                i4 = i;
                qc0Var2.t(z);
            }
            i12++;
            r3 = z;
            i = i4;
            view = null;
            aVar = this;
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.c8
    public boolean l(ViewGroup viewGroup, int i) {
        if (viewGroup.getChildAt(i) == this.j) {
            return false;
        }
        return super.l(viewGroup, i);
    }

    @Override // androidx.appcompat.view.menu.c8
    public View n(qc0 qc0Var, View view, ViewGroup viewGroup) {
        View actionView = qc0Var.getActionView();
        if (actionView == null || qc0Var.i()) {
            actionView = super.n(qc0Var, view, viewGroup);
        }
        actionView.setVisibility(qc0Var.isActionViewExpanded() ? 8 : 0);
        ActionMenuView actionMenuView = (ActionMenuView) viewGroup;
        ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // androidx.appcompat.view.menu.c8
    public boolean o(int i, qc0 qc0Var) {
        return qc0Var.k();
    }

    public boolean w() {
        return z() | A();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final View x(MenuItem menuItem) {
        ViewGroup viewGroup = (ViewGroup) this.i;
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = viewGroup.getChildAt(i);
            if ((childAt instanceof wc0.a) && ((wc0.a) childAt).getItemData() == menuItem) {
                return childAt;
            }
        }
        return null;
    }

    public Drawable y() {
        d dVar = this.j;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (this.l) {
            return this.k;
        }
        return null;
    }

    public boolean z() {
        Object obj;
        c cVar = this.z;
        if (cVar != null && (obj = this.i) != null) {
            ((View) obj).removeCallbacks(cVar);
            this.z = null;
            return true;
        }
        e eVar = this.x;
        if (eVar == null) {
            return false;
        }
        eVar.b();
        return true;
    }
}
