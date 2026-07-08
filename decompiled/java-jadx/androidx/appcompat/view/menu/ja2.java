package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ja2 implements ga2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.client.consent_state_v1", true);
        b = e.d("measurement.client.3p_consent_state_v1", true);
        c = e.d("measurement.service.consent_state_v1_W36", true);
        d = e.b("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override // androidx.appcompat.view.menu.ga2
    public final long a() {
        return ((Long) d.f()).longValue();
    }
}
