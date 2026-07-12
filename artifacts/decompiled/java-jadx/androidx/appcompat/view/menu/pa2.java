package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class pa2 implements ma2 {
    public static final ov1 a;
    public static final ov1 b;
    public static final ov1 c;
    public static final ov1 d;
    public static final ov1 e;
    public static final ov1 f;
    public static final ov1 g;

    static {
        ew1 e2 = new ew1(iv1.a("com.google.android.gms.measurement")).f().e();
        a = e2.d("measurement.dma_consent.client", false);
        b = e2.d("measurement.dma_consent.client_bow_check", false);
        c = e2.d("measurement.dma_consent.service", false);
        d = e2.d("measurement.dma_consent.service_gcs_v2", false);
        e = e2.d("measurement.dma_consent.service_npa_remote_default", false);
        f = e2.d("measurement.dma_consent.service_split_batch_on_consent", false);
        g = e2.b("measurement.id.dma_consent.service", 0L);
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean a() {
        return true;
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean b() {
        return ((Boolean) a.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean c() {
        return ((Boolean) b.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean d() {
        return ((Boolean) c.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean f() {
        return ((Boolean) d.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean g() {
        return ((Boolean) e.f()).booleanValue();
    }

    @Override // androidx.appcompat.view.menu.ma2
    public final boolean j() {
        return ((Boolean) f.f()).booleanValue();
    }
}
