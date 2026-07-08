package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class gg1 implements eg1, qg1 {
    public final String m;
    public final Map n = new HashMap();

    public gg1(String str) {
        this.m = str;
    }

    public abstract qg1 a(pw1 pw1Var, List list);

    public final String b() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public qg1 c() {
        return this;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        return Boolean.TRUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof gg1)) {
            return false;
        }
        gg1 gg1Var = (gg1) obj;
        String str = this.m;
        if (str != null) {
            return str.equals(gg1Var.m);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final qg1 h(String str) {
        return this.n.containsKey(str) ? (qg1) this.n.get(str) : qg1.e;
    }

    public int hashCode() {
        String str = this.m;
        if (str != null) {
            return str.hashCode();
        }
        return 0;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return kg1.b(this.n);
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final boolean k(String str) {
        return this.n.containsKey(str);
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final void n(String str, qg1 qg1Var) {
        if (qg1Var == null) {
            this.n.remove(str);
        } else {
            this.n.put(str, qg1Var);
        }
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 p(String str, pw1 pw1Var, List list) {
        return "toString".equals(str) ? new ug1(this.m) : kg1.a(this, new ug1(str), pw1Var, list);
    }
}
