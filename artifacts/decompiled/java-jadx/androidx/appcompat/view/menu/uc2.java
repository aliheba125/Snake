package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class uc2 implements vc2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;
    public static final ov1 e;
    public static final ov1 f;

    static {
        ew1 e2 = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e2.d("measurement.rb.attribution.client2", false);
        b = e2.d("measurement.rb.attribution.followup1.service", false);
        c = e2.d("measurement.rb.attribution.service", false);
        d = e2.d("measurement.rb.attribution.enable_trigger_redaction", true);
        e = e2.d("measurement.rb.attribution.uuid_generation", true);
        f = e2.b("measurement.id.rb.attribution.service", 0L);
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean d() {
        return ((Boolean) c.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean f() {
        return ((Boolean) d.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.vc2
    public final boolean g() {
        return ((Boolean) e.f()).booleanValue();
    }
}
