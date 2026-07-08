package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public interface ls0 {

    public static final class a {
        public static /* synthetic */ boolean a(ls0 ls0Var, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i & 1) != 0) {
                th = null;
            }
            return ls0Var.k(th);
        }
    }

    boolean A();

    boolean k(Throwable th);

    Object q(Object obj, xg xgVar);

    void v(fw fwVar);

    Object y(Object obj);
}
