package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes.dex */
public abstract class m52 {
    public static final Class a = E();
    public static final l72 b = A();
    public static final l72 c = new p72();

    public static l72 A() {
        try {
            Class I = I();
            if (I == null) {
                return null;
            }
            return (l72) I.getConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void B(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.v(i, list, z);
    }

    public static int C(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * jz1.P(i, 0L);
    }

    public static int D(List list) {
        return list.size() << 3;
    }

    public static Class E() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void F(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.n(i, list, z);
    }

    public static int G(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return H(list) + (size * jz1.s0(i));
    }

    public static int H(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d12) {
            d12 d12Var = (d12) list;
            i = 0;
            while (i2 < size) {
                i += jz1.g0(d12Var.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.g0(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static Class I() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable unused) {
            return null;
        }
    }

    public static void J(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.c(i, list, z);
    }

    public static int K(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return L(list) + (list.size() * jz1.s0(i));
    }

    public static int L(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u22) {
            u22 u22Var = (u22) list;
            i = 0;
            while (i2 < size) {
                i += jz1.a0(u22Var.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.a0(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static void M(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.E(i, list, z);
    }

    public static int N(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return O(list) + (size * jz1.s0(i));
    }

    public static int O(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d12) {
            d12 d12Var = (d12) list;
            i = 0;
            while (i2 < size) {
                i += jz1.o0(d12Var.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.o0(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static void P(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.w(i, list, z);
    }

    public static int Q(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return R(list) + (size * jz1.s0(i));
    }

    public static int R(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u22) {
            u22 u22Var = (u22) list;
            i = 0;
            while (i2 < size) {
                i += jz1.j0(u22Var.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.j0(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static void S(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.o(i, list, z);
    }

    public static int T(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return U(list) + (size * jz1.s0(i));
    }

    public static int U(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d12) {
            d12 d12Var = (d12) list;
            i = 0;
            while (i2 < size) {
                i += jz1.v0(d12Var.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.v0(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static void V(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.f(i, list, z);
    }

    public static int W(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return X(list) + (size * jz1.s0(i));
    }

    public static int X(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof u22) {
            u22 u22Var = (u22) list;
            i = 0;
            while (i2 < size) {
                i += jz1.n0(u22Var.j(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.n0(((Long) list.get(i2)).longValue());
                i2++;
            }
        }
        return i;
    }

    public static void Y(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.G(i, list, z);
    }

    public static void Z(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.I(i, list, z);
    }

    public static int a(int i, Object obj, j52 j52Var) {
        return jz1.R(i, (w32) obj, j52Var);
    }

    public static void a0(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.A(i, list, z);
    }

    public static int b(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int s0 = size * jz1.s0(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            s0 += jz1.A((qx1) list.get(i2));
        }
        return s0;
    }

    public static void b0(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.q(i, list, z);
    }

    public static int c(int i, List list, j52 j52Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += jz1.x(i, (w32) list.get(i3), j52Var);
        }
        return i2;
    }

    public static void c0(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.h(i, list, z);
    }

    public static int d(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * jz1.z(i, true);
    }

    public static int e(List list) {
        return list.size();
    }

    public static l72 f() {
        return b;
    }

    public static Object g(Object obj, int i, int i2, Object obj2, l72 l72Var) {
        if (obj2 == null) {
            obj2 = l72Var.i(obj);
        }
        l72Var.f(obj2, i, i2);
        return obj2;
    }

    public static Object h(Object obj, int i, List list, l12 l12Var, Object obj2, l72 l72Var) {
        if (l12Var == null) {
            return obj2;
        }
        if (list instanceof RandomAccess) {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue = ((Integer) list.get(i3)).intValue();
                if (l12Var.e(intValue)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue));
                    }
                    i2++;
                } else {
                    obj2 = g(obj, i, intValue, obj2, l72Var);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
            }
        } else {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                int intValue2 = ((Integer) it.next()).intValue();
                if (!l12Var.e(intValue2)) {
                    obj2 = g(obj, i, intValue2, obj2, l72Var);
                    it.remove();
                }
            }
        }
        return obj2;
    }

    public static void i(int i, List list, d92 d92Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.K(i, list);
    }

    public static void j(int i, List list, d92 d92Var, j52 j52Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.b(i, list, j52Var);
    }

    public static void k(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.l(i, list, z);
    }

    public static void l(vz1 vz1Var, Object obj, Object obj2) {
        e02 b2 = vz1Var.b(obj2);
        if (b2.a.isEmpty()) {
            return;
        }
        vz1Var.e(obj).f(b2);
    }

    public static void m(q32 q32Var, Object obj, Object obj2, long j) {
        w72.j(obj, j, q32Var.d(w72.B(obj, j), w72.B(obj2, j)));
    }

    public static void n(l72 l72Var, Object obj, Object obj2) {
        l72Var.j(obj, l72Var.b(l72Var.k(obj), l72Var.k(obj2)));
    }

    public static void o(Class cls) {
        Class cls2;
        if (!q02.class.isAssignableFrom(cls) && (cls2 = a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean p(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int q(int i, List list) {
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        int s0 = jz1.s0(i) * size;
        if (list instanceof c22) {
            c22 c22Var = (c22) list;
            while (i2 < size) {
                Object j = c22Var.j(i2);
                s0 += j instanceof qx1 ? jz1.A((qx1) j) : jz1.C((String) j);
                i2++;
            }
        } else {
            while (i2 < size) {
                Object obj = list.get(i2);
                s0 += obj instanceof qx1 ? jz1.A((qx1) obj) : jz1.C((String) obj);
                i2++;
            }
        }
        return s0;
    }

    public static int r(int i, List list, j52 j52Var) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int s0 = jz1.s0(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            s0 += jz1.g((w32) list.get(i2), j52Var);
        }
        return s0;
    }

    public static int s(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return t(list) + (size * jz1.s0(i));
    }

    public static int t(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (list instanceof d12) {
            d12 d12Var = (d12) list;
            i = 0;
            while (i2 < size) {
                i += jz1.X(d12Var.f(i2));
                i2++;
            }
        } else {
            i = 0;
            while (i2 < size) {
                i += jz1.X(((Integer) list.get(i2)).intValue());
                i2++;
            }
        }
        return i;
    }

    public static l72 u() {
        return c;
    }

    public static void v(int i, List list, d92 d92Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.y(i, list);
    }

    public static void w(int i, List list, d92 d92Var, j52 j52Var) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.C(i, list, j52Var);
    }

    public static void x(int i, List list, d92 d92Var, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        d92Var.D(i, list, z);
    }

    public static int y(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * jz1.h0(i, 0);
    }

    public static int z(List list) {
        return list.size() << 2;
    }
}
