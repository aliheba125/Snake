package androidx.appcompat.view.menu;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.view.menu.s11;

/* loaded from: classes.dex */
public abstract class h71 extends s11 {
    public static final String[] W = {"android:visibility:visibility", "android:visibility:parent"};
    public int V = 3;

    public class a extends t11 {
        public final /* synthetic */ ViewGroup a;
        public final /* synthetic */ View b;
        public final /* synthetic */ View c;

        public a(ViewGroup viewGroup, View view, View view2) {
            this.a = viewGroup;
            this.b = view;
            this.c = view2;
        }

        @Override // androidx.appcompat.view.menu.t11, androidx.appcompat.view.menu.s11.f
        public void b(s11 s11Var) {
            w51.a(this.a).c(this.b);
        }

        @Override // androidx.appcompat.view.menu.t11, androidx.appcompat.view.menu.s11.f
        public void d(s11 s11Var) {
            if (this.b.getParent() == null) {
                w51.a(this.a).a(this.b);
            } else {
                h71.this.f();
            }
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            this.c.setTag(rm0.a, null);
            w51.a(this.a).c(this.b);
            s11Var.S(this);
        }
    }

    public static class b extends AnimatorListenerAdapter implements s11.f {
        public final View a;
        public final int b;
        public final ViewGroup c;
        public final boolean d;
        public boolean e;
        public boolean f = false;

