package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class og1 implements eg1, qg1 {
    public final Map m = new HashMap();

    public final List a() {
        return new ArrayList(this.m.keySet());
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        og1 og1Var = new og1();
        for (Map.Entry entry : this.m.entrySet()) {
            if (entry.getValue() instanceof eg1) {
                og1Var.m.put((String) entry.getKey(), (qg1) entry.getValue());
            } else {
                og1Var.m.put((String) entry.getKey(), ((qg1) entry.getValue()).c());
            }
        }
        return og1Var;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        return Boolean.TRUE;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof og1) {
            return this.m.equals(((og1) obj).m);
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        return Double.valueOf(Double.NaN);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        return "[object Object]";
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final qg1 h(String str) {
        return this.m.containsKey(str) ? (qg1) this.m.get(str) : qg1.e;
    }

    public int hashCode() {
        return this.m.hashCode();
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return kg1.b(this.m);
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final boolean k(String str) {
        return this.m.containsKey(str);
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final void n(String str, qg1 qg1Var) {
        if (qg1Var == null) {
            this.m.remove(str);
        } else {
            this.m.put(str, qg1Var);
        }
    }

    public qg1 p(String str, pw1 pw1Var, List list) {
        return "toString".equals(str) ? new ug1(toString()) : kg1.a(this, new ug1(str), pw1Var, list);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("{");
        if (!this.m.isEmpty()) {
            for (String str : this.m.keySet()) {
                sb.append(String.format("%s: %s,", str, this.m.get(str)));
            }
            sb.deleteCharAt(sb.lastIndexOf(","));
        }
        sb.append("}");
        return sb.toString();
    }
}
