package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class do0 {
    public static final eo0 a;
    public static final k70[] b;

    static {
        eo0 eo0Var = null;
        try {
            eo0Var = (eo0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
        }
        if (eo0Var == null) {
            eo0Var = new eo0();
        }
        a = eo0Var;
        b = new k70[0];
    }

    public static n70 a(ex exVar) {
        return a.a(exVar);
    }

    public static k70 b(Class cls) {
        return a.b(cls);
    }

    public static m70 c(Class cls) {
        return a.c(cls, "");
    }

    public static o70 d(qk0 qk0Var) {
        return a.d(qk0Var);
    }

    public static String e(dx dxVar) {
        return a.e(dxVar);
    }

    public static String f(g80 g80Var) {
        return a.f(g80Var);
    }
}
