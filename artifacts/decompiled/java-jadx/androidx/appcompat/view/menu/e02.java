package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class e02 {
    public static final e02 d = new e02(true);
    public final s52 a;
    public boolean b;
    public boolean c;

    public e02() {
        this.a = s52.b(16);
    }

    public static int b(i02 i02Var, Object obj) {
        l82 b = i02Var.b();
        int a = i02Var.a();
        if (!i02Var.f()) {
            return c(b, a, obj);
        }
        List list = (List) obj;
        int i = 0;
        if (!i02Var.d()) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                i += c(b, a, it.next());
            }
            return i;
        }
        if (list.isEmpty()) {
            return 0;
        }
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            i += d(b, it2.next());
        }
        return jz1.s0(a) + i + jz1.v0(i);
    }

    public static int c(l82 l82Var, int i, Object obj) {
        int s0 = jz1.s0(i);
        if (l82Var == l82.x) {
            v02.g((w32) obj);
            s0 <<= 1;
        }
        return s0 + d(l82Var, obj);
    }

    public static int d(l82 l82Var, Object obj) {
        switch (b02.b[l82Var.ordinal()]) {
            case 1:
                return jz1.c(((Double) obj).doubleValue());
            case 2:
                return jz1.d(((Float) obj).floatValue());
            case q02.c.c /* 3 */:
                return jz1.a0(((Long) obj).longValue());
            case 4:
                return jz1.n0(((Long) obj).longValue());
            case q02.c.e /* 5 */:
                return jz1.g0(((Integer) obj).intValue());
            case q02.c.f /* 6 */:
                return jz1.S(((Long) obj).longValue());
            case q02.c.g /* 7 */:
                return jz1.c0(((Integer) obj).intValue());
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                return jz1.h(((Boolean) obj).booleanValue());
            case 9:
                return jz1.B((w32) obj);
            case 10:
                return jz1.T((w32) obj);
            case 11:
                return obj instanceof qx1 ? jz1.A((qx1) obj) : jz1.C((String) obj);
            case 12:
                return obj instanceof qx1 ? jz1.A((qx1) obj) : jz1.i((byte[]) obj);
            case 13:
                return jz1.v0(((Integer) obj).intValue());
            case 14:
                return jz1.k0(((Integer) obj).intValue());
            case 15:
                return jz1.f0(((Long) obj).longValue());
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                return jz1.o0(((Integer) obj).intValue());
            case 17:
                return jz1.j0(((Long) obj).longValue());
            case 18:
                return obj instanceof h12 ? jz1.X(((h12) obj).a()) : jz1.X(((Integer) obj).intValue());
            default:
                throw new RuntimeException("There is no way to get here, but the compiler thinks otherwise.");
        }
    }

    public static int e(Map.Entry entry) {
        jy0.a(entry.getKey());
        entry.getValue();
        throw null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void j(i02 i02Var, Object obj) {
        boolean z;
        l82 b = i02Var.b();
        v02.e(obj);
        switch (b02.a[b.c().ordinal()]) {
            case 1:
                z = obj instanceof Integer;
                if (z) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case 2:
                z = obj instanceof Long;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case q02.c.c /* 3 */:
                z = obj instanceof Float;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case 4:
                z = obj instanceof Double;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case q02.c.e /* 5 */:
                z = obj instanceof Boolean;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case q02.c.f /* 6 */:
                z = obj instanceof String;
                if (z) {
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case q02.c.g /* 7 */:
                if ((obj instanceof qx1) || (obj instanceof byte[])) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                if ((obj instanceof Integer) || (obj instanceof h12)) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            case 9:
                if (obj instanceof w32) {
                    return;
                }
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
            default:
                throw new IllegalArgumentException(String.format("Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n", Integer.valueOf(i02Var.a()), i02Var.b().c(), obj.getClass().getName()));
        }
    }

    public static boolean k(Map.Entry entry) {
        jy0.a(entry.getKey());
        throw null;
    }

    public final int a() {
        int i = 0;
        for (int i2 = 0; i2 < this.a.g(); i2++) {
            i += e(this.a.h(i2));
        }
        Iterator it = this.a.j().iterator();
        while (it.hasNext()) {
            i += e((Map.Entry) it.next());
        }
        return i;
    }

    public final /* synthetic */ Object clone() {
        e02 e02Var = new e02();
        for (int i = 0; i < this.a.g(); i++) {
            Map.Entry h = this.a.h(i);
            jy0.a(h.getKey());
            e02Var.g(null, h.getValue());
        }
        for (Map.Entry entry : this.a.j()) {
            jy0.a(entry.getKey());
            e02Var.g(null, entry.getValue());
        }
        e02Var.c = this.c;
        return e02Var;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e02) {
            return this.a.equals(((e02) obj).a);
        }
        return false;
    }

    public final void f(e02 e02Var) {
        for (int i = 0; i < e02Var.a.g(); i++) {
            h(e02Var.a.h(i));
        }
        Iterator it = e02Var.a.j().iterator();
        while (it.hasNext()) {
            h((Map.Entry) it.next());
        }
    }

    public final void g(i02 i02Var, Object obj) {
        if (!i02Var.f()) {
            j(i02Var, obj);
        } else {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Wrong object type used with protocol message reflection.");
            }
            ArrayList arrayList = new ArrayList();
            arrayList.addAll((List) obj);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj2 = arrayList.get(i);
                i++;
                j(i02Var, obj2);
            }
            obj = arrayList;
        }
        this.a.put(i02Var, obj);
    }

    public final void h(Map.Entry entry) {
        jy0.a(entry.getKey());
        entry.getValue();
        throw null;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final Iterator i() {
        return this.c ? new a22(this.a.m().iterator()) : this.a.m().iterator();
    }

    public final Iterator l() {
        return this.c ? new a22(this.a.entrySet().iterator()) : this.a.entrySet().iterator();
    }

    public final void m() {
        if (this.b) {
            return;
        }
        for (int i = 0; i < this.a.g(); i++) {
            Map.Entry h = this.a.h(i);
            if (h.getValue() instanceof q02) {
                ((q02) h.getValue()).C();
            }
        }
        this.a.f();
        this.b = true;
    }

    public final boolean n() {
        for (int i = 0; i < this.a.g(); i++) {
            if (!k(this.a.h(i))) {
                return false;
            }
        }
        Iterator it = this.a.j().iterator();
        while (it.hasNext()) {
            if (!k((Map.Entry) it.next())) {
                return false;
            }
        }
        return true;
    }

    public e02(s52 s52Var) {
        this.a = s52Var;
        m();
    }

    public e02(boolean z) {
        this(s52.b(0));
        m();
    }
}
