package androidx.appcompat.view.menu;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import androidx.window.extensions.WindowExtensionsProvider;
import androidx.window.extensions.core.util.function.Consumer;
import androidx.window.extensions.layout.WindowLayoutComponent;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class lr0 {
    public final ClassLoader a;
    public final qf b;
    public final kr0 c;

    public static final class a extends g80 implements dw {
        public a() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean d() {
            Class f = lr0.this.f();
            boolean z = false;
            Method method = f.getMethod("getBounds", new Class[0]);
            Method method2 = f.getMethod("getType", new Class[0]);
            Method method3 = f.getMethod("getState", new Class[0]);
            fo0 fo0Var = fo0.a;
            z50.d(method, "getBoundsMethod");
            if (fo0Var.b(method, do0.b(Rect.class)) && fo0Var.d(method)) {
                z50.d(method2, "getTypeMethod");
                Class cls = Integer.TYPE;
                if (fo0Var.b(method2, do0.b(cls)) && fo0Var.d(method2)) {
                    z50.d(method3, "getStateMethod");
                    if (fo0Var.b(method3, do0.b(cls)) && fo0Var.d(method3)) {
                        z = true;
                    }
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class b extends g80 implements dw {
        public b() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean d() {
            Class<?> b = lr0.this.b.b();
            if (b == null) {
                return Boolean.FALSE;
            }
            Class h = lr0.this.h();
            boolean z = false;
            Method method = h.getMethod("addWindowLayoutInfoListener", Activity.class, b);
            Method method2 = h.getMethod("removeWindowLayoutInfoListener", b);
            fo0 fo0Var = fo0.a;
            z50.d(method, "addListenerMethod");
            if (fo0Var.d(method)) {
                z50.d(method2, "removeListenerMethod");
                if (fo0Var.d(method2)) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class c extends g80 implements dw {
        public c() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean d() {
            Class h = lr0.this.h();
            boolean z = false;
            Method method = h.getMethod("addWindowLayoutInfoListener", Context.class, Consumer.class);
            Method method2 = h.getMethod("removeWindowLayoutInfoListener", Consumer.class);
            fo0 fo0Var = fo0.a;
            z50.d(method, "addListenerMethod");
            if (fo0Var.d(method)) {
                z50.d(method2, "removeListenerMethod");
                if (fo0Var.d(method2)) {
                    z = true;
                }
            }
            return Boolean.valueOf(z);
        }
    }

    public static final class d extends g80 implements dw {
        public d() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean d() {
            boolean z = false;
            Method method = lr0.this.c.c().getMethod("getWindowLayoutComponent", new Class[0]);
            Class h = lr0.this.h();
            fo0 fo0Var = fo0.a;
            z50.d(method, "getWindowLayoutComponentMethod");
            if (fo0Var.d(method) && fo0Var.c(method, h)) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public lr0(ClassLoader classLoader, qf qfVar) {
        z50.e(classLoader, "loader");
        z50.e(qfVar, "consumerAdapter");
        this.a = classLoader;
        this.b = qfVar;
        this.c = new kr0(classLoader);
    }

    public final boolean e() {
        if (!n()) {
            return false;
        }
        int a2 = nq.a.a();
        if (a2 == 1) {
            return i();
        }
        if (2 > a2 || a2 > Integer.MAX_VALUE) {
            return false;
        }
        return j();
    }

    public final Class f() {
        Class<?> loadClass = this.a.loadClass("androidx.window.extensions.layout.FoldingFeature");
        z50.d(loadClass, "loader.loadClass(FOLDING_FEATURE_CLASS)");
        return loadClass;
    }

    public final WindowLayoutComponent g() {
        if (!e()) {
            return null;
        }
        try {
            return WindowExtensionsProvider.getWindowExtensions().getWindowLayoutComponent();
        } catch (UnsupportedOperationException unused) {
            return null;
        }
    }

    public final Class h() {
        Class<?> loadClass = this.a.loadClass("androidx.window.extensions.layout.WindowLayoutComponent");
        z50.d(loadClass, "loader.loadClass(WINDOW_LAYOUT_COMPONENT_CLASS)");
        return loadClass;
    }

    public final boolean i() {
        return l();
    }

    public final boolean j() {
        return i() && m();
    }

    public final boolean k() {
        return fo0.e("FoldingFeature class is not valid", new a());
    }

    public final boolean l() {
        return fo0.e("WindowLayoutComponent#addWindowLayoutInfoListener(" + Activity.class.getName() + ", java.util.function.Consumer) is not valid", new b());
    }

    public final boolean m() {
        return fo0.e("WindowLayoutComponent#addWindowLayoutInfoListener(" + Context.class.getName() + ", androidx.window.extensions.core.util.function.Consumer) is not valid", new c());
    }

    public final boolean n() {
        return this.c.f() && o() && k();
    }

    public final boolean o() {
        return fo0.e("WindowExtensions#getWindowLayoutComponent is not valid", new d());
    }
}
