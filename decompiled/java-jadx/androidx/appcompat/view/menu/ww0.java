package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ww0 {
    public static final my0 a = new my0("NONE");
    public static final my0 b = new my0("PENDING");

    public static final ke0 a(Object obj) {
        if (obj == null) {
            obj = of0.a;
        }
        return new vw0(obj);
    }

    public static final ss d(uw0 uw0Var, kh khVar, int i, u8 u8Var) {
        return (((i < 0 || i >= 2) && i != -2) || u8Var != u8.DROP_OLDEST) ? yt0.a(uw0Var, khVar, i, u8Var) : uw0Var;
    }
}
