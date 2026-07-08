package androidx.appcompat.view.menu;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.transition.Transition;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public class tc0 extends h90 implements pc0 {
    public static Method J;
    public pc0 I;

    public static class a {
        public static void a(PopupWindow popupWindow, Transition transition) {
            popupWindow.setEnterTransition(transition);
        }

        public static void b(PopupWindow popupWindow, Transition transition) {
            popupWindow.setExitTransition(transition);
        }
    }

    public static class b {
        public static void a(PopupWindow popupWindow, boolean z) {
            popupWindow.setTouchModal(z);
        }
    }

    public static class c extends xm {
        public final int m;
        public final int n;
        public pc0 o;
        public MenuItem p;

        public c(Context context, boolean z) {
            super(context, z);
            if (1 == context.getResources().getConfiguration().getLayoutDirection()) {
                this.m = 21;
                this.n = 22;
            } else {
                this.m = 22;
                this.n = 21;
            }
        }

        @Override // androidx.appcompat.view.menu.xm
        public /* bridge */ /* synthetic */ int d(int i, int i2, int i3, int i4, int i5) {
            return super.d(i, i2, i3, i4, i5);
        }

        @Override // androidx.appcompat.view.menu.xm
        public /* bridge */ /* synthetic */ boolean e(MotionEvent motionEvent, int i) {
            return super.e(motionEvent, i);
        }

        @Override // androidx.appcompat.view.menu.xm, android.view.ViewGroup, android.view.View
        public /* bridge */ /* synthetic */ boolean hasFocus() {
            return super.hasFocus();
        }

        @Override // androidx.appcompat.view.menu.xm, android.view.View
        public /* bridge */ /* synthetic */ boolean hasWindowFocus() {
            return super.hasWindowFocus();
        }

        @Override // androidx.appcompat.view.menu.xm, android.view.View
        public /* bridge */ /* synthetic */ boolean isFocused() {
            return super.isFocused();
        }

        @Override // androidx.appcompat.view.menu.xm, android.view.View
        public /* bridge */ /* synthetic */ boolean isInTouchMode() {
            return super.isInTouchMode();
        }

        @Override // androidx.appcompat.view.menu.xm, android.view.View
        public boolean onHoverEvent(MotionEvent motionEvent) {
            lc0 lc0Var;
            int i;
            int pointToPosition;
            int i2;
            if (this.o != null) {
                ListAdapter adapter = getAdapter();
                if (adapter instanceof HeaderViewListAdapter) {
                    HeaderViewListAdapter headerViewListAdapter = (HeaderViewListAdapter) adapter;
                    i = headerViewListAdapter.getHeadersCount();
                    lc0Var = (lc0) headerViewListAdapter.getWrappedAdapter();
                } else {
                    lc0Var = (lc0) adapter;
                    i = 0;
                }
                qc0 item = (motionEvent.getAction() == 10 || (pointToPosition = pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY())) == -1 || (i2 = pointToPosition - i) < 0 || i2 >= lc0Var.getCount()) ? null : lc0Var.getItem(i2);
                MenuItem menuItem = this.p;
                if (menuItem != item) {
                    mc0 b = lc0Var.b();
                    if (menuItem != null) {
                        this.o.c(b, menuItem);
                    }
                    this.p = item;
                    if (item != null) {
                        this.o.b(b, item);
                    }
                }
            }
            return super.onHoverEvent(motionEvent);
        }

        @Override // android.widget.ListView, android.widget.AbsListView, android.view.View, android.view.KeyEvent.Callback
        public boolean onKeyDown(int i, KeyEvent keyEvent) {
            ListMenuItemView listMenuItemView = (ListMenuItemView) getSelectedView();
            if (listMenuItemView != null && i == this.m) {
                if (listMenuItemView.isEnabled() && listMenuItemView.getItemData().hasSubMenu()) {
                    performItemClick(listMenuItemView, getSelectedItemPosition(), getSelectedItemId());
                }
                return true;
            }
            if (listMenuItemView == null || i != this.n) {
                return super.onKeyDown(i, keyEvent);
            }
            setSelection(-1);
            ListAdapter adapter = getAdapter();
            (adapter instanceof HeaderViewListAdapter ? (lc0) ((HeaderViewListAdapter) adapter).getWrappedAdapter() : (lc0) adapter).b().d(false);
            return true;
        }

        @Override // androidx.appcompat.view.menu.xm, android.widget.AbsListView, android.view.View
        public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
            return super.onTouchEvent(motionEvent);
        }

        public void setHoverListener(pc0 pc0Var) {
            this.o = pc0Var;
        }

        @Override // androidx.appcompat.view.menu.xm, android.widget.AbsListView
        public /* bridge */ /* synthetic */ void setSelector(Drawable drawable) {
            super.setSelector(drawable);
        }
    }

    static {
        try {
            if (Build.VERSION.SDK_INT <= 28) {
                J = PopupWindow.class.getDeclaredMethod("setTouchModal", Boolean.TYPE);
            }
        } catch (NoSuchMethodException unused) {
        }
    }

    public tc0(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void E(Object obj) {
        a.a(this.F, (Transition) obj);
    }

    public void F(Object obj) {
        a.b(this.F, (Transition) obj);
    }

    public void G(pc0 pc0Var) {
        this.I = pc0Var;
    }

    public void H(boolean z) {
        if (Build.VERSION.SDK_INT > 28) {
            b.a(this.F, z);
            return;
        }
        Method method = J;
        if (method != null) {
            try {
                method.invoke(this.F, Boolean.valueOf(z));
            } catch (Exception unused) {
            }
        }
    }

    @Override // androidx.appcompat.view.menu.pc0
    public void b(mc0 mc0Var, MenuItem menuItem) {
        pc0 pc0Var = this.I;
        if (pc0Var != null) {
            pc0Var.b(mc0Var, menuItem);
        }
    }

    @Override // androidx.appcompat.view.menu.pc0
    public void c(mc0 mc0Var, MenuItem menuItem) {
        pc0 pc0Var = this.I;
        if (pc0Var != null) {
            pc0Var.c(mc0Var, menuItem);
        }
    }

    @Override // androidx.appcompat.view.menu.h90
    public xm g(Context context, boolean z) {
        c cVar = new c(context, z);
        cVar.setHoverListener(this);
        return cVar;
    }
}
