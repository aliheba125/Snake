package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class ch1 extends gh1 {
    public ch1() {
        this.a.add(tj1.BITWISE_AND);
        this.a.add(tj1.BITWISE_LEFT_SHIFT);
        this.a.add(tj1.BITWISE_NOT);
        this.a.add(tj1.BITWISE_OR);
        this.a.add(tj1.BITWISE_RIGHT_SHIFT);
        this.a.add(tj1.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.a.add(tj1.BITWISE_XOR);
    }

    @Override // androidx.appcompat.view.menu.gh1
    public final qg1 b(String str, pw1 pw1Var, List list) {
        switch (ih1.a[iu1.c(str).ordinal()]) {
            case 1:
                iu1.f(tj1.BITWISE_AND, 2, list);
                return new yf1(Double.valueOf(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()) & iu1.i(pw1Var.b((qg1) list.get(1)).f().doubleValue())));
            case 2:
                iu1.f(tj1.BITWISE_LEFT_SHIFT, 2, list);
                return new yf1(Double.valueOf(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()) << ((int) (iu1.m(pw1Var.b((qg1) list.get(1)).f().doubleValue()) & 31))));
            case q02.c.c /* 3 */:
                iu1.f(tj1.BITWISE_NOT, 1, list);
                return new yf1(Double.valueOf(~iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue())));
            case 4:
                iu1.f(tj1.BITWISE_OR, 2, list);
                return new yf1(Double.valueOf(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()) | iu1.i(pw1Var.b((qg1) list.get(1)).f().doubleValue())));
            case q02.c.e /* 5 */:
                iu1.f(tj1.BITWISE_RIGHT_SHIFT, 2, list);
                return new yf1(Double.valueOf(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()) >> ((int) (iu1.m(pw1Var.b((qg1) list.get(1)).f().doubleValue()) & 31))));
            case q02.c.f /* 6 */:
                iu1.f(tj1.BITWISE_UNSIGNED_RIGHT_SHIFT, 2, list);
                return new yf1(Double.valueOf(iu1.m(pw1Var.b((qg1) list.get(0)).f().doubleValue()) >>> ((int) (iu1.m(pw1Var.b((qg1) list.get(1)).f().doubleValue()) & 31))));
            case q02.c.g /* 7 */:
                iu1.f(tj1.BITWISE_XOR, 2, list);
                return new yf1(Double.valueOf(iu1.i(pw1Var.b((qg1) list.get(0)).f().doubleValue()) ^ iu1.i(pw1Var.b((qg1) list.get(1)).f().doubleValue())));
            default:
                return super.a(str);
        }
    }
}
