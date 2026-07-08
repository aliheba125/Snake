package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ev {
    public static final nu0 a = new nu0();

    public static boolean b(ClassLoader classLoader, String str) {
        try {
            return av.class.isAssignableFrom(c(classLoader, str));
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public static Class c(ClassLoader classLoader, String str) {
        nu0 nu0Var = a;
        nu0 nu0Var2 = (nu0) nu0Var.get(classLoader);
        if (nu0Var2 == null) {
            nu0Var2 = new nu0();
            nu0Var.put(classLoader, nu0Var2);
        }
        Class cls = (Class) nu0Var2.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> cls2 = Class.forName(str, false, classLoader);
        nu0Var2.put(str, cls2);
        return cls2;
    }

    public abstract av a(ClassLoader classLoader, String str);
}
