package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class i5 implements bf {
    public static final bf a = new i5();

    public static final class a implements tf0 {
        public static final a a = new a();
        public static final ir b = ir.a("window").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("logSourceMetrics").b(b5.b().c(2).a()).a();
        public static final ir d = ir.a("globalMetrics").b(b5.b().c(3).a()).a();
        public static final ir e = ir.a("appNamespace").b(b5.b().c(4).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(zb zbVar, uf0 uf0Var) {
            uf0Var.e(b, zbVar.d());
            uf0Var.e(c, zbVar.c());
            uf0Var.e(d, zbVar.b());
            uf0Var.e(e, zbVar.a());
        }
    }

    public static final class b implements tf0 {
        public static final b a = new b();
        public static final ir b = ir.a("storageMetrics").b(b5.b().c(1).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ox oxVar, uf0 uf0Var) {
            uf0Var.e(b, oxVar.a());
        }
    }

    public static final class c implements tf0 {
        public static final c a = new c();
        public static final ir b = ir.a("eventsDroppedCount").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("reason").b(b5.b().c(3).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ga0 ga0Var, uf0 uf0Var) {
            uf0Var.b(b, ga0Var.a());
            uf0Var.e(c, ga0Var.b());
        }
    }

    public static final class d implements tf0 {
        public static final d a = new d();
        public static final ir b = ir.a("logSource").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("logEventDropped").b(b5.b().c(2).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ja0 ja0Var, uf0 uf0Var) {
            uf0Var.e(b, ja0Var.b());
            uf0Var.e(c, ja0Var.a());
        }
    }

    public static final class e implements tf0 {
        public static final e a = new e();
        public static final ir b = ir.d("clientMetrics");

        @Override // androidx.appcompat.view.menu.tf0
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            jy0.a(obj);
            b(null, (uf0) obj2);
        }

        public void b(vk0 vk0Var, uf0 uf0Var) {
            throw null;
        }
    }

    public static final class f implements tf0 {
        public static final f a = new f();
        public static final ir b = ir.a("currentCacheSizeBytes").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("maxCacheSizeBytes").b(b5.b().c(2).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ex0 ex0Var, uf0 uf0Var) {
            uf0Var.b(b, ex0Var.a());
            uf0Var.b(c, ex0Var.b());
        }
    }

    public static final class g implements tf0 {
        public static final g a = new g();
        public static final ir b = ir.a("startMs").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("endMs").b(b5.b().c(2).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(u01 u01Var, uf0 uf0Var) {
            uf0Var.b(b, u01Var.b());
            uf0Var.b(c, u01Var.a());
        }
    }

    @Override // androidx.appcompat.view.menu.bf
    public void a(ko koVar) {
        koVar.a(vk0.class, e.a);
        koVar.a(zb.class, a.a);
        koVar.a(u01.class, g.a);
        koVar.a(ja0.class, d.a);
        koVar.a(ga0.class, c.a);
        koVar.a(ox.class, b.a);
        koVar.a(ex0.class, f.a);
    }
}
