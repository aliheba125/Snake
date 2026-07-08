package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public abstract class li1 {
    public static pf1 a(pf1 pf1Var, pw1 pw1Var, gg1 gg1Var) {
        return b(pf1Var, pw1Var, gg1Var, null, null);
    }

    public static pf1 b(pf1 pf1Var, pw1 pw1Var, gg1 gg1Var, Boolean bool, Boolean bool2) {
        pf1 pf1Var2 = new pf1();
        Iterator A = pf1Var.A();
        while (A.hasNext()) {
            int intValue = ((Integer) A.next()).intValue();
            if (pf1Var.z(intValue)) {
                qg1 a = gg1Var.a(pw1Var, Arrays.asList(pf1Var.s(intValue), new yf1(Double.valueOf(intValue)), pf1Var));
                if (a.d().equals(bool)) {
                    return pf1Var2;
                }
                if (bool2 == null || a.d().equals(bool2)) {
                    pf1Var2.y(intValue, a);
                }
            }
        }
        return pf1Var2;
    }

    public static qg1 c(pf1 pf1Var, pw1 pw1Var, List list, boolean z) {
        qg1 qg1Var;
        iu1.k("reduce", 1, list);
        iu1.n("reduce", 2, list);
        qg1 b = pw1Var.b((qg1) list.get(0));
        if (!(b instanceof gg1)) {
            throw new IllegalArgumentException("Callback should be a method");
        }
        if (list.size() == 2) {
            qg1Var = pw1Var.b((qg1) list.get(1));
            if (qg1Var instanceof cg1) {
                throw new IllegalArgumentException("Failed to parse initial value");
            }
        } else {
            if (pf1Var.v() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            }
            qg1Var = null;
        }
        gg1 gg1Var = (gg1) b;
        int v = pf1Var.v();
        int i = z ? 0 : v - 1;
        int i2 = z ? v - 1 : 0;
        int i3 = z ? 1 : -1;
        if (qg1Var == null) {
            qg1Var = pf1Var.s(i);
            i += i3;
        }
        while ((i2 - i) * i3 >= 0) {
            if (pf1Var.z(i)) {
                qg1Var = gg1Var.a(pw1Var, Arrays.asList(qg1Var, pf1Var.s(i), new yf1(Double.valueOf(i)), pf1Var));
                if (qg1Var instanceof cg1) {
                    throw new IllegalStateException("Reduce operation failed");
                }
                i += i3;
            } else {
                i += i3;
            }
        }
        return qg1Var;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public static qg1 d(String str, pf1 pf1Var, pw1 pw1Var, List list) {
        String str2;
        gg1 gg1Var;
        pw1 pw1Var2;
        char c;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1776922004:
                if (str.equals("toString")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    c2 = 2;
                    break;
                }
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    c2 = 3;
                    break;
                }
                break;
            case -895859076:
                if (str.equals("splice")) {
                    c = 4;
                    c2 = c;
                    break;
                }
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    c = 5;
                    c2 = c;
                    break;
                }
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    c = 6;
                    c2 = c;
                    break;
                }
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    c = 7;
                    c2 = c;
                    break;
                }
                break;
            case 107868:
                if (str.equals("map")) {
                    c = '\b';
                    c2 = c;
                    break;
                }
                break;
            case 111185:
                if (str.equals("pop")) {
                    c = '\t';
                    c2 = c;
                    break;
                }
                break;
            case 3267882:
                if (str.equals("join")) {
                    c = '\n';
                    c2 = c;
                    break;
                }
                break;
            case 3452698:
                if (str.equals("push")) {
                    c = 11;
                    c2 = c;
                    break;
                }
                break;
            case 3536116:
                if (str.equals("some")) {
                    c = '\f';
                    c2 = c;
                    break;
                }
                break;
            case 3536286:
                if (str.equals("sort")) {
                    c = '\r';
                    c2 = c;
                    break;
                }
                break;
            case 96891675:
                if (str.equals("every")) {
                    c = 14;
                    c2 = c;
                    break;
                }
                break;
            case 109407362:
                if (str.equals("shift")) {
                    c = 15;
                    c2 = c;
                    break;
                }
                break;
            case 109526418:
                if (str.equals("slice")) {
                    c = 16;
                    c2 = c;
                    break;
                }
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    c = 17;
                    c2 = c;
                    break;
                }
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    c = 18;
                    c2 = c;
                    break;
                }
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    c = 19;
                    c2 = c;
                    break;
                }
                break;
        }
        double d = 0.0d;
        switch (c2) {
            case 0:
                iu1.g("toString", 0, list);
                return new ug1(pf1Var.toString());
            case 1:
                pf1 pf1Var2 = (pf1) pf1Var.c();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        qg1 b = pw1Var.b((qg1) it.next());
                        if (b instanceof cg1) {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                        int v = pf1Var2.v();
                        if (b instanceof pf1) {
                            pf1 pf1Var3 = (pf1) b;
                            Iterator A = pf1Var3.A();
                            while (A.hasNext()) {
                                Integer num = (Integer) A.next();
                                pf1Var2.y(num.intValue() + v, pf1Var3.s(num.intValue()));
                            }
                        } else {
                            pf1Var2.y(v, b);
                        }
                    }
                }
                return pf1Var2;
            case 2:
                iu1.g("filter", 1, list);
                qg1 b2 = pw1Var.b((qg1) list.get(0));
                if (!(b2 instanceof sg1)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (pf1Var.r() == 0) {
                    return new pf1();
                }
                pf1 pf1Var4 = (pf1) pf1Var.c();
                pf1 b3 = b(pf1Var, pw1Var, (sg1) b2, null, Boolean.TRUE);
                pf1 pf1Var5 = new pf1();
                Iterator A2 = b3.A();
                while (A2.hasNext()) {
                    pf1Var5.u(pf1Var4.s(((Integer) A2.next()).intValue()));
                }
                return pf1Var5;
            case q02.c.c /* 3 */:
                return c(pf1Var, pw1Var, list, true);
            case 4:
                if (list.isEmpty()) {
                    return new pf1();
                }
                int a = (int) iu1.a(pw1Var.b((qg1) list.get(0)).f().doubleValue());
                if (a < 0) {
                    a = Math.max(0, a + pf1Var.v());
                } else if (a > pf1Var.v()) {
                    a = pf1Var.v();
                }
                int v2 = pf1Var.v();
                pf1 pf1Var6 = new pf1();
                if (list.size() <= 1) {
                    while (a < v2) {
                        pf1Var6.u(pf1Var.s(a));
                        pf1Var.y(a, null);
                        a++;
                    }
                    return pf1Var6;
                }
                int max = Math.max(0, (int) iu1.a(pw1Var.b((qg1) list.get(1)).f().doubleValue()));
                if (max > 0) {
                    for (int i = a; i < Math.min(v2, a + max); i++) {
                        pf1Var6.u(pf1Var.s(a));
                        pf1Var.x(a);
                    }
                }
                if (list.size() > 2) {
                    for (int i2 = 2; i2 < list.size(); i2++) {
                        qg1 b4 = pw1Var.b((qg1) list.get(i2));
                        if (b4 instanceof cg1) {
                            throw new IllegalArgumentException("Failed to parse elements to add");
                        }
                        pf1Var.t((a + i2) - 2, b4);
                    }
                }
                return pf1Var6;
            case q02.c.e /* 5 */:
                iu1.g("forEach", 1, list);
                qg1 b5 = pw1Var.b((qg1) list.get(0));
                if (!(b5 instanceof sg1)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (pf1Var.r() == 0) {
                    return qg1.e;
                }
                a(pf1Var, pw1Var, (sg1) b5);
                return qg1.e;
            case q02.c.f /* 6 */:
                iu1.n("lastIndexOf", 2, list);
                qg1 qg1Var = qg1.e;
                if (!list.isEmpty()) {
                    qg1Var = pw1Var.b((qg1) list.get(0));
                }
                double v3 = pf1Var.v() - 1;
                if (list.size() > 1) {
                    qg1 b6 = pw1Var.b((qg1) list.get(1));
                    v3 = Double.isNaN(b6.f().doubleValue()) ? pf1Var.v() - 1 : iu1.a(b6.f().doubleValue());
                    if (v3 < 0.0d) {
                        v3 += pf1Var.v();
                    }
                }
                if (v3 < 0.0d) {
                    return new yf1(Double.valueOf(-1.0d));
                }
                for (int min = (int) Math.min(pf1Var.v(), v3); min >= 0; min--) {
                    if (pf1Var.z(min) && iu1.h(pf1Var.s(min), qg1Var)) {
                        return new yf1(Double.valueOf(min));
                    }
                }
                return new yf1(Double.valueOf(-1.0d));
            case q02.c.g /* 7 */:
                if (!list.isEmpty()) {
                    pf1 pf1Var7 = new pf1();
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        qg1 b7 = pw1Var.b((qg1) it2.next());
                        if (b7 instanceof cg1) {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                        pf1Var7.u(b7);
                    }
                    int v4 = pf1Var7.v();
                    Iterator A3 = pf1Var.A();
                    while (A3.hasNext()) {
                        Integer num2 = (Integer) A3.next();
                        pf1Var7.y(num2.intValue() + v4, pf1Var.s(num2.intValue()));
                    }
                    pf1Var.C();
                    Iterator A4 = pf1Var7.A();
                    while (A4.hasNext()) {
                        Integer num3 = (Integer) A4.next();
                        pf1Var.y(num3.intValue(), pf1Var7.s(num3.intValue()));
                    }
                }
                return new yf1(Double.valueOf(pf1Var.v()));
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                iu1.g("map", 1, list);
                qg1 b8 = pw1Var.b((qg1) list.get(0));
                if (b8 instanceof sg1) {
                    return pf1Var.v() == 0 ? new pf1() : a(pf1Var, pw1Var, (sg1) b8);
                }
                throw new IllegalArgumentException("Callback should be a method");
            case '\t':
                iu1.g("pop", 0, list);
                int v5 = pf1Var.v();
                if (v5 == 0) {
                    return qg1.e;
                }
                int i3 = v5 - 1;
                qg1 s = pf1Var.s(i3);
                pf1Var.x(i3);
                return s;
            case '\n':
                iu1.n("join", 1, list);
                if (pf1Var.v() == 0) {
                    return qg1.l;
                }
                if (list.isEmpty()) {
                    str2 = ",";
                } else {
                    qg1 b9 = pw1Var.b((qg1) list.get(0));
                    str2 = ((b9 instanceof mg1) || (b9 instanceof eh1)) ? "" : b9.g();
                }
                return new ug1(pf1Var.w(str2));
            case 11:
                if (!list.isEmpty()) {
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        pf1Var.u(pw1Var.b((qg1) it3.next()));
                    }
                }
                return new yf1(Double.valueOf(pf1Var.v()));
            case '\f':
                iu1.g("some", 1, list);
                qg1 b10 = pw1Var.b((qg1) list.get(0));
                if (!(b10 instanceof gg1)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (pf1Var.v() != 0) {
                    gg1 gg1Var2 = (gg1) b10;
                    Iterator A5 = pf1Var.A();
                    while (A5.hasNext()) {
                        int intValue = ((Integer) A5.next()).intValue();
                        if (pf1Var.z(intValue) && gg1Var2.a(pw1Var, Arrays.asList(pf1Var.s(intValue), new yf1(Double.valueOf(intValue)), pf1Var)).d().booleanValue()) {
                            return qg1.j;
                        }
                    }
                }
                return qg1.k;
            case '\r':
                iu1.n("sort", 1, list);
                if (pf1Var.v() >= 2) {
                    List B = pf1Var.B();
                    if (list.isEmpty()) {
                        gg1Var = null;
                    } else {
                        qg1 b11 = pw1Var.b((qg1) list.get(0));
                        if (!(b11 instanceof gg1)) {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                        gg1Var = (gg1) b11;
                    }
                    Collections.sort(B, new ri1(gg1Var, pw1Var));
                    pf1Var.C();
                    Iterator it4 = B.iterator();
                    int i4 = 0;
                    while (it4.hasNext()) {
                        pf1Var.y(i4, (qg1) it4.next());
                        i4++;
                    }
                }
                return pf1Var;
            case 14:
                iu1.g("every", 1, list);
                qg1 b12 = pw1Var.b((qg1) list.get(0));
                if (b12 instanceof sg1) {
                    return (pf1Var.v() == 0 || b(pf1Var, pw1Var, (sg1) b12, Boolean.FALSE, Boolean.TRUE).v() == pf1Var.v()) ? qg1.j : qg1.k;
                }
                throw new IllegalArgumentException("Callback should be a method");
            case 15:
                iu1.g("shift", 0, list);
                if (pf1Var.v() == 0) {
                    return qg1.e;
                }
                qg1 s2 = pf1Var.s(0);
                pf1Var.x(0);
                return s2;
            case PackageParser.PARSE_FORWARD_LOCK /* 16 */:
                iu1.n("slice", 2, list);
                if (list.isEmpty()) {
                    return pf1Var.c();
                }
                double v6 = pf1Var.v();
                double a2 = iu1.a(pw1Var.b((qg1) list.get(0)).f().doubleValue());
                double max2 = a2 < 0.0d ? Math.max(a2 + v6, 0.0d) : Math.min(a2, v6);
                if (list.size() == 2) {
                    double a3 = iu1.a(pw1Var.b((qg1) list.get(1)).f().doubleValue());
                    v6 = a3 < 0.0d ? Math.max(v6 + a3, 0.0d) : Math.min(v6, a3);
                }
                pf1 pf1Var8 = new pf1();
                for (int i5 = (int) max2; i5 < v6; i5++) {
                    pf1Var8.u(pf1Var.s(i5));
                }
                return pf1Var8;
            case 17:
                return c(pf1Var, pw1Var, list, false);
            case 18:
                iu1.g("reverse", 0, list);
                int v7 = pf1Var.v();
                if (v7 != 0) {
                    for (int i6 = 0; i6 < v7 / 2; i6++) {
                        if (pf1Var.z(i6)) {
                            qg1 s3 = pf1Var.s(i6);
                            pf1Var.y(i6, null);
                            int i7 = (v7 - 1) - i6;
                            if (pf1Var.z(i7)) {
                                pf1Var.y(i6, pf1Var.s(i7));
                            }
                            pf1Var.y(i7, s3);
                        }
                    }
                }
                return pf1Var;
            case 19:
                iu1.n("indexOf", 2, list);
                qg1 qg1Var2 = qg1.e;
                if (list.isEmpty()) {
                    pw1Var2 = pw1Var;
                } else {
                    pw1Var2 = pw1Var;
                    qg1Var2 = pw1Var2.b((qg1) list.get(0));
                }
                if (list.size() > 1) {
                    double a4 = iu1.a(pw1Var2.b((qg1) list.get(1)).f().doubleValue());
                    if (a4 >= pf1Var.v()) {
                        return new yf1(Double.valueOf(-1.0d));
                    }
                    d = a4 < 0.0d ? pf1Var.v() + a4 : a4;
                }
                Iterator A6 = pf1Var.A();
                while (A6.hasNext()) {
                    int intValue2 = ((Integer) A6.next()).intValue();
                    double d2 = intValue2;
                    if (d2 >= d && iu1.h(pf1Var.s(intValue2), qg1Var2)) {
                        return new yf1(Double.valueOf(d2));
                    }
                }
                return new yf1(Double.valueOf(-1.0d));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }
}
