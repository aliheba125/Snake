package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class qa2 implements ra2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.collection.event_safelist", true);
        b = e.d("measurement.service.store_null_safelist", true);
        c = e.d("measurement.service.store_safelist", true);
    }

    @Override // androidx.appcompat.view.menu.ra2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.ra2
    public final boolean b() {
        return ((Boolean) b.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ra2
    public final boolean c() {
        return ((Boolean) c.f()).booleanValue();
    }
}
