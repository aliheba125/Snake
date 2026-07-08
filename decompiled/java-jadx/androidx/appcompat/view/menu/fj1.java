package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class fj1 extends gh1 {
    public fj1() {
        this.a.add(tj1.ADD);
        this.a.add(tj1.DIVIDE);
        this.a.add(tj1.MODULUS);
        this.a.add(tj1.MULTIPLY);
        this.a.add(tj1.NEGATE);
        this.a.add(tj1.POST_DECREMENT);
        this.a.add(tj1.POST_INCREMENT);
        this.a.add(tj1.PRE_DECREMENT);
        this.a.add(tj1.PRE_INCREMENT);
        this.a.add(tj1.SUBTRACT);
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        switch (lj1.a[iu1.c(str).ordinal()]) {
            case 1:
                iu1.f(tj1.ADD, 2, list);
                qg1 b = pw1Var.b((qg1) list.get(0));
                qg1 b2 = pw1Var.b((qg1) list.get(1));
                if (!(b instanceof eg1) && !(b instanceof ug1) && !(b2 instanceof eg1) && !(b2 instanceof ug1)) {
                    return new yf1(Double.valueOf(b.f().doubleValue() + b2.f().doubleValue()));
                }
                return new ug1(b.g() + b2.g());
            case 2:
                iu1.f(tj1.DIVIDE, 2, list);
                return new yf1(Double.valueOf(pw1Var.b((qg1) list.get(0)).f().doubleValue() / pw1Var.b((qg1) list.get(1)).f().doubleValue()));
            case q02.c.c /* 3 */:
                iu1.f(tj1.MODULUS, 2, list);
                return new yf1(Double.valueOf(pw1Var.b((qg1) list.get(0)).f().doubleValue() % pw1Var.b((qg1) list.get(1)).f().doubleValue()));
            case 4:
                iu1.f(tj1.MULTIPLY, 2, list);
                return new yf1(Double.valueOf(pw1Var.b((qg1) list.get(0)).f().doubleValue() * pw1Var.b((qg1) list.get(1)).f().doubleValue()));
            case q02.c.e /* 5 */:
                iu1.f(tj1.NEGATE, 1, list);
                return new yf1(Double.valueOf(pw1Var.b((qg1) list.get(0)).f().doubleValue() * (-1.0d)));
            case q02.c.f /* 6 */:
            case q02.c.g /* 7 */:
                iu1.g(str, 2, list);
                qg1 b3 = pw1Var.b((qg1) list.get(0));
                pw1Var.b((qg1) list.get(1));
                return b3;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
            case 9:
                iu1.g(str, 1, list);
                return pw1Var.b((qg1) list.get(0));
            case 10:
                iu1.f(tj1.SUBTRACT, 2, list);
                return new yf1(Double.valueOf(pw1Var.b((qg1) list.get(0)).f().doubleValue() + new yf1(Double.valueOf(pw1Var.b((qg1) list.get(1)).f().doubleValue() * (-1.0d))).f().doubleValue()));
            default:
                return super.a(str);
        }
    }
}
