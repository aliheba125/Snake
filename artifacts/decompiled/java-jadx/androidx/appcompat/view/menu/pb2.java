package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class pb2 implements qb2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;

    static {
        ew1 e = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e.d("measurement.gbraid_campaign.gbraid.client.dev", false);
        b = e.d("measurement.gbraid_campaign.gbraid.service", false);
        c = e.b("measurement.id.gbraid_campaign.service", 0L);
    }

    @Override // androidx.appcompat.view.menu.qb2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.qb2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.qb2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }
}
