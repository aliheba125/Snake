package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class di1 extends gh1 {
    public di1() {
        this.a.add(tj1.EQUALS);
        this.a.add(tj1.GREATER_THAN);
        this.a.add(tj1.GREATER_THAN_EQUALS);
        this.a.add(tj1.IDENTITY_EQUALS);
        this.a.add(tj1.IDENTITY_NOT_EQUALS);
        this.a.add(tj1.LESS_THAN);
        this.a.add(tj1.LESS_THAN_EQUALS);
        this.a.add(tj1.NOT_EQUALS);
    }

    public static boolean c(qg1 qg1Var, qg1 qg1Var2) {
        qg1 yf1Var;
        qg1 yf1Var2;
        while (!qg1Var.getClass().equals(qg1Var2.getClass())) {
            if (((qg1Var instanceof eh1) || (qg1Var instanceof mg1)) && ((qg1Var2 instanceof eh1) || (qg1Var2 instanceof mg1))) {
                return true;
            }
            boolean z = qg1Var instanceof yf1;
            if (z && (qg1Var2 instanceof ug1)) {
                yf1Var2 = new yf1(qg1Var2.f());
            } else {
                boolean z2 = qg1Var instanceof ug1;
                if (z2 && (qg1Var2 instanceof yf1)) {
                    yf1Var = new yf1(qg1Var.f());
                } else if (qg1Var instanceof sf1) {
                    yf1Var = new yf1(qg1Var.f());
                } else if (qg1Var2 instanceof sf1) {
                    yf1Var2 = new yf1(qg1Var2.f());
                } else if ((z2 || z) && (qg1Var2 instanceof eg1)) {
                    yf1Var2 = new ug1(qg1Var2.g());
                } else {
                    if (!(qg1Var instanceof eg1) || (!(qg1Var2 instanceof ug1) && !(qg1Var2 instanceof yf1))) {
                        return false;
                    }
                    yf1Var = new ug1(qg1Var.g());
                }
                qg1Var = yf1Var;
            }
            qg1Var2 = yf1Var2;
        }
        if ((qg1Var instanceof eh1) || (qg1Var instanceof mg1)) {
            return true;
        }
        return qg1Var instanceof yf1 ? (Double.isNaN(qg1Var.f().doubleValue()) || Double.isNaN(qg1Var2.f().doubleValue()) || qg1Var.f().doubleValue() != qg1Var2.f().doubleValue()) ? false : true : qg1Var instanceof ug1 ? qg1Var.g().equals(qg1Var2.g()) : qg1Var instanceof sf1 ? qg1Var.d().equals(qg1Var2.d()) : qg1Var == qg1Var2;
    }

    public static boolean d(qg1 qg1Var, qg1 qg1Var2) {
        if (qg1Var instanceof eg1) {
            qg1Var = new ug1(qg1Var.g());
        }
        if (qg1Var2 instanceof eg1) {
            qg1Var2 = new ug1(qg1Var2.g());
        }
        if ((qg1Var instanceof ug1) && (qg1Var2 instanceof ug1)) {
            return qg1Var.g().compareTo(qg1Var2.g()) < 0;
        }
        double doubleValue = qg1Var.f().doubleValue();
        double doubleValue2 = qg1Var2.f().doubleValue();
        return (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2) || (doubleValue == 0.0d && doubleValue2 == -0.0d) || ((doubleValue == -0.0d && doubleValue2 == 0.0d) || Double.compare(doubleValue, doubleValue2) >= 0)) ? false : true;
    }

    public static boolean e(qg1 qg1Var, qg1 qg1Var2) {
        if (qg1Var instanceof eg1) {
            qg1Var = new ug1(qg1Var.g());
        }
        if (qg1Var2 instanceof eg1) {
            qg1Var2 = new ug1(qg1Var2.g());
        }
        return (((qg1Var instanceof ug1) && (qg1Var2 instanceof ug1)) || !(Double.isNaN(qg1Var.f().doubleValue()) || Double.isNaN(qg1Var2.f().doubleValue()))) && !d(qg1Var2, qg1Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005f  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005c  */
    @Override // androidx.appcompat.view.menu.gh1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final qg1 b(String str, pw1 pw1Var, List list) {
        boolean c;
        boolean h;
        iu1.f(iu1.c(str), 2, list);
        qg1 b = pw1Var.b((qg1) list.get(0));
        qg1 b2 = pw1Var.b((qg1) list.get(1));
        switch (ji1.a[iu1.c(str).ordinal()]) {
            case 1:
                c = c(b, b2);
                return !c ? qg1.j : qg1.k;
            case 2:
                c = d(b2, b);
                if (!c) {
                }
                break;
            case q02.c.c /* 3 */:
                c = e(b2, b);
                if (!c) {
                }
                break;
            case 4:
                c = iu1.h(b, b2);
                if (!c) {
                }
                break;
            case q02.c.e /* 5 */:
                h = iu1.h(b, b2);
                c = !h;
                if (!c) {
                }
                break;
            case q02.c.f /* 6 */:
                c = d(b, b2);
                if (!c) {
                }
                break;
            case q02.c.g /* 7 */:
                c = e(b, b2);
                if (!c) {
                }
                break;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                h = c(b, b2);
                c = !h;
                if (!c) {
                }
                break;
            default:
                return super.a(str);
        }
    }
}
