package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class y02 {
    public static qg1 a(kt1 kt1Var) {
        if (kt1Var == null) {
            return qg1.e;
        }
        int i = uy1.a[kt1Var.H().ordinal()];
        if (i == 1) {
            return kt1Var.P() ? new ug1(kt1Var.K()) : qg1.l;
        }
        if (i == 2) {
            return kt1Var.O() ? new yf1(Double.valueOf(kt1Var.G())) : new yf1(null);
        }
        if (i == 3) {
            return kt1Var.N() ? new sf1(Boolean.valueOf(kt1Var.M())) : new sf1(null);
        }
        if (i != 4) {
            if (i == 5) {
                throw new IllegalArgumentException("Unknown type found. Cannot convert entity");
            }
            throw new IllegalStateException("Invalid entity: " + String.valueOf(kt1Var));
        }
        List L = kt1Var.L();
        ArrayList arrayList = new ArrayList();
        Iterator it = L.iterator();
        while (it.hasNext()) {
            arrayList.add(a((kt1) it.next()));
        }
        return new wg1(kt1Var.J(), arrayList);
    }

    public static qg1 b(Object obj) {
        if (obj == null) {
            return qg1.f;
        }
        if (obj instanceof String) {
            return new ug1((String) obj);
        }
        if (obj instanceof Double) {
            return new yf1((Double) obj);
        }
        if (obj instanceof Long) {
            return new yf1(Double.valueOf(((Long) obj).doubleValue()));
        }
        if (obj instanceof Integer) {
            return new yf1(Double.valueOf(((Integer) obj).doubleValue()));
        }
        if (obj instanceof Boolean) {
            return new sf1((Boolean) obj);
        }
        if (!(obj instanceof Map)) {
            if (!(obj instanceof List)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            pf1 pf1Var = new pf1();
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                pf1Var.u(b(it.next()));
            }
            return pf1Var;
        }
        og1 og1Var = new og1();
        Map map = (Map) obj;
        for (Object obj2 : map.keySet()) {
            qg1 b = b(map.get(obj2));
            if (obj2 != null) {
                if (!(obj2 instanceof String)) {
                    obj2 = obj2.toString();
                }
                og1Var.n((String) obj2, b);
            }
        }
        return og1Var;
    }
}
