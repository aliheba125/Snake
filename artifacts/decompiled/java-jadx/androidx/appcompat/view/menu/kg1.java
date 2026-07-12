package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract /* synthetic */ class kg1 {
    public static qg1 a(eg1 eg1Var, qg1 qg1Var, pw1 pw1Var, List list) {
        if (eg1Var.k(qg1Var.g())) {
            qg1 h = eg1Var.h(qg1Var.g());
            if (h instanceof gg1) {
                return ((gg1) h).a(pw1Var, list);
            }
            throw new IllegalArgumentException(String.format("%s is not a function", qg1Var.g()));
        }
        if (!"hasOwnProperty".equals(qg1Var.g())) {
            throw new IllegalArgumentException(String.format("Object has no function %s", qg1Var.g()));
        }
        iu1.g("hasOwnProperty", 1, list);
        return eg1Var.k(pw1Var.b((qg1) list.get(0)).g()) ? qg1.j : qg1.k;
    }

    public static Iterator b(Map map) {
        return new ig1(map.keySet().iterator());
    }
}
