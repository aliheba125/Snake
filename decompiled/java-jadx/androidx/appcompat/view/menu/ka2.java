package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ka2 implements la2 {
    public static final ov1 a;
    public static final ov1 b;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.service.deferred_first_open", false);
        b = e.b("measurement.id.service.deferred_first_open", 0L);
    }

    @Override // androidx.appcompat.view.menu.la2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.la2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }
}
