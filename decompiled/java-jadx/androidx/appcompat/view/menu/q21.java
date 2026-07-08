package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class q21 {
    public static Object a(Object obj, int i) {
        if (obj != null && !c(obj, i)) {
            f(obj, "kotlin.jvm.functions.Function" + i);
        }
        return obj;
    }

    public static int b(Object obj) {
        if (obj instanceof dx) {
            return ((dx) obj).e();
        }
        if (obj instanceof dw) {
            return 0;
        }
        if (obj instanceof fw) {
            return 1;
        }
        if (obj instanceof tw) {
            return 2;
        }
        return obj instanceof vw ? 3 : -1;
    }

    public static boolean c(Object obj, int i) {
        return (obj instanceof uw) && b(obj) == i;
    }

    public static Throwable d(Throwable th) {
        return z50.i(th, q21.class.getName());
    }

    public static ClassCastException e(ClassCastException classCastException) {
        throw ((ClassCastException) d(classCastException));
    }

    public static void f(Object obj, String str) {
        g((obj == null ? "null" : obj.getClass().getName()) + " cannot be cast to " + str);
    }

    public static void g(String str) {
        throw e(new ClassCastException(str));
    }
}
