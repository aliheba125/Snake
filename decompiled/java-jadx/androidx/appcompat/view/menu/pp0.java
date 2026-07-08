package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class pp0 {
    public static Object a(int i, Object obj, cx cxVar, qp0 qp0Var) {
        Object apply;
        if (i < 1) {
            return cxVar.apply(obj);
        }
        do {
            apply = cxVar.apply(obj);
            obj = qp0Var.a(obj, apply);
            if (obj == null) {
                break;
            }
            i--;
        } while (i >= 1);
        return apply;
    }
}
