package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class nc2 implements dc2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.b("measurement.id.lifecycle.app_in_background_parameter", 0L);
        b = e.d("measurement.lifecycle.app_backgrounded_tracking", true);
        c = e.d("measurement.lifecycle.app_in_background_parameter", false);
    }

    @Override // androidx.appcompat.view.menu.dc2
    public final boolean a() {
        return ((Boolean) c.f()).booleanValue();
    }
}
