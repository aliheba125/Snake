package androidx.appcompat.view.menu;

import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class kr0 {
    public final ClassLoader a;

    public static final class a extends g80 implements dw {
        public a() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Class d() {
            Class<?> loadClass = kr0.this.a.loadClass("androidx.window.extensions.WindowExtensionsProvider");
            z50.d(loadClass, "loader.loadClass(WindowE…XTENSIONS_PROVIDER_CLASS)");
            return loadClass;
        }
    }

    public static final class b extends g80 implements dw {
        public b() {
            super(0);
        }

        @Override // androidx.appcompat.view.menu.dw
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public final Boolean d() {
            boolean z = false;
            Method declaredMethod = kr0.this.d().getDeclaredMethod("getWindowExtensions", new Class[0]);
            Class c = kr0.this.c();
            fo0 fo0Var = fo0.a;
            z50.d(declaredMethod, "getWindowExtensionsMethod");
            if (fo0Var.c(declaredMethod, c) && fo0Var.d(declaredMethod)) {
                z = true;
            }
            return Boolean.valueOf(z);
        }
    }

    public kr0(ClassLoader classLoader) {
        z50.e(classLoader, "loader");
        this.a = classLoader;
    }

    public final Class c() {
        Class<?> loadClass = this.a.loadClass("androidx.window.extensions.WindowExtensions");
        z50.d(loadClass, "loader.loadClass(WindowE….WINDOW_EXTENSIONS_CLASS)");
        return loadClass;
    }

    public final Class d() {
        Class<?> loadClass = this.a.loadClass("androidx.window.extensions.WindowExtensionsProvider");
        z50.d(loadClass, "loader.loadClass(WindowE…XTENSIONS_PROVIDER_CLASS)");
        return loadClass;
    }

    public final boolean e() {
        return fo0.a.a(new a());
    }

    public final boolean f() {
        return e() && fo0.e("WindowExtensionsProvider#getWindowExtensions is not valid", new b());
    }
}
