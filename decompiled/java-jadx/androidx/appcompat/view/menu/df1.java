package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.rq1;
import androidx.appcompat.view.menu.tq1;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public abstract class df1 {
    public String a;
    public int b;
    public Boolean c;
    public Boolean d;
    public Long e;
    public Long f;

    public df1(String str, int i) {
        this.a = str;
        this.b = i;
    }

    public static Boolean b(double d, rq1 rq1Var) {
        try {
            return h(new BigDecimal(d), rq1Var, Math.ulp(d));
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean c(long j, rq1 rq1Var) {
        try {
            return h(new BigDecimal(j), rq1Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean d(Boolean bool, boolean z) {
        if (bool == null) {
            return null;
        }
        return Boolean.valueOf(bool.booleanValue() != z);
    }

    public static Boolean e(String str, rq1 rq1Var) {
        if (!i92.f0(str)) {
            return null;
        }
        try {
            return h(new BigDecimal(str), rq1Var, 0.0d);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Boolean f(String str, tq1.a aVar, boolean z, String str2, List list, String str3, pt1 pt1Var) {
        if (str == null) {
            return null;
        }
        if (aVar == tq1.a.IN_LIST) {
            if (list == null || list.isEmpty()) {
                return null;
            }
        } else if (str2 == null) {
            return null;
        }
        if (!z && aVar != tq1.a.REGEXP) {
            str = str.toUpperCase(Locale.ENGLISH);
        }
        switch (mf2.a[aVar.ordinal()]) {
            case 1:
                if (str3 != null) {
                    try {
                        break;
                    } catch (PatternSyntaxException unused) {
                        if (pt1Var != null) {
                            pt1Var.L().b("Invalid regular expression in REGEXP audience filter. expression", str3);
                        }
                        return null;
                    }
                }
                break;
            case q02.c.f /* 6 */:
                if (list != null) {
                    break;
                }
                break;
        }
        return null;
    }

    public static Boolean g(String str, tq1 tq1Var, pt1 pt1Var) {
        List list;
        mj0.i(tq1Var);
        if (str == null || !tq1Var.O() || tq1Var.G() == tq1.a.UNKNOWN_MATCH_TYPE) {
            return null;
        }
        tq1.a G = tq1Var.G();
        tq1.a aVar = tq1.a.IN_LIST;
        if (G == aVar) {
            if (tq1Var.j() == 0) {
                return null;
            }
        } else if (!tq1Var.N()) {
            return null;
        }
        tq1.a G2 = tq1Var.G();
        boolean L = tq1Var.L();
        String J = (L || G2 == tq1.a.REGEXP || G2 == aVar) ? tq1Var.J() : tq1Var.J().toUpperCase(Locale.ENGLISH);
        if (tq1Var.j() == 0) {
            list = null;
        } else {
            List K = tq1Var.K();
            if (!L) {
                ArrayList arrayList = new ArrayList(K.size());
                Iterator it = K.iterator();
                while (it.hasNext()) {
                    arrayList.add(((String) it.next()).toUpperCase(Locale.ENGLISH));
                }
                K = Collections.unmodifiableList(arrayList);
            }
            list = K;
        }
        return f(str, G2, L, J, list, G2 == tq1.a.REGEXP ? J : null, pt1Var);
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x0080, code lost:
    
        if (r3 != null) goto L36;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Boolean h(BigDecimal bigDecimal, rq1 rq1Var, double d) {
        BigDecimal bigDecimal2;
        BigDecimal bigDecimal3;
        BigDecimal bigDecimal4;
        mj0.i(rq1Var);
        if (rq1Var.N() && rq1Var.G() != rq1.b.UNKNOWN_COMPARISON_TYPE) {
            rq1.b G = rq1Var.G();
            rq1.b bVar = rq1.b.BETWEEN;
            if (G == bVar) {
                if (!rq1Var.R() || !rq1Var.Q()) {
                    return null;
                }
            } else if (!rq1Var.O()) {
                return null;
            }
            rq1.b G2 = rq1Var.G();
            if (rq1Var.G() == bVar) {
                if (i92.f0(rq1Var.L()) && i92.f0(rq1Var.K())) {
                    try {
                        BigDecimal bigDecimal5 = new BigDecimal(rq1Var.L());
                        bigDecimal4 = new BigDecimal(rq1Var.K());
                        bigDecimal3 = bigDecimal5;
                        bigDecimal2 = null;
                    } catch (NumberFormatException unused) {
                    }
                }
                return null;
            }
            if (!i92.f0(rq1Var.J())) {
                return null;
            }
            try {
                bigDecimal2 = new BigDecimal(rq1Var.J());
                bigDecimal3 = null;
                bigDecimal4 = null;
            } catch (NumberFormatException unused2) {
            }
            if (G2 == bVar) {
                if (bigDecimal3 == null) {
                    return null;
                }
            }
            int i = mf2.b[G2.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 4 || bigDecimal3 == null) {
                            return null;
                        }
                        if (bigDecimal.compareTo(bigDecimal3) >= 0 && bigDecimal.compareTo(bigDecimal4) <= 0) {
                            r2 = true;
                        }
                        return Boolean.valueOf(r2);
                    }
                    if (bigDecimal2 != null) {
                        if (d == 0.0d) {
                            return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) == 0);
                        }
                        if (bigDecimal.compareTo(bigDecimal2.subtract(new BigDecimal(d).multiply(new BigDecimal(2)))) > 0 && bigDecimal.compareTo(bigDecimal2.add(new BigDecimal(d).multiply(new BigDecimal(2)))) < 0) {
                            r2 = true;
                        }
                        return Boolean.valueOf(r2);
                    }
                } else if (bigDecimal2 != null) {
                    return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) > 0);
                }
            } else if (bigDecimal2 != null) {
                return Boolean.valueOf(bigDecimal.compareTo(bigDecimal2) < 0);
            }
        }
        return null;
    }

    public abstract int a();

    public abstract boolean i();

    public abstract boolean j();
}
