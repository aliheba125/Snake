package androidx.appcompat.view.menu;

import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* loaded from: classes.dex */
public final class fo0 {
    public static final fo0 a = new fo0();

    public static final boolean e(String str, dw dwVar) {
        z50.e(dwVar, "block");
        try {
            return ((Boolean) dwVar.d()).booleanValue();
        } catch (ClassNotFoundException unused) {
            StringBuilder sb = new StringBuilder();
            sb.append("ClassNotFound: ");
            if (str == null) {
                str = "";
            }
            sb.append(str);
            return false;
        } catch (NoSuchMethodException unused2) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("NoSuchMethod: ");
            if (str == null) {
                str = "";
            }
            sb2.append(str);
            return false;
        }
    }

    public final boolean a(dw dwVar) {
        z50.e(dwVar, "classLoader");
        try {
            dwVar.d();
            return true;
        } catch (ClassNotFoundException | NoClassDefFoundError unused) {
            return false;
        }
    }

    public final boolean b(Method method, k70 k70Var) {
        z50.e(method, "<this>");
        z50.e(k70Var, "clazz");
        return c(method, i70.a(k70Var));
    }

    public final boolean c(Method method, Class cls) {
        z50.e(method, "<this>");
        z50.e(cls, "clazz");
        return method.getReturnType().equals(cls);
    }

    public final boolean d(Method method) {
        z50.e(method, "<this>");
        return Modifier.isPublic(method.getModifiers());
    }
}
