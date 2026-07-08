package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class yd2 implements vd2 {
    public static final ov1 a;
    public static final ov1 b;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.sgtm.client.dev", false);
        b = e.d("measurement.sgtm.service", false);
    }

    @Override // androidx.appcompat.view.menu.vd2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.vd2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.vd2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }
}
