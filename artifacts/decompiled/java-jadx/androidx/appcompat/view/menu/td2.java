package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class td2 implements ud2 {
    public static final ov1 a;
    public static final ov1 b;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.sfmc.client", true);
        b = e.d("measurement.sfmc.service", true);
    }

    @Override // androidx.appcompat.view.menu.ud2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.ud2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ud2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }
}
