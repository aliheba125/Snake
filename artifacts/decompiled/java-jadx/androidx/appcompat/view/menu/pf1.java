package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class pf1 implements eg1, qg1, Iterable {
    public final SortedMap m;
    public final Map n;

    public pf1() {
        this.m = new TreeMap();
        this.n = new TreeMap();
    }

    public final Iterator A() {
        return this.m.keySet().iterator();
    }

    public final List B() {
        ArrayList arrayList = new ArrayList(v());
        for (int i = 0; i < v(); i++) {
            arrayList.add(s(i));
        }
        return arrayList;
    }

    public final void C() {
        this.m.clear();
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final qg1 c() {
        pf1 pf1Var = new pf1();
        for (Map.Entry entry : this.m.entrySet()) {
            if (entry.getValue() instanceof eg1) {
                pf1Var.m.put((Integer) entry.getKey(), (qg1) entry.getValue());
            } else {
                pf1Var.m.put((Integer) entry.getKey(), ((qg1) entry.getValue()).c());
            }
        }
        return pf1Var;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Boolean d() {
        return Boolean.TRUE;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pf1)) {
            return false;
        }
        pf1 pf1Var = (pf1) obj;
        if (v() != pf1Var.v()) {
            return false;
        }
        if (this.m.isEmpty()) {
            return pf1Var.m.isEmpty();
        }
        for (int intValue = ((Integer) this.m.firstKey()).intValue(); intValue <= ((Integer) this.m.lastKey()).intValue(); intValue++) {
            if (!s(intValue).equals(pf1Var.s(intValue))) {
                return false;
            }
        }
        return true;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Double f() {
        return this.m.size() == 1 ? s(0).f() : this.m.size() <= 0 ? Double.valueOf(0.0d) : Double.valueOf(Double.NaN);
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final String g() {
        return toString();
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final qg1 h(String str) {
        qg1 qg1Var;
        return "length".equals(str) ? new yf1(Double.valueOf(v())) : (!k(str) || (qg1Var = (qg1) this.n.get(str)) == null) ? qg1.e : qg1Var;
    }

    public final int hashCode() {
        return this.m.hashCode() * 31;
    }

    @Override // androidx.appcompat.view.menu.qg1
    public final Iterator i() {
        return new lf1(this, this.m.keySet().iterator(), this.n.keySet().iterator());
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return new vf1(this);
    }

    @Override // androidx.appcompat.view.menu.eg1
    public final boolean k(String str) {
        return "length".equals(str) || this.n.containsKey(str);
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
        return ("concat".equals(str) || "every".equals(str) || "filter".equals(str) || "forEach".equals(str) || "indexOf".equals(str) || "join".equals(str) || "lastIndexOf".equals(str) || "map".equals(str) || "pop".equals(str) || "push".equals(str) || "reduce".equals(str) || "reduceRight".equals(str) || "reverse".equals(str) || "shift".equals(str) || "slice".equals(str) || "some".equals(str) || "sort".equals(str) || "splice".equals(str) || "toString".equals(str) || "unshift".equals(str)) ? li1.d(str, this, pw1Var, list) : kg1.a(this, new ug1(str), pw1Var, list);
    }

    public final int r() {
        return this.m.size();
    }

    public final qg1 s(int i) {
        qg1 qg1Var;
        if (i < v()) {
            return (!z(i) || (qg1Var = (qg1) this.m.get(Integer.valueOf(i))) == null) ? qg1.e : qg1Var;
        }
        throw new IndexOutOfBoundsException("Attempting to get element outside of current array");
    }

    public final void t(int i, qg1 qg1Var) {
        if (i < 0) {
            throw new IllegalArgumentException("Invalid value index: " + i);
        }
        if (i >= v()) {
            y(i, qg1Var);
            return;
        }
        for (int intValue = ((Integer) this.m.lastKey()).intValue(); intValue >= i; intValue--) {
            qg1 qg1Var2 = (qg1) this.m.get(Integer.valueOf(intValue));
            if (qg1Var2 != null) {
                y(intValue + 1, qg1Var2);
                this.m.remove(Integer.valueOf(intValue));
            }
        }
        y(i, qg1Var);
    }

    public final String toString() {
        return w(",");
    }

    public final void u(qg1 qg1Var) {
        y(v(), qg1Var);
    }

    public final int v() {
        if (this.m.isEmpty()) {
            return 0;
        }
        return ((Integer) this.m.lastKey()).intValue() + 1;
    }

    public final String w(String str) {
        if (str == null) {
            str = "";
        }
        StringBuilder sb = new StringBuilder();
        if (!this.m.isEmpty()) {
            for (int i = 0; i < v(); i++) {
                qg1 s = s(i);
                sb.append(str);
                if (!(s instanceof eh1) && !(s instanceof mg1)) {
                    sb.append(s.g());
                }
            }
            sb.delete(0, str.length());
        }
        return sb.toString();
    }

    public final void x(int i) {
        int intValue = ((Integer) this.m.lastKey()).intValue();
        if (i > intValue || i < 0) {
            return;
        }
        this.m.remove(Integer.valueOf(i));
        if (i == intValue) {
            int i2 = i - 1;
            if (this.m.containsKey(Integer.valueOf(i2)) || i2 < 0) {
                return;
            }
            this.m.put(Integer.valueOf(i2), qg1.e);
            return;
        }
        while (true) {
            i++;
            if (i > ((Integer) this.m.lastKey()).intValue()) {
                return;
            }
            qg1 qg1Var = (qg1) this.m.get(Integer.valueOf(i));
            if (qg1Var != null) {
                this.m.put(Integer.valueOf(i - 1), qg1Var);
                this.m.remove(Integer.valueOf(i));
            }
        }
    }

    public final void y(int i, qg1 qg1Var) {
        if (i > 32468) {
            throw new IllegalStateException("Array too large");
        }
        if (i < 0) {
            throw new IndexOutOfBoundsException("Out of bounds index: " + i);
        }
        if (qg1Var == null) {
            this.m.remove(Integer.valueOf(i));
        } else {
            this.m.put(Integer.valueOf(i), qg1Var);
        }
    }

    public final boolean z(int i) {
        if (i >= 0 && i <= ((Integer) this.m.lastKey()).intValue()) {
            return this.m.containsKey(Integer.valueOf(i));
        }
        throw new IndexOutOfBoundsException("Out of bounds index: " + i);
    }

    public pf1(List list) {
        this();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                y(i, (qg1) list.get(i));
            }
        }
    }

    public pf1(qg1... qg1VarArr) {
        this(Arrays.asList(qg1VarArr));
    }
}
