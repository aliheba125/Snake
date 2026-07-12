package androidx.appcompat.view.menu;

import android.app.Activity;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

/* loaded from: classes.dex */
public final class qf {
    public final ClassLoader a;

    public static final class a implements InvocationHandler {
        public final k70 l;
        public final fw m;

        public a(k70 k70Var, fw fwVar) {
            z50.e(k70Var, "clazz");
            z50.e(fwVar, "consumer");
            this.l = k70Var;
            this.m = fwVar;
        }

        public final void a(Object obj) {
            z50.e(obj, "parameter");
            this.m.i(obj);
        }

        public final boolean b(Method method, Object[] objArr) {
            return z50.a(method.getName(), "accept") && objArr != null && objArr.length == 1;
        }

        public final boolean c(Method method, Object[] objArr) {
            return z50.a(method.getName(), "equals") && method.getReturnType().equals(Boolean.TYPE) && objArr != null && objArr.length == 1;
        }

        public final boolean d(Method method, Object[] objArr) {
            return z50.a(method.getName(), "hashCode") && method.getReturnType().equals(Integer.TYPE) && objArr == null;
        }

        public final boolean e(Method method, Object[] objArr) {
            return z50.a(method.getName(), "toString") && method.getReturnType().equals(String.class) && objArr == null;
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) {
            z50.e(obj, "obj");
            z50.e(method, "method");
            if (b(method, objArr)) {
                a(l70.a(this.l, objArr != null ? objArr[0] : null));
                return r31.a;
            }
            if (c(method, objArr)) {
                return Boolean.valueOf(obj == (objArr != null ? objArr[0] : null));
            }
            if (d(method, objArr)) {
                return Integer.valueOf(this.m.hashCode());
            }
            if (e(method, objArr)) {
                return this.m.toString();
            }
            throw new UnsupportedOperationException("Unexpected method call object:" + obj + ", method: " + method + ", args: " + objArr);
        }
    }

    public interface b {
        void a();
    }

    public static final class c implements b {
        public final /* synthetic */ Method a;
        public final /* synthetic */ Object b;
        public final /* synthetic */ Object c;

        public c(Method method, Object obj, Object obj2) {
            this.a = method;
            this.b = obj;
            this.c = obj2;
        }

        @Override // androidx.appcompat.view.menu.qf.b
        public void a() {
            this.a.invoke(this.b, this.c);
        }
    }

    public qf(ClassLoader classLoader) {
        z50.e(classLoader, "loader");
        this.a = classLoader;
    }

    public final Object a(k70 k70Var, fw fwVar) {
        Object newProxyInstance = Proxy.newProxyInstance(this.a, new Class[]{d()}, new a(k70Var, fwVar));
        z50.d(newProxyInstance, "newProxyInstance(loader,…onsumerClass()), handler)");
        return newProxyInstance;
    }

    public final Class b() {
        try {
            return d();
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public final b c(Object obj, k70 k70Var, String str, String str2, Activity activity, fw fwVar) {
        z50.e(obj, "obj");
        z50.e(k70Var, "clazz");
        z50.e(str, "addMethodName");
        z50.e(str2, "removeMethodName");
        z50.e(activity, "activity");
        z50.e(fwVar, "consumer");
        Object a2 = a(k70Var, fwVar);
        obj.getClass().getMethod(str, Activity.class, d()).invoke(obj, activity, a2);
        return new c(obj.getClass().getMethod(str2, d()), obj, a2);
    }

    public final Class d() {
        Class<?> loadClass = this.a.loadClass("java.util.function.Consumer");
        z50.d(loadClass, "loader.loadClass(\"java.util.function.Consumer\")");
        return loadClass;
    }
}
