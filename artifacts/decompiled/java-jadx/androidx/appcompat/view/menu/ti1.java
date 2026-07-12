package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ti1 extends gh1 {
    public ti1() {
        this.a.add(tj1.FOR_IN);
        this.a.add(tj1.FOR_IN_CONST);
        this.a.add(tj1.FOR_IN_LET);
        this.a.add(tj1.FOR_LET);
        this.a.add(tj1.FOR_OF);
        this.a.add(tj1.FOR_OF_CONST);
        this.a.add(tj1.FOR_OF_LET);
        this.a.add(tj1.WHILE);
    }

    public static qg1 c(bj1 bj1Var, qg1 qg1Var, qg1 qg1Var2) {
        return d(bj1Var, qg1Var.i(), qg1Var2);
    }

    public static qg1 d(bj1 bj1Var, Iterator it, qg1 qg1Var) {
        if (it != null) {
            while (it.hasNext()) {
                qg1 a = bj1Var.a((qg1) it.next()).a((pf1) qg1Var);
                if (a instanceof cg1) {
                    cg1 cg1Var = (cg1) a;
                    if ("break".equals(cg1Var.b())) {
                        return qg1.e;
                    }
                    if ("return".equals(cg1Var.b())) {
                        return cg1Var;
                    }
                }
            }
        }
        return qg1.e;
    }

    public static qg1 e(bj1 bj1Var, qg1 qg1Var, qg1 qg1Var2) {
        if (qg1Var instanceof Iterable) {
            return d(bj1Var, ((Iterable) qg1Var).iterator(), qg1Var2);
        }
        throw new IllegalArgumentException("Non-iterable type in for...of loop.");
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        switch (zi1.a[iu1.c(str).ordinal()]) {
            case 1:
                iu1.f(tj1.FOR_IN, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN must be a string");
                }
                return c(new hj1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case 2:
                iu1.f(tj1.FOR_IN_CONST, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_CONST must be a string");
                }
                return c(new xi1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case q02.c.c /* 3 */:
                iu1.f(tj1.FOR_IN_LET, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_IN_LET must be a string");
                }
                return c(new dj1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case 4:
                iu1.f(tj1.FOR_LET, 4, list);
                qg1 b = pw1Var.b((qg1) list.get(0));
                if (!(b instanceof pf1)) {
                    throw new IllegalArgumentException("Initializer variables in FOR_LET must be an ArrayList");
                }
                pf1 pf1Var = (pf1) b;
                qg1 qg1Var = (qg1) list.get(1);
                qg1 qg1Var2 = (qg1) list.get(2);
                qg1 b2 = pw1Var.b((qg1) list.get(3));
                pw1 d = pw1Var.d();
                for (int i = 0; i < pf1Var.v(); i++) {
                    String g = pf1Var.s(i).g();
                    d.h(g, pw1Var.c(g));
                }
                while (pw1Var.b(qg1Var).d().booleanValue()) {
                    qg1 a = pw1Var.a((pf1) b2);
                    if (a instanceof cg1) {
                        cg1 cg1Var = (cg1) a;
                        if ("break".equals(cg1Var.b())) {
                            return qg1.e;
                        }
                        if ("return".equals(cg1Var.b())) {
                            return cg1Var;
                        }
                    }
                    pw1 d2 = pw1Var.d();
                    for (int i2 = 0; i2 < pf1Var.v(); i2++) {
                        String g2 = pf1Var.s(i2).g();
                        d2.h(g2, d.c(g2));
                    }
                    d2.b(qg1Var2);
                    d = d2;
                }
                return qg1.e;
            case q02.c.e /* 5 */:
                iu1.f(tj1.FOR_OF, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF must be a string");
                }
                return e(new hj1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case q02.c.f /* 6 */:
                iu1.f(tj1.FOR_OF_CONST, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_CONST must be a string");
                }
                return e(new xi1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case q02.c.g /* 7 */:
                iu1.f(tj1.FOR_OF_LET, 3, list);
                if (!(list.get(0) instanceof ug1)) {
                    throw new IllegalArgumentException("Variable name in FOR_OF_LET must be a string");
                }
                return e(new dj1(pw1Var, ((qg1) list.get(0)).g()), pw1Var.b((qg1) list.get(1)), pw1Var.b((qg1) list.get(2)));
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                iu1.f(tj1.WHILE, 4, list);
                qg1 qg1Var3 = (qg1) list.get(0);
                qg1 qg1Var4 = (qg1) list.get(1);
                qg1 qg1Var5 = (qg1) list.get(2);
                qg1 b3 = pw1Var.b((qg1) list.get(3));
                if (pw1Var.b(qg1Var5).d().booleanValue()) {
                    qg1 a2 = pw1Var.a((pf1) b3);
                    if (a2 instanceof cg1) {
                        cg1 cg1Var2 = (cg1) a2;
                        if (!"break".equals(cg1Var2.b())) {
                            if ("return".equals(cg1Var2.b())) {
                                return cg1Var2;
                            }
                        }
                        return qg1.e;
                    }
                }
                while (pw1Var.b(qg1Var3).d().booleanValue()) {
                    qg1 a3 = pw1Var.a((pf1) b3);
                    if (a3 instanceof cg1) {
                        cg1 cg1Var3 = (cg1) a3;
                        if ("break".equals(cg1Var3.b())) {
                            return qg1.e;
                        }
                        if ("return".equals(cg1Var3.b())) {
                            return cg1Var3;
                        }
                    }
                    pw1Var.b(qg1Var4);
                }
                return qg1.e;
            default:
                return super.a(str);
        }
    }
}
