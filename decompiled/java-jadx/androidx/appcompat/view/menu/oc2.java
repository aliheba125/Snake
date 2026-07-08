package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class oc2 implements pc2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;
    public static final ov1 e;

    static {
        ew1 e2 = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e2.d("measurement.test.boolean_flag", false);
        b = e2.a("measurement.test.double_flag", -3.0d);
        c = e2.b("measurement.test.int_flag", -2L);
        d = e2.b("measurement.test.long_flag", -1L);
        e = e2.c("measurement.test.string_flag", "---");
    }

    @Override // androidx.appcompat.view.menu.pc2
    public final double a() {
        return ((Double) b.f()).doubleValue();
    }

    @Override // androidx.appcompat.view.menu.pc2
    public final long b() {
        return ((Long) c.f()).longValue();
    }

    @Override // androidx.appcompat.view.menu.pc2
    public final long c() {
        return ((Long) d.f()).longValue();
    }

    @Override // androidx.appcompat.view.menu.pc2
    public final String d() {
        return (String) e.f();
    }

    @Override // androidx.appcompat.view.menu.pc2
    public final boolean f() {
        return ((Boolean) a.f()).booleanValue();
    }
}
