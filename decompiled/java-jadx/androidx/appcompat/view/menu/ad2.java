package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ad2 implements bd2 {
    public static final ov1 a;
    public static final ov1 b;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.remove_app_background.client", false);
        b = e.b("measurement.id.remove_app_background.client", 0L);
    }

    @Override // androidx.appcompat.view.menu.bd2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.bd2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }
}
