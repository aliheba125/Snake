package androidx.appcompat.view.menu;

import android.annotation.SuppressLint;
import android.content.pm.PackageParser;
import android.graphics.Insets;
import android.graphics.Rect;
import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* loaded from: classes.dex */
public class y81 {
    public static final y81 b;
    public final l a;

    public static class a {
        public static Field a;
        public static Field b;
        public static Field c;
        public static boolean d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                c = declaredField3;
                declaredField3.setAccessible(true);
                d = true;
            } catch (ReflectiveOperationException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to get visible insets from AttachInfo ");
                sb.append(e.getMessage());
            }
        }

        public static y81 a(View view) {
            if (d && view.isAttachedToWindow()) {
                try {
                    Object obj = a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) b.get(obj);
                        Rect rect2 = (Rect) c.get(obj);
                        if (rect != null && rect2 != null) {
                            y81 a2 = new b().c(h50.c(rect)).d(h50.c(rect2)).a();
                            a2.q(a2);
                            a2.d(view.getRootView());
                            return a2;
                        }
                    }
                } catch (IllegalAccessException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to get insets from AttachInfo. ");
                    sb.append(e.getMessage());
                }
            }
            return null;
        }
    }

    public static class e extends d {
        public e() {
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void c(int i, h50 h50Var) {
            this.c.setInsets(n.a(i), h50Var.e());
        }

        public e(y81 y81Var) {
            super(y81Var);
        }
    }

    public static class f {
        public final y81 a;
        public h50[] b;

        public f() {
            this(new y81((y81) null));
        }

        public final void a() {
            h50[] h50VarArr = this.b;
            if (h50VarArr != null) {
                h50 h50Var = h50VarArr[m.d(1)];
                h50 h50Var2 = this.b[m.d(2)];
                if (h50Var2 == null) {
                    h50Var2 = this.a.f(2);
                }
                if (h50Var == null) {
                    h50Var = this.a.f(1);
                }
                g(h50.a(h50Var, h50Var2));
                h50 h50Var3 = this.b[m.d(16)];
                if (h50Var3 != null) {
                    f(h50Var3);
                }
                h50 h50Var4 = this.b[m.d(32)];
                if (h50Var4 != null) {
                    d(h50Var4);
                }
                h50 h50Var5 = this.b[m.d(64)];
                if (h50Var5 != null) {
                    h(h50Var5);
                }
            }
        }

        public abstract y81 b();

        public void c(int i, h50 h50Var) {
            if (this.b == null) {
                this.b = new h50[9];
            }
            for (int i2 = 1; i2 <= 256; i2 <<= 1) {
                if ((i & i2) != 0) {
                    this.b[m.d(i2)] = h50Var;
                }
            }
        }

        public void d(h50 h50Var) {
        }

        public abstract void e(h50 h50Var);

        public void f(h50 h50Var) {
        }

        public abstract void g(h50 h50Var);

        public void h(h50 h50Var) {
        }

        public f(y81 y81Var) {
            this.a = y81Var;
        }
    }

    public static class g extends l {
        public static boolean h = false;
        public static Method i;
        public static Class j;
        public static Field k;
        public static Field l;
        public final WindowInsets c;
        public h50[] d;
        public h50 e;
        public y81 f;
        public h50 g;

        public g(y81 y81Var, WindowInsets windowInsets) {
            super(y81Var);
            this.e = null;
            this.c = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        private h50 t(int i2, boolean z) {
            h50 h50Var = h50.e;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i2 & i3) != 0) {
                    h50Var = h50.a(h50Var, u(i3, z));
                }
            }
            return h50Var;
        }

        private h50 v() {
            y81 y81Var = this.f;
            return y81Var != null ? y81Var.g() : h50.e;
        }

        private h50 w(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!h) {
                x();
            }
            Method method = i;
            if (method != null && j != null && k != null) {
                try {
                    Object invoke = method.invoke(view, new Object[0]);
                    if (invoke == null) {
                        return null;
                    }
                    Rect rect = (Rect) k.get(l.get(invoke));
                    if (rect != null) {
                        return h50.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Failed to get visible insets. (Reflection error). ");
                    sb.append(e.getMessage());
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        private static void x() {
            try {
                i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                j = cls;
                k = cls.getDeclaredField("mVisibleInsets");
                l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                k.setAccessible(true);
                l.setAccessible(true);
            } catch (ReflectiveOperationException e) {
                StringBuilder sb = new StringBuilder();
                sb.append("Failed to get visible insets. (Reflection error). ");
                sb.append(e.getMessage());
            }
            h = true;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void d(View view) {
            h50 w = w(view);
            if (w == null) {
                w = h50.e;
            }
            q(w);
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void e(y81 y81Var) {
            y81Var.q(this.f);
            y81Var.p(this.g);
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.g, ((g) obj).g);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public h50 g(int i2) {
            return t(i2, false);
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public final h50 k() {
            if (this.e == null) {
                this.e = h50.b(this.c.getSystemWindowInsetLeft(), this.c.getSystemWindowInsetTop(), this.c.getSystemWindowInsetRight(), this.c.getSystemWindowInsetBottom());
            }
            return this.e;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public y81 m(int i2, int i3, int i4, int i5) {
            b bVar = new b(y81.t(this.c));
            bVar.d(y81.m(k(), i2, i3, i4, i5));
            bVar.c(y81.m(i(), i2, i3, i4, i5));
            return bVar.a();
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public boolean o() {
            return this.c.isRound();
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void p(h50[] h50VarArr) {
            this.d = h50VarArr;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void q(h50 h50Var) {
            this.g = h50Var;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void r(y81 y81Var) {
            this.f = y81Var;
        }

        public h50 u(int i2, boolean z) {
            h50 g;
            int i3;
            if (i2 == 1) {
                return z ? h50.b(0, Math.max(v().b, k().b), 0, 0) : h50.b(0, k().b, 0, 0);
            }
            if (i2 == 2) {
                if (z) {
                    h50 v = v();
                    h50 i4 = i();
                    return h50.b(Math.max(v.a, i4.a), 0, Math.max(v.c, i4.c), Math.max(v.d, i4.d));
                }
                h50 k2 = k();
                y81 y81Var = this.f;
                g = y81Var != null ? y81Var.g() : null;
                int i5 = k2.d;
                if (g != null) {
                    i5 = Math.min(i5, g.d);
                }
                return h50.b(k2.a, 0, k2.c, i5);
            }
            if (i2 != 8) {
                if (i2 == 16) {
                    return j();
                }
                if (i2 == 32) {
                    return h();
                }
                if (i2 == 64) {
                    return l();
                }
                if (i2 != 128) {
                    return h50.e;
                }
                y81 y81Var2 = this.f;
                im e = y81Var2 != null ? y81Var2.e() : f();
                return e != null ? h50.b(e.b(), e.d(), e.c(), e.a()) : h50.e;
            }
            h50[] h50VarArr = this.d;
            g = h50VarArr != null ? h50VarArr[m.d(8)] : null;
            if (g != null) {
                return g;
            }
            h50 k3 = k();
            h50 v2 = v();
            int i6 = k3.d;
            if (i6 > v2.d) {
                return h50.b(0, 0, 0, i6);
            }
            h50 h50Var = this.g;
            return (h50Var == null || h50Var.equals(h50.e) || (i3 = this.g.d) <= v2.d) ? h50.e : h50.b(0, 0, 0, i3);
        }

        public g(y81 y81Var, g gVar) {
            this(y81Var, new WindowInsets(gVar.c));
        }
    }

    public static class h extends g {
        public h50 m;

        public h(y81 y81Var, WindowInsets windowInsets) {
            super(y81Var, windowInsets);
            this.m = null;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public y81 b() {
            return y81.t(this.c.consumeStableInsets());
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public y81 c() {
            return y81.t(this.c.consumeSystemWindowInsets());
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public final h50 i() {
            if (this.m == null) {
                this.m = h50.b(this.c.getStableInsetLeft(), this.c.getStableInsetTop(), this.c.getStableInsetRight(), this.c.getStableInsetBottom());
            }
            return this.m;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public boolean n() {
            return this.c.isConsumed();
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public void s(h50 h50Var) {
            this.m = h50Var;
        }

        public h(y81 y81Var, h hVar) {
            super(y81Var, hVar);
            this.m = null;
            this.m = hVar.m;
        }
    }

    public static class i extends h {
        public i(y81 y81Var, WindowInsets windowInsets) {
            super(y81Var, windowInsets);
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public y81 a() {
            return y81.t(this.c.consumeDisplayCutout());
        }

        @Override // androidx.appcompat.view.menu.y81.g, androidx.appcompat.view.menu.y81.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Objects.equals(this.c, iVar.c) && Objects.equals(this.g, iVar.g);
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public im f() {
            return im.e(this.c.getDisplayCutout());
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public int hashCode() {
            return this.c.hashCode();
        }

        public i(y81 y81Var, i iVar) {
            super(y81Var, iVar);
        }
    }

    public static class j extends i {
        public h50 n;
        public h50 o;
        public h50 p;

        public j(y81 y81Var, WindowInsets windowInsets) {
            super(y81Var, windowInsets);
            this.n = null;
            this.o = null;
            this.p = null;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public h50 h() {
            Insets mandatorySystemGestureInsets;
            if (this.o == null) {
                mandatorySystemGestureInsets = this.c.getMandatorySystemGestureInsets();
                this.o = h50.d(mandatorySystemGestureInsets);
            }
            return this.o;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public h50 j() {
            Insets systemGestureInsets;
            if (this.n == null) {
                systemGestureInsets = this.c.getSystemGestureInsets();
                this.n = h50.d(systemGestureInsets);
            }
            return this.n;
        }

        @Override // androidx.appcompat.view.menu.y81.l
        public h50 l() {
            Insets tappableElementInsets;
            if (this.p == null) {
                tappableElementInsets = this.c.getTappableElementInsets();
                this.p = h50.d(tappableElementInsets);
            }
            return this.p;
        }

        @Override // androidx.appcompat.view.menu.y81.g, androidx.appcompat.view.menu.y81.l
        public y81 m(int i, int i2, int i3, int i4) {
            WindowInsets inset;
            inset = this.c.inset(i, i2, i3, i4);
            return y81.t(inset);
        }

        @Override // androidx.appcompat.view.menu.y81.h, androidx.appcompat.view.menu.y81.l
        public void s(h50 h50Var) {
        }

        public j(y81 y81Var, j jVar) {
            super(y81Var, jVar);
            this.n = null;
            this.o = null;
            this.p = null;
        }
    }

    public static class k extends j {
        public static final y81 q;

        static {
            WindowInsets windowInsets;
            windowInsets = WindowInsets.CONSUMED;
            q = y81.t(windowInsets);
        }

        public k(y81 y81Var, WindowInsets windowInsets) {
            super(y81Var, windowInsets);
        }

        @Override // androidx.appcompat.view.menu.y81.g, androidx.appcompat.view.menu.y81.l
        public final void d(View view) {
        }

        @Override // androidx.appcompat.view.menu.y81.g, androidx.appcompat.view.menu.y81.l
        public h50 g(int i) {
            Insets insets;
            insets = this.c.getInsets(n.a(i));
            return h50.d(insets);
        }

        public k(y81 y81Var, k kVar) {
            super(y81Var, kVar);
        }
    }

    public static class l {
        public static final y81 b = new b().a().a().b().c();
        public final y81 a;

        public l(y81 y81Var) {
            this.a = y81Var;
        }

        public y81 a() {
            return this.a;
        }

        public y81 b() {
            return this.a;
        }

        public y81 c() {
            return this.a;
        }

        public void d(View view) {
        }

        public void e(y81 y81Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return o() == lVar.o() && n() == lVar.n() && yf0.a(k(), lVar.k()) && yf0.a(i(), lVar.i()) && yf0.a(f(), lVar.f());
        }

        public im f() {
            return null;
        }

        public h50 g(int i) {
            return h50.e;
        }

        public h50 h() {
            return k();
        }

        public int hashCode() {
            return yf0.b(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
        }

        public h50 i() {
            return h50.e;
        }

        public h50 j() {
            return k();
        }

        public h50 k() {
            return h50.e;
        }

        public h50 l() {
            return k();
        }

        public y81 m(int i, int i2, int i3, int i4) {
            return b;
        }

        public boolean n() {
            return false;
        }

        public boolean o() {
            return false;
        }

        public void p(h50[] h50VarArr) {
        }

        public void q(h50 h50Var) {
        }

        public void r(y81 y81Var) {
        }

        public void s(h50 h50Var) {
        }
    }

    public static final class m {
        public static int a() {
            return 4;
        }

        public static int b() {
            return PackageParser.PARSE_IS_PRIVILEGED;
        }

        public static int c() {
            return 8;
        }

        public static int d(int i) {
            if (i == 1) {
                return 0;
            }
            if (i == 2) {
                return 1;
            }
            if (i == 4) {
                return 2;
            }
            if (i == 8) {
                return 3;
            }
            if (i == 16) {
                return 4;
            }
            if (i == 32) {
                return 5;
            }
            if (i == 64) {
                return 6;
            }
            if (i == 128) {
                return 7;
            }
            if (i == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i);
        }

        public static int e() {
            return 32;
        }

        public static int f() {
            return 2;
        }

        public static int g() {
            return 1;
        }

        public static int h() {
            return 7;
        }

        public static int i() {
            return 16;
        }

        public static int j() {
            return 64;
        }
    }

    public static final class n {
        public static int a(int i) {
            int statusBars;
            int i2 = 0;
            for (int i3 = 1; i3 <= 256; i3 <<= 1) {
                if ((i & i3) != 0) {
                    if (i3 == 1) {
                        statusBars = WindowInsets.Type.statusBars();
                    } else if (i3 == 2) {
                        statusBars = WindowInsets.Type.navigationBars();
                    } else if (i3 == 4) {
                        statusBars = WindowInsets.Type.captionBar();
                    } else if (i3 == 8) {
                        statusBars = WindowInsets.Type.ime();
                    } else if (i3 == 16) {
                        statusBars = WindowInsets.Type.systemGestures();
                    } else if (i3 == 32) {
                        statusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i3 == 64) {
                        statusBars = WindowInsets.Type.tappableElement();
                    } else if (i3 == 128) {
                        statusBars = WindowInsets.Type.displayCutout();
                    }
                    i2 |= statusBars;
                }
            }
            return i2;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            b = k.q;
        } else {
            b = l.b;
        }
    }

    public y81(WindowInsets windowInsets) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 30) {
            this.a = new k(this, windowInsets);
        } else if (i2 >= 29) {
            this.a = new j(this, windowInsets);
        } else {
            this.a = new i(this, windowInsets);
        }
    }

    public static h50 m(h50 h50Var, int i2, int i3, int i4, int i5) {
        int max = Math.max(0, h50Var.a - i2);
        int max2 = Math.max(0, h50Var.b - i3);
        int max3 = Math.max(0, h50Var.c - i4);
        int max4 = Math.max(0, h50Var.d - i5);
        return (max == i2 && max2 == i3 && max3 == i4 && max4 == i5) ? h50Var : h50.b(max, max2, max3, max4);
    }

    public static y81 t(WindowInsets windowInsets) {
        return u(windowInsets, null);
    }

    public static y81 u(WindowInsets windowInsets, View view) {
        y81 y81Var = new y81((WindowInsets) qj0.g(windowInsets));
        if (view != null && view.isAttachedToWindow()) {
            y81Var.q(m51.D(view));
            y81Var.d(view.getRootView());
        }
        return y81Var;
    }

    public y81 a() {
        return this.a.a();
    }

    public y81 b() {
        return this.a.b();
    }

    public y81 c() {
        return this.a.c();
    }

    public void d(View view) {
        this.a.d(view);
    }

    public im e() {
        return this.a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof y81) {
            return yf0.a(this.a, ((y81) obj).a);
        }
        return false;
    }

    public h50 f(int i2) {
        return this.a.g(i2);
    }

    public h50 g() {
        return this.a.i();
    }

    public int h() {
        return this.a.k().d;
    }

    public int hashCode() {
        l lVar = this.a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    public int i() {
        return this.a.k().a;
    }

    public int j() {
        return this.a.k().c;
    }

    public int k() {
        return this.a.k().b;
    }

    public y81 l(int i2, int i3, int i4, int i5) {
        return this.a.m(i2, i3, i4, i5);
    }

    public boolean n() {
        return this.a.n();
    }

    public void o(h50[] h50VarArr) {
        this.a.p(h50VarArr);
    }

    public void p(h50 h50Var) {
        this.a.q(h50Var);
    }

    public void q(y81 y81Var) {
        this.a.r(y81Var);
    }

    public void r(h50 h50Var) {
        this.a.s(h50Var);
    }

    public WindowInsets s() {
        l lVar = this.a;
        if (lVar instanceof g) {
            return ((g) lVar).c;
        }
        return null;
    }

    public static class c extends f {
        public static Field e = null;
        public static boolean f = false;
        public static Constructor g = null;
        public static boolean h = false;
        public WindowInsets c;
        public h50 d;

        public c() {
            this.c = i();
        }

        private static WindowInsets i() {
            if (!f) {
                try {
                    e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException unused) {
                }
                f = true;
            }
            Field field = e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException unused2) {
                }
            }
            if (!h) {
                try {
                    g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException unused3) {
                }
                h = true;
            }
            Constructor constructor = g;
            if (constructor != null) {
                try {
                    return (WindowInsets) constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException unused4) {
                }
            }
            return null;
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public y81 b() {
            a();
            y81 t = y81.t(this.c);
            t.o(this.b);
            t.r(this.d);
            return t;
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void e(h50 h50Var) {
            this.d = h50Var;
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void g(h50 h50Var) {
            WindowInsets windowInsets = this.c;
            if (windowInsets != null) {
                this.c = windowInsets.replaceSystemWindowInsets(h50Var.a, h50Var.b, h50Var.c, h50Var.d);
            }
        }

        public c(y81 y81Var) {
            super(y81Var);
            this.c = y81Var.s();
        }
    }

    public static class d extends f {
        public final WindowInsets.Builder c;

        public d() {
            this.c = f91.a();
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public y81 b() {
            WindowInsets build;
            a();
            build = this.c.build();
            y81 t = y81.t(build);
            t.o(this.b);
            return t;
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void d(h50 h50Var) {
            this.c.setMandatorySystemGestureInsets(h50Var.e());
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void e(h50 h50Var) {
            this.c.setStableInsets(h50Var.e());
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void f(h50 h50Var) {
            this.c.setSystemGestureInsets(h50Var.e());
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void g(h50 h50Var) {
            this.c.setSystemWindowInsets(h50Var.e());
        }

        @Override // androidx.appcompat.view.menu.y81.f
        public void h(h50 h50Var) {
            this.c.setTappableElementInsets(h50Var.e());
        }

        public d(y81 y81Var) {
            super(y81Var);
            WindowInsets.Builder a;
            WindowInsets s = y81Var.s();
            if (s != null) {
                a = g91.a(s);
            } else {
                a = f91.a();
            }
            this.c = a;
        }
    }

    public static final class b {
        public final f a;

        public b() {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.a = new e();
            } else if (i >= 29) {
                this.a = new d();
            } else {
                this.a = new c();
            }
        }

        public y81 a() {
            return this.a.b();
        }

        public b b(int i, h50 h50Var) {
            this.a.c(i, h50Var);
            return this;
        }

        public b c(h50 h50Var) {
            this.a.e(h50Var);
            return this;
        }

        public b d(h50 h50Var) {
            this.a.g(h50Var);
            return this;
        }

        public b(y81 y81Var) {
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                this.a = new e(y81Var);
            } else if (i >= 29) {
                this.a = new d(y81Var);
            } else {
                this.a = new c(y81Var);
            }
        }
    }

    public y81(y81 y81Var) {
        if (y81Var != null) {
            l lVar = y81Var.a;
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 30 && (lVar instanceof k)) {
                this.a = new k(this, (k) lVar);
            } else if (i2 >= 29 && (lVar instanceof j)) {
                this.a = new j(this, (j) lVar);
            } else if (lVar instanceof i) {
                this.a = new i(this, (i) lVar);
            } else if (lVar instanceof h) {
                this.a = new h(this, (h) lVar);
            } else if (lVar instanceof g) {
                this.a = new g(this, (g) lVar);
            } else {
                this.a = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.a = new l(this);
    }
}
