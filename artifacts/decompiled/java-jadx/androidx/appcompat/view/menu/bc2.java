package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class bc2 implements cc2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.sdk.collection.enable_extend_user_property_size", true);
        b = e.d("measurement.sdk.collection.last_deep_link_referrer2", true);
        c = e.d("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        d = e.b("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override // androidx.appcompat.view.menu.cc2
    public final boolean a() {
        return ((Boolean) c.f()).booleanValue();
    }
}
