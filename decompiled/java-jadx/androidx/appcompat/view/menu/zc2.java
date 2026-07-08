package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class zc2 implements wc2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;
    public static final ov1 e;
    public static final ov1 f;
    public static final ov1 g;
    public static final ov1 h;
    public static final ov1 i;
    public static final ov1 j;
    public static final ov1 k;
    public static final ov1 l;
    public static final ov1 m;
    public static final ov1 n;

    static {
        ew1 e2 = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e2.d("measurement.redaction.app_instance_id", true);
        b = e2.d("measurement.redaction.client_ephemeral_aiid_generation", true);
        c = e2.d("measurement.redaction.config_redacted_fields", true);
        d = e2.d("measurement.redaction.device_info", true);
        e = e2.d("measurement.redaction.e_tag", true);
        f = e2.d("measurement.redaction.enhanced_uid", true);
        g = e2.d("measurement.redaction.populate_ephemeral_app_instance_id", true);
        h = e2.d("measurement.redaction.google_signals", true);
        i = e2.d("measurement.redaction.no_aiid_in_config_request", true);
        j = e2.d("measurement.redaction.retain_major_os_version", true);
        k = e2.d("measurement.redaction.scion_payload_generator", true);
        l = e2.d("measurement.redaction.upload_redacted_fields", true);
        m = e2.d("measurement.redaction.upload_subdomain_override", true);
        n = e2.d("measurement.redaction.user_id", true);
    }

    @Override // androidx.appcompat.view.menu.wc2
    public final boolean a() {
        return ((Boolean) j.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.wc2
    public final boolean b() {
        return ((Boolean) k.f()).booleanValue();
    }
}
