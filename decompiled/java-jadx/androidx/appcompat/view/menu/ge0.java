package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ge0 {
    public static boolean a(fe0 fe0Var, Object obj) {
        if (obj == fe0Var) {
            return true;
        }
        if (obj instanceof fe0) {
            return fe0Var.a().equals(((fe0) obj).a());
        }
        return false;
    }
}
