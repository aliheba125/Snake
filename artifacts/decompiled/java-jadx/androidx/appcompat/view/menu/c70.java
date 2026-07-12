package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class c70 {
    public static final my0 a = new my0("COMPLETING_ALREADY");
    public static final my0 b = new my0("COMPLETING_WAITING_CHILDREN");
    public static final my0 c = new my0("COMPLETING_RETRY");
    public static final my0 d = new my0("TOO_LATE_TO_CANCEL");
    public static final my0 e = new my0("SEALED");
    public static final zn f = new zn(false);
    public static final zn g = new zn(true);

    public static final Object g(Object obj) {
        return obj instanceof t40 ? new u40((t40) obj) : obj;
    }

    public static final Object h(Object obj) {
        t40 t40Var;
        u40 u40Var = obj instanceof u40 ? (u40) obj : null;
        return (u40Var == null || (t40Var = u40Var.a) == null) ? obj : t40Var;
    }
}