        public b(View view, int i, boolean z) {
            this.a = view;
            this.b = i;
            this.c = (ViewGroup) view.getParent();
            this.d = z;
            g(true);
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void a(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void b(s11 s11Var) {
            g(false);
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void c(s11 s11Var) {
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void d(s11 s11Var) {
            g(true);
        }

        @Override // androidx.appcompat.view.menu.s11.f
        public void e(s11 s11Var) {
            f();
            s11Var.S(this);
        }

        public final void f() {
            if (!this.f) {
                n61.h(this.a, this.b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        public final void g(boolean z) {
            ViewGroup viewGroup;
            if (!this.d || this.e == z || (viewGroup = this.c) == null) {
                return;
            }
            this.e = z;
            w51.c(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) {
            if (this.f) {
                return;
            }
            n61.h(this.a, this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) {
            if (this.f) {
                return;
            }
            n61.h(this.a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static class c {
        public boolean a;
        public boolean b;
        public int c;
        public int d;
        public ViewGroup e;
        public ViewGroup f;
    }

    private void f0(y11 y11Var) {
        y11Var.a.put("android:visibility:visibility", Integer.valueOf(y11Var.b.getVisibility()));
        y11Var.a.put("android:visibility:parent", y11Var.b.getParent());
        int[] iArr = new int[2];
        y11Var.b.getLocationOnScreen(iArr);
        y11Var.a.put("android:visibility:screenLocation", iArr);
    }

    @Override // androidx.appcompat.view.menu.s11
    public String[] G() {
        return W;
    }

    @Override // androidx.appcompat.view.menu.s11
    public boolean I(y11 y11Var, y11 y11Var2) {
        if (y11Var == null && y11Var2 == null) {
            return false;
        }
        if (y11Var != null && y11Var2 != null && y11Var2.a.containsKey("android:visibility:visibility") != y11Var.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c g0 = g0(y11Var, y11Var2);
        if (g0.a) {
            return g0.c == 0 || g0.d == 0;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.s11
    public void g(y11 y11Var) {
        f0(y11Var);
    }

    public final c g0(y11 y11Var, y11 y11Var2) {
        c cVar = new c();
        cVar.a = false;
        cVar.b = false;
        if (y11Var == null || !y11Var.a.containsKey("android:visibility:visibility")) {
            cVar.c = -1;
            cVar.e = null;
        } else {
            cVar.c = ((Integer) y11Var.a.get("android:visibility:visibility")).intValue();
            cVar.e = (ViewGroup) y11Var.a.get("android:visibility:parent");
        }
        if (y11Var2 == null || !y11Var2.a.containsKey("android:visibility:visibility")) {
            cVar.d = -1;
            cVar.f = null;
        } else {
            cVar.d = ((Integer) y11Var2.a.get("android:visibility:visibility")).intValue();
            cVar.f = (ViewGroup) y11Var2.a.get("android:visibility:parent");
        }
        if (y11Var != null && y11Var2 != null) {
            int i = cVar.c;
            int i2 = cVar.d;
            if (i == i2 && cVar.e == cVar.f) {
                return cVar;
            }
            if (i != i2) {
                if (i == 0) {
                    cVar.b = false;
                    cVar.a = true;
                } else if (i2 == 0) {
                    cVar.b = true;
                    cVar.a = true;
                }
            } else if (cVar.f == null) {
                cVar.b = false;
                cVar.a = true;
            } else if (cVar.e == null) {
                cVar.b = true;
                cVar.a = true;
            }
        } else if (y11Var == null && cVar.d == 0) {
            cVar.b = true;
            cVar.a = true;
        } else if (y11Var2 == null && cVar.c == 0) {
            cVar.b = false;
            cVar.a = true;
        }
        return cVar;
    }

    public abstract Animator h0(ViewGroup viewGroup, View view, y11 y11Var, y11 y11Var2);

    public Animator i0(ViewGroup viewGroup, y11 y11Var, int i, y11 y11Var2, int i2) {
        if ((this.V & 1) != 1 || y11Var2 == null) {
            return null;
        }
        if (y11Var == null) {
            View view = (View) y11Var2.b.getParent();
            if (g0(w(view, false), H(view, false)).a) {
                return null;
            }
        }
        return h0(viewGroup, y11Var2.b, y11Var, y11Var2);
    }

    @Override // androidx.appcompat.view.menu.s11
    public void j(y11 y11Var) {
        f0(y11Var);
    }

    public abstract Animator j0(ViewGroup viewGroup, View view, y11 y11Var, y11 y11Var2);

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0083, code lost:
    
        if (r10.I != false) goto L44;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0040  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Animator k0(ViewGroup viewGroup, y11 y11Var, int i, y11 y11Var2, int i2) {
        View view;
        boolean z;
        boolean z2;
        View view2;
        if ((this.V & 2) != 2 || y11Var == null) {
            return null;
        }
        View view3 = y11Var.b;
        View view4 = y11Var2 != null ? y11Var2.b : null;
        View view5 = (View) view3.getTag(rm0.a);
        if (view5 != null) {
            view2 = null;
            z2 = true;
        } else if (view4 == null || view4.getParent() == null) {
            if (view4 != null) {
                view = null;
                z = false;
                if (z) {
                    if (view3.getParent() != null) {
                        if (view3.getParent() instanceof View) {
                            View view6 = (View) view3.getParent();
                            if (g0(H(view6, true), w(view6, true)).a) {
                                int id = view6.getId();
                                if (view6.getParent() == null) {
                                    if (id != -1) {
                                        if (viewGroup.findViewById(id) != null) {
                                        }
                                    }
                                }
                            } else {
                                view4 = x11.a(viewGroup, view3, view6);
                            }
                        }
                    }
                    view2 = view;
                    z2 = false;
                    view5 = view3;
                }
                z2 = false;
                View view7 = view;
                view5 = view4;
                view2 = view7;
            }
            view4 = null;
            view = null;
            z = true;
            if (z) {
            }
            z2 = false;
            View view72 = view;
            view5 = view4;
            view2 = view72;
        } else {
            if (i2 == 4 || view3 == view4) {
                view = view4;
                z = false;
                view4 = null;
                if (z) {
                }
                z2 = false;
                View view722 = view;
                view5 = view4;
                view2 = view722;
            }
            view4 = null;
            view = null;
            z = true;
            if (z) {
            }
            z2 = false;
            View view7222 = view;
            view5 = view4;
            view2 = view7222;
        }
        if (view5 == null) {
            if (view2 == null) {
                return null;
            }
            int visibility = view2.getVisibility();
            n61.h(view2, 0);
            Animator j0 = j0(viewGroup, view2, y11Var, y11Var2);
            if (j0 != null) {
                b bVar = new b(view2, i2, true);
                j0.addListener(bVar);
                l2.a(j0, bVar);
                a(bVar);
            } else {
                n61.h(view2, visibility);
            }
            return j0;
        }
        if (!z2) {
            int[] iArr = (int[]) y11Var.a.get("android:visibility:screenLocation");
            int i3 = iArr[0];
            int i4 = iArr[1];
            int[] iArr2 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            view5.offsetLeftAndRight((i3 - iArr2[0]) - view5.getLeft());
            view5.offsetTopAndBottom((i4 - iArr2[1]) - view5.getTop());
            w51.a(viewGroup).a(view5);
        }
        Animator j02 = j0(viewGroup, view5, y11Var, y11Var2);
        if (!z2) {
            if (j02 == null) {
                w51.a(viewGroup).c(view5);
            } else {
                view3.setTag(rm0.a, view5);
                a(new a(viewGroup, view5, view3));
            }
        }
        return j02;
    }

    public void l0(int i) {
        if ((i & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.V = i;
    }

    @Override // androidx.appcompat.view.menu.s11
    public Animator q(ViewGroup viewGroup, y11 y11Var, y11 y11Var2) {
        c g0 = g0(y11Var, y11Var2);
        if (!g0.a) {
            return null;
        }
        if (g0.e == null && g0.f == null) {
            return null;
        }
        return g0.b ? i0(viewGroup, y11Var, g0.c, y11Var2, g0.d) : k0(viewGroup, y11Var, g0.c, y11Var2, g0.d);
    }
}
