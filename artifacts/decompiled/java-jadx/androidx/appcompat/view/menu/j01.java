package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class j01 {
    public static final j01 a = new j01();
    public static final ThreadLocal b = k01.a(new my0("ThreadLocalEventLoop"));

    public final bp a() {
        ThreadLocal threadLocal = b;
        bp bpVar = (bp) threadLocal.get();
        if (bpVar != null) {
            return bpVar;
        }
        bp a2 = ep.a();
        threadLocal.set(a2);
        return a2;
    }

    public final void b() {
        b.set(null);
    }

    public final void c(bp bpVar) {
        b.set(bpVar);
    }
}
