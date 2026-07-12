package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class od0 {
    public static Class[] a(Class cls) {
        HashSet hashSet = new HashSet();
        b(cls, hashSet);
        Class[] clsArr = new Class[hashSet.size()];
        hashSet.toArray(clsArr);
        return clsArr;
    }

    public static void b(Class cls, HashSet hashSet) {
        Class<?>[] interfaces = cls.getInterfaces();
        if (interfaces.length != 0) {
            hashSet.addAll(Arrays.asList(interfaces));
        }
        if (cls.getSuperclass() != Object.class) {
            Class superclass = cls.getSuperclass();
            Objects.requireNonNull(superclass);
            b(superclass, hashSet);
        }
    }

    public static Object c(Object[] objArr, Class cls) {
        int a;
        if (objArr == null || (a = r4.a(objArr, cls)) == -1) {
            return null;
        }
        return objArr[a];
    }

    public static Object d(Object[] objArr, Class cls) {
        int c;
        if (objArr == null || (c = r4.c(objArr, cls, 0)) == -1) {
            return null;
        }
        return objArr[c];
    }

    public static void e(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj != null && (obj instanceof String)) {
                if (yu0.h().A((String) obj, jv0.N2())) {
                    objArr[i] = yu0.o();
                }
            }
        }
    }

    public static String f(Object[] objArr) {
        if (objArr == null) {
            return null;
        }
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof String) {
                String str = (String) obj;
                if (yu0.h().A(str, jv0.N2())) {
                    objArr[i] = yu0.o();
                    return str;
                }
            }
        }
        return null;
    }

    public static void g(Object[] objArr) {
        if (objArr == null) {
            return;
        }
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if ((obj instanceof Integer) && ((Integer) obj).intValue() == jv0.J2()) {
                objArr[i] = Integer.valueOf(yu0.p());
            }
        }
    }

    public static void h(Object[] objArr) {
        int b = r4.b(objArr, String.class);
        if (b != -1) {
            if (yu0.h().A((String) objArr[b], jv0.N2())) {
                objArr[b] = yu0.o();
            }
        }
    }

    public static void i(Object[] objArr) {
        int b = r4.b(objArr, Integer.class);
        if (b == -1 || ((Integer) objArr[b]).intValue() != jv0.J2()) {
            return;
        }
        objArr[b] = Integer.valueOf(yu0.p());
    }
}
