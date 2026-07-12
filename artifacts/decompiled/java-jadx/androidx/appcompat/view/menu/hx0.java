package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class hx0 {
    public static final int a;
    public static final int b;

    static {
        a = gx0.b.b() == null ? 8192 : ((Integer) gx0.b.b()).intValue();
        b = gx0.c.b() == null ? 67108864 : ((Integer) gx0.c.b()).intValue();
    }

    public static void a() {
        try {
            try {
                gx0.e.b(new Object[0]);
            } catch (Throwable th) {
                th.printStackTrace();
            }
        } catch (Throwable unused) {
            gx0.d.d(Integer.valueOf(((Integer) gx0.d.b()).intValue() & (~(a | b))));
        }
    }
}
