package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class up0 {
    public static up0 b;
    public static final vp0 c = new vp0(0, false, false, 0, 0);
    public vp0 a;

    public static synchronized up0 b() {
        up0 up0Var;
        synchronized (up0.class) {
            try {
                if (b == null) {
                    b = new up0();
                }
                up0Var = b;
            } catch (Throwable th) {
                throw th;
            }
        }
        return up0Var;
    }

    public vp0 a() {
        return this.a;
    }

    public final synchronized void c(vp0 vp0Var) {
        if (vp0Var == null) {
            this.a = c;
            return;
        }
        vp0 vp0Var2 = this.a;
        if (vp0Var2 == null || vp0Var2.n() < vp0Var.n()) {
            this.a = vp0Var;
        }
    }
}
