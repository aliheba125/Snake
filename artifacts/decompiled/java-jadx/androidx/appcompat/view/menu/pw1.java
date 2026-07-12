package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class pw1 {
    public final pw1 a;
    public fi1 b;
    public Map c = new HashMap();
    public Map d = new HashMap();

    public pw1(pw1 pw1Var, fi1 fi1Var) {
        this.a = pw1Var;
        this.b = fi1Var;
    }

    public final qg1 a(pf1 pf1Var) {
        qg1 qg1Var = qg1.e;
        Iterator A = pf1Var.A();
        while (A.hasNext()) {
            qg1Var = this.b.a(this, pf1Var.s(((Integer) A.next()).intValue()));
            if (qg1Var instanceof cg1) {
                break;
            }
        }
        return qg1Var;
    }

    public final qg1 b(qg1 qg1Var) {
        return this.b.a(this, qg1Var);
    }

    public final qg1 c(String str) {
        pw1 pw1Var = this;
        while (!pw1Var.c.containsKey(str)) {
            pw1Var = pw1Var.a;
            if (pw1Var == null) {
                throw new IllegalArgumentException(String.format("%s is not defined", str));
            }
        }
        return (qg1) pw1Var.c.get(str);
    }

    public final pw1 d() {
        return new pw1(this, this.b);
    }

    public final void e(String str, qg1 qg1Var) {
        if (this.d.containsKey(str)) {
            return;
        }
        if (qg1Var == null) {
            this.c.remove(str);
        } else {
            this.c.put(str, qg1Var);
        }
    }

    public final void f(String str, qg1 qg1Var) {
        e(str, qg1Var);
        this.d.put(str, Boolean.TRUE);
    }

    public final boolean g(String str) {
        pw1 pw1Var = this;
        while (!pw1Var.c.containsKey(str)) {
            pw1Var = pw1Var.a;
            if (pw1Var == null) {
                return false;
            }
        }
        return true;
    }

    public final void h(String str, qg1 qg1Var) {
        pw1 pw1Var;
        pw1 pw1Var2 = this;
        while (!pw1Var2.c.containsKey(str) && (pw1Var = pw1Var2.a) != null && pw1Var.g(str)) {
            pw1Var2 = pw1Var2.a;
        }
        if (pw1Var2.d.containsKey(str)) {
            return;
        }
        if (qg1Var == null) {
            pw1Var2.c.remove(str);
        } else {
            pw1Var2.c.put(str, qg1Var);
        }
    }
}
