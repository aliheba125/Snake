package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.uc0;

/* loaded from: classes.dex */
public final class ow0 extends rc0 implements PopupWindow.OnDismissListener, View.OnKeyListener {
    public static final int v = wm0.j;
    public final Context b;
    public final mc0 c;
    public final lc0 d;
    public final boolean e;
    public final int f;
    public final int g;
    public final int h;
    public final tc0 i;
    public PopupWindow.OnDismissListener l;
    public View m;
    public View n;
    public uc0.a o;
    public ViewTreeObserver p;
    public boolean q;
    public boolean r;
    public int s;
    public boolean u;
    public final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    public final View.OnAttachStateChangeListener k = new b();
    public int t = 0;

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ow0.this.i() || ow0.this.i.n()) {
                return;
            }
            View view = ow0.this.n;
            if (view == null || !view.isShown()) {
                ow0.this.dismiss();
            } else {
                ow0.this.i.a();
            }
        }
    }

    public class b implements View.OnAttachStateChangeListener {
        public b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = ow0.this.p;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    ow0.this.p = view.getViewTreeObserver();
                }
                ow0 ow0Var = ow0.this;
                ow0Var.p.removeGlobalOnLayoutListener(ow0Var.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public ow0(Context context, mc0 mc0Var, View view, int i, int i2, boolean z) {
        this.b = context;
        this.c = mc0Var;
        this.e = z;
        this.d = new lc0(mc0Var, LayoutInflater.from(context), z, v);
        this.g = i;
        this.h = i2;
        Resources resources = context.getResources();
        this.f = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(fm0.b));
        this.m = view;
        this.i = new tc0(context, null, i, i2);
        mc0Var.b(this, context);
    }

    @Override // androidx.appcompat.view.menu.eu0
    public void a() {
        if (!z()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void b(mc0 mc0Var, boolean z) {
        if (mc0Var != this.c) {
            return;
        }
        dismiss();
        uc0.a aVar = this.o;
        if (aVar != null) {
            aVar.b(mc0Var, z);
        }
    }

    @Override // androidx.appcompat.view.menu.eu0
    public ListView d() {
        return this.i.d();
    }

    @Override // androidx.appcompat.view.menu.eu0
    public void dismiss() {
        if (i()) {
            this.i.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean e(ay0 ay0Var) {
        if (ay0Var.hasVisibleItems()) {
            sc0 sc0Var = new sc0(this.b, ay0Var, this.n, this.e, this.g, this.h);
            sc0Var.j(this.o);
            sc0Var.g(rc0.x(ay0Var));
            sc0Var.i(this.l);
            this.l = null;
            this.c.d(false);
            int j = this.i.j();
            int l = this.i.l();
            if ((Gravity.getAbsoluteGravity(this.t, this.m.getLayoutDirection()) & 7) == 5) {
                j += this.m.getWidth();
            }
            if (sc0Var.n(j, l)) {
                uc0.a aVar = this.o;
                if (aVar == null) {
                    return true;
                }
                aVar.c(ay0Var);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void f(boolean z) {
        this.r = false;
        lc0 lc0Var = this.d;
        if (lc0Var != null) {
            lc0Var.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean g() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.eu0
    public boolean i() {
        return !this.q && this.i.i();
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void k(uc0.a aVar) {
        this.o = aVar;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void l(mc0 mc0Var) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.q = true;
        this.c.close();
        ViewTreeObserver viewTreeObserver = this.p;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.p = this.n.getViewTreeObserver();
            }
            this.p.removeGlobalOnLayoutListener(this.j);
            this.p = null;
        }
        this.n.removeOnAttachStateChangeListener(this.k);
        PopupWindow.OnDismissListener onDismissListener = this.l;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void p(View view) {
        this.m = view;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void r(boolean z) {
        this.d.d(z);
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void s(int i) {
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void t(int i) {
        this.i.v(i);
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.l = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void v(boolean z) {
        this.u = z;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void w(int i) {
        this.i.C(i);
    }

    public final boolean z() {
        View view;
        if (i()) {
            return true;
        }
        if (this.q || (view = this.m) == null) {
            return false;
        }
        this.n = view;
        this.i.y(this);
        this.i.z(this);
        this.i.x(true);
        View view2 = this.n;
        boolean z = this.p == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.p = viewTreeObserver;
        if (z) {
            viewTreeObserver.addOnGlobalLayoutListener(this.j);
        }
        view2.addOnAttachStateChangeListener(this.k);
        this.i.q(view2);
        this.i.t(this.t);
        if (!this.r) {
            this.s = rc0.o(this.d, null, this.b, this.f);
            this.r = true;
        }
        this.i.s(this.s);
        this.i.w(2);
        this.i.u(n());
        this.i.a();
        ListView d = this.i.d();
        d.setOnKeyListener(this);
        if (this.u && this.c.u() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.b).inflate(wm0.i, (ViewGroup) d, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.c.u());
            }
            frameLayout.setEnabled(false);
            d.addHeaderView(frameLayout, null, false);
        }
        this.i.p(this.d);
        this.i.a();
        return true;
    }
}
