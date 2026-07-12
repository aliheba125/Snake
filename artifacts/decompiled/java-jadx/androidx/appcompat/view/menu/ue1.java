package androidx.appcompat.view.menu;

import java.util.Collections;
import java.util.Iterator;
import java.util.TreeMap;

/* loaded from: classes.dex */
public final class ue1 {
    public final TreeMap a = new TreeMap();
    public final TreeMap b = new TreeMap();

    public static int a(pw1 pw1Var, sg1 sg1Var, qg1 qg1Var) {
        qg1 a = sg1Var.a(pw1Var, Collections.singletonList(qg1Var));
        if (a instanceof yf1) {
            return iu1.i(a.f().doubleValue());
        }
        return -1;
    }

    public final void b(pw1 pw1Var, cf1 cf1Var) {
        n92 n92Var = new n92(cf1Var);
        for (Integer num : this.a.keySet()) {
            hf1 hf1Var = (hf1) cf1Var.d().clone();
            int a = a(pw1Var, (sg1) this.a.get(num), n92Var);
            if (a == 2 || a == -1) {
                cf1Var.e(hf1Var);
            }
        }
        Iterator it = this.b.keySet().iterator();
        while (it.hasNext()) {
            a(pw1Var, (sg1) this.b.get((Integer) it.next()), n92Var);
        }
    }

    public final void c(String str, int i, sg1 sg1Var, String str2) {
        TreeMap treeMap;
        if ("create".equals(str2)) {
            treeMap = this.b;
        } else {
            if (!"edit".equals(str2)) {
                throw new IllegalStateException("Unknown callback type: " + str2);
            }
            treeMap = this.a;
        }
        if (treeMap.containsKey(Integer.valueOf(i))) {
            i = ((Integer) treeMap.lastKey()).intValue() + 1;
        }
        treeMap.put(Integer.valueOf(i), sg1Var);
    }
}
