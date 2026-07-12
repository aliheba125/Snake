package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class iu1 {
    public static double a(double d) {
        if (Double.isNaN(d)) {
            return 0.0d;
        }
        if (Double.isInfinite(d) || d == 0.0d || d == -0.0d) {
            return d;
        }
        return (d > 0.0d ? 1 : -1) * Math.floor(Math.abs(d));
    }

    public static int b(pw1 pw1Var) {
        int i = i(pw1Var.c("runtime.counter").f().doubleValue() + 1.0d);
        if (i > 1000000) {
            throw new IllegalStateException("Instructions allowed exceeded");
        }
        pw1Var.h("runtime.counter", new yf1(Double.valueOf(i)));
        return i;
    }

    public static tj1 c(String str) {
        tj1 c = (str == null || str.isEmpty()) ? null : tj1.c(Integer.parseInt(str));
        if (c != null) {
            return c;
        }
        throw new IllegalArgumentException(String.format("Unsupported commandId %s", str));
    }

    public static Object d(qg1 qg1Var) {
        if (qg1.f.equals(qg1Var)) {
            return null;
        }
        if (qg1.e.equals(qg1Var)) {
            return "";
        }
        if (qg1Var instanceof og1) {
            return e((og1) qg1Var);
        }
        if (!(qg1Var instanceof pf1)) {
            return !qg1Var.f().isNaN() ? qg1Var.f() : qg1Var.g();
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = ((pf1) qg1Var).iterator();
        while (it.hasNext()) {
            Object d = d((qg1) it.next());
            if (d != null) {
                arrayList.add(d);
            }
        }
        return arrayList;
    }

    public static Map e(og1 og1Var) {
        HashMap hashMap = new HashMap();
        for (String str : og1Var.a()) {
            Object d = d(og1Var.h(str));
            if (d != null) {
                hashMap.put(str, d);
            }
        }
        return hashMap;
    }

    public static void f(tj1 tj1Var, int i, List list) {
        g(tj1Var.name(), i, list);
    }

    public static void g(String str, int i, List list) {
        if (list.size() != i) {
            throw new IllegalArgumentException(String.format("%s operation requires %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static boolean h(qg1 qg1Var, qg1 qg1Var2) {
        if (!qg1Var.getClass().equals(qg1Var2.getClass())) {
            return false;
        }
        if ((qg1Var instanceof eh1) || (qg1Var instanceof mg1)) {
            return true;
        }
        if (!(qg1Var instanceof yf1)) {
            return qg1Var instanceof ug1 ? qg1Var.g().equals(qg1Var2.g()) : qg1Var instanceof sf1 ? qg1Var.d().equals(qg1Var2.d()) : qg1Var == qg1Var2;
        }
        if (Double.isNaN(qg1Var.f().doubleValue()) || Double.isNaN(qg1Var2.f().doubleValue())) {
            return false;
        }
        return qg1Var.f().equals(qg1Var2.f());
    }

    public static int i(double d) {
        if (Double.isNaN(d) || Double.isInfinite(d) || d == 0.0d) {
            return 0;
        }
        return (int) (((d > 0.0d ? 1 : -1) * Math.floor(Math.abs(d))) % 4.294967296E9d);
    }

    public static void j(tj1 tj1Var, int i, List list) {
        k(tj1Var.name(), i, list);
    }

    public static void k(String str, int i, List list) {
        if (list.size() < i) {
            throw new IllegalArgumentException(String.format("%s operation requires at least %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }

    public static boolean l(qg1 qg1Var) {
        if (qg1Var == null) {
            return false;
        }
        Double f = qg1Var.f();
        return !f.isNaN() && f.doubleValue() >= 0.0d && f.equals(Double.valueOf(Math.floor(f.doubleValue())));
    }

    public static long m(double d) {
        return i(d) & 4294967295L;
    }

    public static void n(String str, int i, List list) {
        if (list.size() > i) {
            throw new IllegalArgumentException(String.format("%s operation requires at most %s parameters found %s", str, Integer.valueOf(i), Integer.valueOf(list.size())));
        }
    }
}
