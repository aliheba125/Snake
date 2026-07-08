package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class pj1 extends gh1 {
    public pj1() {
        this.a.add(tj1.ASSIGN);
        this.a.add(tj1.CONST);
        this.a.add(tj1.CREATE_ARRAY);
        this.a.add(tj1.CREATE_OBJECT);
        this.a.add(tj1.EXPRESSION_LIST);
        this.a.add(tj1.GET);
        this.a.add(tj1.GET_INDEX);
        this.a.add(tj1.GET_PROPERTY);
        this.a.add(tj1.NULL);
        this.a.add(tj1.SET_PROPERTY);
        this.a.add(tj1.TYPEOF);
        this.a.add(tj1.UNDEFINED);
        this.a.add(tj1.VAR);
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        String str2;
        int i = 0;
        switch (nj1.a[iu1.c(str).ordinal()]) {
            case 1:
                iu1.f(tj1.ASSIGN, 2, list);
                qg1 b = pw1Var.b((qg1) list.get(0));
                if (!(b instanceof ug1)) {
                    throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", b.getClass().getCanonicalName()));
                }
                if (!pw1Var.g(b.g())) {
                    throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", b.g()));
                }
                qg1 b2 = pw1Var.b((qg1) list.get(1));
                pw1Var.h(b.g(), b2);
                return b2;
            case 2:
                iu1.j(tj1.CONST, 2, list);
                if (list.size() % 2 != 0) {
                    throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                }
                while (i < list.size() - 1) {
                    qg1 b3 = pw1Var.b((qg1) list.get(i));
                    if (!(b3 instanceof ug1)) {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", b3.getClass().getCanonicalName()));
                    }
                    pw1Var.f(b3.g(), pw1Var.b((qg1) list.get(i + 1)));
                    i += 2;
                }
                return qg1.e;
            case q02.c.c /* 3 */:
                if (list.isEmpty()) {
                    return new pf1();
                }
                pf1 pf1Var = new pf1();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    qg1 b4 = pw1Var.b((qg1) it.next());
                    if (b4 instanceof cg1) {
                        throw new IllegalStateException("Failed to evaluate array element");
                    }
                    pf1Var.y(i, b4);
                    i++;
                }
                return pf1Var;
            case 4:
                if (list.isEmpty()) {
                    return new og1();
                }
                if (list.size() % 2 != 0) {
                    throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                }
                og1 og1Var = new og1();
                while (i < list.size() - 1) {
                    qg1 b5 = pw1Var.b((qg1) list.get(i));
                    qg1 b6 = pw1Var.b((qg1) list.get(i + 1));
                    if ((b5 instanceof cg1) || (b6 instanceof cg1)) {
                        throw new IllegalStateException("Failed to evaluate map entry");
                    }
                    og1Var.n(b5.g(), b6);
                    i += 2;
                }
                return og1Var;
            case q02.c.e /* 5 */:
                iu1.j(tj1.EXPRESSION_LIST, 1, list);
                qg1 qg1Var = qg1.e;
                while (i < list.size()) {
                    qg1Var = pw1Var.b((qg1) list.get(i));
                    if (qg1Var instanceof cg1) {
                        throw new IllegalStateException("ControlValue cannot be in an expression list");
                    }
                    i++;
                }
                return qg1Var;
            case q02.c.f /* 6 */:
                iu1.f(tj1.GET, 1, list);
                qg1 b7 = pw1Var.b((qg1) list.get(0));
                if (b7 instanceof ug1) {
                    return pw1Var.c(b7.g());
                }
                throw new IllegalArgumentException(String.format("Expected string for get var. got %s", b7.getClass().getCanonicalName()));
            case q02.c.g /* 7 */:
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                iu1.f(tj1.GET_PROPERTY, 2, list);
                qg1 b8 = pw1Var.b((qg1) list.get(0));
                qg1 b9 = pw1Var.b((qg1) list.get(1));
                if ((b8 instanceof pf1) && iu1.l(b9)) {
                    return ((pf1) b8).s(b9.f().intValue());
                }
                if (b8 instanceof eg1) {
                    return ((eg1) b8).h(b9.g());
                }
                if (b8 instanceof ug1) {
                    if ("length".equals(b9.g())) {
                        return new yf1(Double.valueOf(b8.g().length()));
                    }
                    if (iu1.l(b9) && b9.f().doubleValue() < b8.g().length()) {
                        return new ug1(String.valueOf(b8.g().charAt(b9.f().intValue())));
                    }
                }
                return qg1.e;
            case 9:
                iu1.f(tj1.NULL, 0, list);
                return qg1.f;
            case 10:
                iu1.f(tj1.SET_PROPERTY, 3, list);
                qg1 b10 = pw1Var.b((qg1) list.get(0));
                qg1 b11 = pw1Var.b((qg1) list.get(1));
                qg1 b12 = pw1Var.b((qg1) list.get(2));
                if (b10 == qg1.e || b10 == qg1.f) {
                    throw new IllegalStateException(String.format("Can't set property %s of %s", b11.g(), b10.g()));
                }
                if ((b10 instanceof pf1) && (b11 instanceof yf1)) {
                    ((pf1) b10).y(b11.f().intValue(), b12);
                } else if (b10 instanceof eg1) {
                    ((eg1) b10).n(b11.g(), b12);
                }
                return b12;
            case 11:
                iu1.f(tj1.TYPEOF, 1, list);
                qg1 b13 = pw1Var.b((qg1) list.get(0));
                if (b13 instanceof eh1) {
                    str2 = "undefined";
                } else if (b13 instanceof sf1) {
                    str2 = "boolean";
                } else if (b13 instanceof yf1) {
                    str2 = "number";
                } else if (b13 instanceof ug1) {
                    str2 = "string";
                } else if (b13 instanceof sg1) {
                    str2 = "function";
                } else {
                    if ((b13 instanceof wg1) || (b13 instanceof cg1)) {
                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", b13));
                    }
                    str2 = "object";
                }
                return new ug1(str2);
            case 12:
                iu1.f(tj1.UNDEFINED, 0, list);
                return qg1.e;
            case 13:
                iu1.j(tj1.VAR, 1, list);
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    qg1 b14 = pw1Var.b((qg1) it2.next());
                    if (!(b14 instanceof ug1)) {
                        throw new IllegalArgumentException(String.format("Expected string for var name. got %s", b14.getClass().getCanonicalName()));
                    }
                    pw1Var.e(b14.g(), qg1.e);
                }
                return qg1.e;
            default:
                return super.a(str);
        }
    }
}
