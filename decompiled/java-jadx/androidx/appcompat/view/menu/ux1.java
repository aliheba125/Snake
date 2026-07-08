package androidx.appcompat.view.menu;

import java.util.Comparator;

/* loaded from: classes.dex */
public final class ux1 implements Comparator {
    @Override // java.util.Comparator
    public final /* synthetic */ int compare(Object obj, Object obj2) {
        qx1 qx1Var = (qx1) obj;
        qx1 qx1Var2 = (qx1) obj2;
        cy1 cy1Var = (cy1) qx1Var.iterator();
        cy1 cy1Var2 = (cy1) qx1Var2.iterator();
        while (cy1Var.hasNext() && cy1Var2.hasNext()) {
            int compareTo = Integer.valueOf(qx1.g(cy1Var.a())).compareTo(Integer.valueOf(qx1.g(cy1Var2.a())));
            if (compareTo != 0) {
                return compareTo;
            }
        }
        return Integer.valueOf(qx1Var.t()).compareTo(Integer.valueOf(qx1Var2.t()));
    }
}
