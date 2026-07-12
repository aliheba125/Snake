package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class hi1 extends gh1 {
    public hi1() {
        this.a.add(tj1.APPLY);
        this.a.add(tj1.BLOCK);
        this.a.add(tj1.BREAK);
        this.a.add(tj1.CASE);
        this.a.add(tj1.DEFAULT);
        this.a.add(tj1.CONTINUE);
        this.a.add(tj1.DEFINE_FUNCTION);
        this.a.add(tj1.FN);
        this.a.add(tj1.IF);
        this.a.add(tj1.QUOTE);
        this.a.add(tj1.RETURN);
        this.a.add(tj1.SWITCH);
        this.a.add(tj1.TERNARY);
    }

    public static qg1 c(pw1 pw1Var, List list) {
        iu1.j(tj1.FN, 2, list);
        qg1 b = pw1Var.b((qg1) list.get(0));
        qg1 b2 = pw1Var.b((qg1) list.get(1));
        if (!(b2 instanceof pf1)) {
            throw new IllegalArgumentException(String.format("FN requires an ArrayValue of parameter names found %s", b2.getClass().getCanonicalName()));
        }
        List B = ((pf1) b2).B();
        List arrayList = new ArrayList();
        if (list.size() > 2) {
            arrayList = list.subList(2, list.size());
        }
        return new sg1(b.g(), B, arrayList, pw1Var);
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        int i = 0;
        switch (ni1.a[iu1.c(str).ordinal()]) {
            case 1:
                iu1.f(tj1.APPLY, 3, list);
                qg1 b = pw1Var.b((qg1) list.get(0));
                String g = pw1Var.b((qg1) list.get(1)).g();
                qg1 b2 = pw1Var.b((qg1) list.get(2));
                if (!(b2 instanceof pf1)) {
                    throw new IllegalArgumentException(String.format("Function arguments for Apply are not a list found %s", b2.getClass().getCanonicalName()));
                }
                if (g.isEmpty()) {
                    throw new IllegalArgumentException("Function name for apply is undefined");
                }
                return b.p(g, pw1Var, ((pf1) b2).B());
            case 2:
                return pw1Var.d().a(new pf1(list));
            case q02.c.c /* 3 */:
                iu1.f(tj1.BREAK, 0, list);
                return qg1.h;
            case 4:
            case q02.c.e /* 5 */:
                if (!list.isEmpty()) {
                    qg1 b3 = pw1Var.b((qg1) list.get(0));
                    if (b3 instanceof pf1) {
                        return pw1Var.a((pf1) b3);
                    }
                }
                return qg1.e;
            case q02.c.f /* 6 */:
                iu1.f(tj1.BREAK, 0, list);
                return qg1.g;
            case q02.c.g /* 7 */:
                iu1.j(tj1.DEFINE_FUNCTION, 2, list);
                sg1 sg1Var = (sg1) c(pw1Var, list);
                if (sg1Var.b() == null) {
                    pw1Var.h("", sg1Var);
                } else {
                    pw1Var.h(sg1Var.b(), sg1Var);
                }
                return sg1Var;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                return c(pw1Var, list);
            case 9:
                iu1.j(tj1.IF, 2, list);
                qg1 b4 = pw1Var.b((qg1) list.get(0));
                qg1 b5 = pw1Var.b((qg1) list.get(1));
                qg1 b6 = list.size() > 2 ? pw1Var.b((qg1) list.get(2)) : null;
                qg1 qg1Var = qg1.e;
                qg1 a = b4.d().booleanValue() ? pw1Var.a((pf1) b5) : b6 != null ? pw1Var.a((pf1) b6) : qg1Var;
                return a instanceof cg1 ? a : qg1Var;
            case 10:
                return new pf1(list);
            case 11:
                if (list.isEmpty()) {
                    return qg1.i;
                }
                iu1.f(tj1.RETURN, 1, list);
                return new cg1("return", pw1Var.b((qg1) list.get(0)));
            case 12:
                iu1.f(tj1.SWITCH, 3, list);
                qg1 b7 = pw1Var.b((qg1) list.get(0));
                qg1 b8 = pw1Var.b((qg1) list.get(1));
                qg1 b9 = pw1Var.b((qg1) list.get(2));
                if (!(b8 instanceof pf1)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, cases are not a list");
                }
                if (!(b9 instanceof pf1)) {
                    throw new IllegalArgumentException("Malformed SWITCH statement, case statements are not a list");
                }
                pf1 pf1Var = (pf1) b8;
                pf1 pf1Var2 = (pf1) b9;
                boolean z = false;
                while (true) {
                    if (i < pf1Var.v()) {
                        if (z || b7.equals(pw1Var.b(pf1Var.s(i)))) {
                            qg1 b10 = pw1Var.b(pf1Var2.s(i));
                            if (!(b10 instanceof cg1)) {
                                z = true;
                            } else if (!((cg1) b10).b().equals("break")) {
                                return b10;
                            }
                        }
                        i++;
                    } else if (pf1Var.v() + 1 == pf1Var2.v()) {
                        qg1 b11 = pw1Var.b(pf1Var2.s(pf1Var.v()));
                        if (b11 instanceof cg1) {
                            String b12 = ((cg1) b11).b();
                            if (b12.equals("return") || b12.equals("continue")) {
                                return b11;
                            }
                        }
                    }
                }
                return qg1.e;
            case 13:
                iu1.f(tj1.TERNARY, 3, list);
                return pw1Var.b((qg1) list.get(0)).d().booleanValue() ? pw1Var.b((qg1) list.get(1)) : pw1Var.b((qg1) list.get(2));
            default:
                return super.a(str);
        }
    }
}
