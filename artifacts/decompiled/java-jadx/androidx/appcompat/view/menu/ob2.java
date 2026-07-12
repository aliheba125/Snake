package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ob2 implements lb2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.client.sessions.check_on_reset_and_enable2", true);
        b = e.d("measurement.client.sessions.check_on_startup", true);
        c = e.d("measurement.client.sessions.start_session_before_view_screen", true);
    }

    @Override // androidx.appcompat.view.menu.lb2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.lb2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }
}
