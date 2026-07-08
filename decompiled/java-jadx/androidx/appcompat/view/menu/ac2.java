package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ac2 implements xb2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.item_scoped_custom_parameters.client", true);
        b = e.d("measurement.item_scoped_custom_parameters.service", false);
        c = e.b("measurement.id.item_scoped_custom_parameters.service", 0L);
    }

    @Override // androidx.appcompat.view.menu.xb2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.xb2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.xb2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }
}
