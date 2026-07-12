package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.uc0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ka extends rc0 implements View.OnKeyListener, PopupWindow.OnDismissListener {
    public static final int B = wm0.e;
    public boolean A;
    public final Context b;
    public final int c;
    public final int d;
    public final int e;
    public final boolean f;
    public final Handler g;
    public View o;
    public View p;
    public boolean r;
    public boolean s;
    public int t;
    public int u;
    public boolean w;
    public uc0.a x;
    public ViewTreeObserver y;
    public PopupWindow.OnDismissListener z;
    public final List h = new ArrayList();
    public final List i = new ArrayList();
    public final ViewTreeObserver.OnGlobalLayoutListener j = new a();
    public final View.OnAttachStateChangeListener k = new b();
    public final pc0 l = new c();
    public int m = 0;
    public int n = 0;
    public boolean v = false;
    public int q = D();

    public class a implements ViewTreeObserver.OnGlobalLayoutListener {
        public a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!ka.this.i() || ka.this.i.size() <= 0 || ((d) ka.this.i.get(0)).a.n()) {
                return;
            }
            View view = ka.this.p;
            if (view == null || !view.isShown()) {
                ka.this.dismiss();
                return;
            }
            Iterator it = ka.this.i.iterator();
            while (it.hasNext()) {
                ((d) it.next()).a.a();
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
            ViewTreeObserver viewTreeObserver = ka.this.y;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    ka.this.y = view.getViewTreeObserver();
                }
                ka kaVar = ka.this;
                kaVar.y.removeGlobalOnLayoutListener(kaVar.j);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public class c implements pc0 {

        public class a implements Runnable {
            public final /* synthetic */ d m;
            public final /* synthetic */ MenuItem n;
            public final /* synthetic */ mc0 o;

            public a(d dVar, MenuItem menuItem, mc0 mc0Var) {
                this.m = dVar;
                this.n = menuItem;
                this.o = mc0Var;
            }

            @Override // java.lang.Runnable
            public void run() {
                d dVar = this.m;
                if (dVar != null) {
                    ka.this.A = true;
                    dVar.b.d(false);
                    ka.this.A = false;
                }
                if (this.n.isEnabled() && this.n.hasSubMenu()) {
                    this.o.I(this.n, 4);
                }
            }
        }

        public c() {
        }

        @Override // androidx.appcompat.view.menu.pc0
        public void b(mc0 mc0Var, MenuItem menuItem) {
            ka.this.g.removeCallbacksAndMessages(null);
            int size = ka.this.i.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    i = -1;
                    break;
                } else if (mc0Var == ((d) ka.this.i.get(i)).b) {
                    break;
                } else {
                    i++;
                }
            }
            if (i == -1) {
                return;
            }
            int i2 = i + 1;
            ka.this.g.postAtTime(new a(i2 < ka.this.i.size() ? (d) ka.this.i.get(i2) : null, menuItem, mc0Var), mc0Var, SystemClock.uptimeMillis() + 200);
        }

        @Override // androidx.appcompat.view.menu.pc0
        public void c(mc0 mc0Var, MenuItem menuItem) {
            ka.this.g.removeCallbacksAndMessages(mc0Var);
        }
    }

    public static class d {
        public final tc0 a;
        public final mc0 b;
        public final int c;

        public d(tc0 tc0Var, mc0 mc0Var, int i) {
            this.a = tc0Var;
            this.b = mc0Var;
            this.c = i;
        }

        public ListView a() {
            return this.a.d();
        }
    }

    public ka(Context context, View view, int i, int i2, boolean z) {
        this.b = context;
        this.o = view;
        this.d = i;
        this.e = i2;
        this.f = z;
        Resources resources = context.getResources();
        this.c = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(fm0.b));
        this.g = new Handler();
    }

    public final int A(mc0 mc0Var) {
        int size = this.i.size();
        for (int i = 0; i < size; i++) {
            if (mc0Var == ((d) this.i.get(i)).b) {
                return i;
            }
        }
        return -1;
    }

    public final MenuItem B(mc0 mc0Var, mc0 mc0Var2) {
        int size = mc0Var.size();
        for (int i = 0; i < size; i++) {
            MenuItem item = mc0Var.getItem(i);
            if (item.hasSubMenu() && mc0Var2 == item.getSubMenu()) {
                return item;
            }
        }
        return null;
    }

    public final View C(d dVar, mc0 mc0Var) {
        lc0 lc0Var;
        int i;
        int firstVisiblePosition;
        MenuItem B2 = B(dVar.b, mc0Var);
        if (B2 == null) {
            return null;
        }
        ListView a2 = dVar.a();
        ListAdapter adapter = a2.getAdapter();
        int i2 = 0;
        if (adapter instanceof HeaderViewListAdapter) {
            HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
            i = headerViewListAdapter.getHeadersCount();
            lc0Var = (lc0) headerViewListAdapter.getWrappedAdapter();
        } else {
            lc0Var = (lc0) adapter;
            i = 0;
        }
        int count = lc0Var.getCount();
        while (true) {
            if (i2 >= count) {
                i2 = -1;
                break;
            }
            if (B2 == lc0Var.getItem(i2)) {
                break;
            }
            i2++;
        }
        if (i2 != -1 && (firstVisiblePosition = (i2 + i) - a2.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < a2.getChildCount()) {
            return a2.getChildAt(firstVisiblePosition);
        }
        return null;
    }

    public final int D() {
        return this.o.getLayoutDirection() == 1 ? 0 : 1;
    }

    public final int E(int i) {
        List list = this.i;
        ListView a2 = ((d) list.get(list.size() - 1)).a();
        int[] iArr = new int[2];
        a2.getLocationOnScreen(iArr);
        Rect rect = new Rect();
        this.p.getWindowVisibleDisplayFrame(rect);
        return this.q == 1 ? (iArr[0] + a2.getWidth()) + i > rect.right ? 0 : 1 : iArr[0] - i < 0 ? 1 : 0;
    }

    public final void F(mc0 mc0Var) {
        d dVar;
        View view;
        LayoutInflater from = LayoutInflater.from(this.b);
        lc0 lc0Var = new lc0(mc0Var, from, this.f, B);
        if (!i() && this.v) {
            lc0Var.d(true);
        } else if (i()) {
            lc0Var.d(rc0.x(mc0Var));
        }
        int o = rc0.o(lc0Var, null, this.b, this.c);
        tc0 z = z();
        z.p(lc0Var);
        z.s(o);
        z.t(this.n);
        if (this.i.size() > 0) {
            List list = this.i;
            dVar = (d) list.get(list.size() - 1);
            view = C(dVar, mc0Var);
        } else {
            dVar = null;
            view = null;
        }
        if (view != null) {
            z.H(false);
            z.E(null);
            int E = E(o);
            boolean z2 = E == 1;
            this.q = E;
            z.q(view);
            if ((this.n & 5) != 5) {
                o = z2 ? view.getWidth() : 0 - o;
            } else if (!z2) {
                o = 0 - view.getWidth();
            }
            z.v(o);
            z.A(true);
            z.C(0);
        } else {
            if (this.r) {
                z.v(this.t);
            }
            if (this.s) {
                z.C(this.u);
            }
            z.u(n());
        }
        this.i.add(new d(z, mc0Var, this.q));
        z.a();
        ListView d2 = z.d();
        d2.setOnKeyListener(this);
        if (dVar == null && this.w && mc0Var.u() != null) {
            FrameLayout frameLayout = (FrameLayout) from.inflate(wm0.i, (ViewGroup) d2, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            frameLayout.setEnabled(false);
            textView.setText(mc0Var.u());
            d2.addHeaderView(frameLayout, null, false);
            z.a();
        }
    }

    @Override // androidx.appcompat.view.menu.eu0
    public void a() {
        if (i()) {
            return;
        }
        Iterator it = this.h.iterator();
        while (it.hasNext()) {
            F((mc0) it.next());
        }
        this.h.clear();
        View view = this.o;
        this.p = view;
        if (view != null) {
            boolean z = this.y == null;
            ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
            this.y = viewTreeObserver;
            if (z) {
                viewTreeObserver.addOnGlobalLayoutListener(this.j);
            }
            this.p.addOnAttachStateChangeListener(this.k);
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void b(mc0 mc0Var, boolean z) {
        int A = A(mc0Var);
        if (A < 0) {
            return;
        }
        int i = A + 1;
        if (i < this.i.size()) {
            ((d) this.i.get(i)).b.d(false);
        }
        d dVar = (d) this.i.remove(A);
        dVar.b.L(this);
        if (this.A) {
            dVar.a.F(null);
            dVar.a.r(0);
        }
        dVar.a.dismiss();
        int size = this.i.size();
        if (size > 0) {
            this.q = ((d) this.i.get(size - 1)).c;
        } else {
            this.q = D();
        }
        if (size != 0) {
            if (z) {
                ((d) this.i.get(0)).b.d(false);
                return;
            }
            return;
        }
        dismiss();
        uc0.a aVar = this.x;
        if (aVar != null) {
            aVar.b(mc0Var, true);
        }
        ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null) {
            if (viewTreeObserver.isAlive()) {
                this.y.removeGlobalOnLayoutListener(this.j);
            }
            this.y = null;
        }
        this.p.removeOnAttachStateChangeListener(this.k);
        this.z.onDismiss();
    }

    @Override // androidx.appcompat.view.menu.eu0
    public ListView d() {
        if (this.i.isEmpty()) {
            return null;
        }
        return ((d) this.i.get(r0.size() - 1)).a();
    }

    @Override // androidx.appcompat.view.menu.eu0
    public void dismiss() {
        int size = this.i.size();
        if (size > 0) {
            d[] dVarArr = (d[]) this.i.toArray(new d[size]);
            for (int i = size - 1; i >= 0; i--) {
                d dVar = dVarArr[i];
                if (dVar.a.i()) {
                    dVar.a.dismiss();
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean e(ay0 ay0Var) {
        for (d dVar : this.i) {
            if (ay0Var == dVar.b) {
                dVar.a().requestFocus();
                return true;
            }
        }
        if (!ay0Var.hasVisibleItems()) {
            return false;
        }
        l(ay0Var);
        uc0.a aVar = this.x;
        if (aVar != null) {
            aVar.c(ay0Var);
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void f(boolean z) {
        Iterator it = this.i.iterator();
        while (it.hasNext()) {
            rc0.y(((d) it.next()).a().getAdapter()).notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.uc0
    public boolean g() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.eu0
    public boolean i() {
        return this.i.size() > 0 && ((d) this.i.get(0)).a.i();
    }

    @Override // androidx.appcompat.view.menu.uc0
    public void k(uc0.a aVar) {
        this.x = aVar;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void l(mc0 mc0Var) {
        mc0Var.b(this, this.b);
        if (i()) {
            F(mc0Var);
        } else {
            this.h.add(mc0Var);
        }
    }

    @Override // androidx.appcompat.view.menu.rc0
    public boolean m() {
        return false;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        d dVar;
        int size = this.i.size();
        int i = 0;
        while (true) {
            if (i >= size) {
                dVar = null;
                break;
            }
            dVar = (d) this.i.get(i);
            if (!dVar.a.i()) {
                break;
            } else {
                i++;
            }
        }
        if (dVar != null) {
            dVar.b.d(false);
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
        if (this.o != view) {
            this.o = view;
            this.n = hy.b(this.m, view.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void r(boolean z) {
        this.v = z;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void s(int i) {
        if (this.m != i) {
            this.m = i;
            this.n = hy.b(i, this.o.getLayoutDirection());
        }
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void t(int i) {
        this.r = true;
        this.t = i;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void v(boolean z) {
        this.w = z;
    }

    @Override // androidx.appcompat.view.menu.rc0
    public void w(int i) {
        this.s = true;
        this.u = i;
    }

    public final tc0 z() {
        tc0 tc0Var = new tc0(this.b, null, this.d, this.e);
        tc0Var.G(this.l);
        tc0Var.z(this);
        tc0Var.y(this);
        tc0Var.q(this.o);
        tc0Var.t(this.n);
        tc0Var.x(true);
        tc0Var.w(2);
        return tc0Var;
    }
}
