package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class h5 implements bf {
    public static final bf a = new h5();

    public static final class a implements tf0 {
        public static final a a = new a();
        public static final ir b = ir.d("sdkVersion");
        public static final ir c = ir.d("model");
        public static final ir d = ir.d("hardware");
        public static final ir e = ir.d("device");
        public static final ir f = ir.d("product");
        public static final ir g = ir.d("osBuild");
        public static final ir h = ir.d("manufacturer");
        public static final ir i = ir.d("fingerprint");
        public static final ir j = ir.d("locale");
        public static final ir k = ir.d("country");
        public static final ir l = ir.d("mccMnc");
        public static final ir m = ir.d("applicationBuild");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(c2 c2Var, uf0 uf0Var) {
            uf0Var.e(b, c2Var.m());
            uf0Var.e(c, c2Var.j());
            uf0Var.e(d, c2Var.f());
            uf0Var.e(e, c2Var.d());
            uf0Var.e(f, c2Var.l());
            uf0Var.e(g, c2Var.k());
            uf0Var.e(h, c2Var.h());
            uf0Var.e(i, c2Var.e());
            uf0Var.e(j, c2Var.g());
            uf0Var.e(k, c2Var.c());
            uf0Var.e(l, c2Var.i());
            uf0Var.e(m, c2Var.b());
        }
    }

    public static final class b implements tf0 {
        public static final b a = new b();
        public static final ir b = ir.d("logRequest");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(g8 g8Var, uf0 uf0Var) {
            uf0Var.e(b, g8Var.c());
        }
    }

    public static final class c implements tf0 {
        public static final c a = new c();
        public static final ir b = ir.d("clientType");
        public static final ir c = ir.d("androidClientInfo");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(yb ybVar, uf0 uf0Var) {
            uf0Var.e(b, ybVar.c());
            uf0Var.e(c, ybVar.b());
        }
    }

    public static final class d implements tf0 {
        public static final d a = new d();
        public static final ir b = ir.d("eventTimeMs");
        public static final ir c = ir.d("eventCode");
        public static final ir d = ir.d("eventUptimeMs");
        public static final ir e = ir.d("sourceExtension");
        public static final ir f = ir.d("sourceExtensionJsonProto3");
        public static final ir g = ir.d("timezoneOffsetSeconds");
        public static final ir h = ir.d("networkConnectionInfo");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(fa0 fa0Var, uf0 uf0Var) {
            uf0Var.b(b, fa0Var.c());
            uf0Var.e(c, fa0Var.b());
            uf0Var.b(d, fa0Var.d());
            uf0Var.e(e, fa0Var.f());
            uf0Var.e(f, fa0Var.g());
            uf0Var.b(g, fa0Var.h());
            uf0Var.e(h, fa0Var.e());
        }
    }

    public static final class e implements tf0 {
        public static final e a = new e();
        public static final ir b = ir.d("requestTimeMs");
        public static final ir c = ir.d("requestUptimeMs");
        public static final ir d = ir.d("clientInfo");
        public static final ir e = ir.d("logSource");
        public static final ir f = ir.d("logSourceName");
        public static final ir g = ir.d("logEvent");
        public static final ir h = ir.d("qosTier");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ha0 ha0Var, uf0 uf0Var) {
            uf0Var.b(b, ha0Var.g());
            uf0Var.b(c, ha0Var.h());
            uf0Var.e(d, ha0Var.b());
            uf0Var.e(e, ha0Var.d());
            uf0Var.e(f, ha0Var.e());
            uf0Var.e(g, ha0Var.c());
            uf0Var.e(h, ha0Var.f());
        }
    }

    public static final class f implements tf0 {
        public static final f a = new f();
        public static final ir b = ir.d("networkType");
        public static final ir c = ir.d("mobileSubtype");

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ve0 ve0Var, uf0 uf0Var) {
            uf0Var.e(b, ve0Var.c());
            uf0Var.e(c, ve0Var.b());
        }
    }

    @Override // androidx.appcompat.view.menu.bf
    public void a(ko koVar) {
        b bVar = b.a;
        koVar.a(g8.class, bVar);
        koVar.a(p5.class, bVar);
        e eVar = e.a;
        koVar.a(ha0.class, eVar);
        koVar.a(a6.class, eVar);
        c cVar = c.a;
        koVar.a(yb.class, cVar);
        koVar.a(q5.class, cVar);
        a aVar = a.a;
        koVar.a(c2.class, aVar);
        koVar.a(m5.class, aVar);
        d dVar = d.a;
        koVar.a(fa0.class, dVar);
        koVar.a(z5.class, dVar);
        f fVar = f.a;
        koVar.a(ve0.class, fVar);
        koVar.a(c6.class, fVar);
    }
}
