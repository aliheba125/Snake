package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class j5 implements bf {
    public static final bf a = new j5();

    public static final class a implements tf0 {
        public static final a a = new a();
        public static final ir b = ir.a("projectNumber").b(b5.b().c(1).a()).a();
        public static final ir c = ir.a("messageId").b(b5.b().c(2).a()).a();
        public static final ir d = ir.a("instanceId").b(b5.b().c(3).a()).a();
        public static final ir e = ir.a("messageType").b(b5.b().c(4).a()).a();
        public static final ir f = ir.a("sdkPlatform").b(b5.b().c(5).a()).a();
        public static final ir g = ir.a("packageName").b(b5.b().c(6).a()).a();
        public static final ir h = ir.a("collapseKey").b(b5.b().c(7).a()).a();
        public static final ir i = ir.a("priority").b(b5.b().c(8).a()).a();
        public static final ir j = ir.a("ttl").b(b5.b().c(9).a()).a();
        public static final ir k = ir.a("topic").b(b5.b().c(10).a()).a();
        public static final ir l = ir.a("bulkId").b(b5.b().c(11).a()).a();
        public static final ir m = ir.a("event").b(b5.b().c(12).a()).a();
        public static final ir n = ir.a("analyticsLabel").b(b5.b().c(13).a()).a();
        public static final ir o = ir.a("campaignId").b(b5.b().c(14).a()).a();
        public static final ir p = ir.a("composerLabel").b(b5.b().c(15).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(ad0 ad0Var, uf0 uf0Var) {
            uf0Var.b(b, ad0Var.l());
            uf0Var.e(c, ad0Var.h());
            uf0Var.e(d, ad0Var.g());
            uf0Var.e(e, ad0Var.i());
            uf0Var.e(f, ad0Var.m());
            uf0Var.e(g, ad0Var.j());
            uf0Var.e(h, ad0Var.d());
            uf0Var.a(i, ad0Var.k());
            uf0Var.a(j, ad0Var.o());
            uf0Var.e(k, ad0Var.n());
            uf0Var.b(l, ad0Var.b());
            uf0Var.e(m, ad0Var.f());
            uf0Var.e(n, ad0Var.a());
            uf0Var.b(o, ad0Var.c());
            uf0Var.e(p, ad0Var.e());
        }
    }

    public static final class b implements tf0 {
        public static final b a = new b();
        public static final ir b = ir.a("messagingClientEvent").b(b5.b().c(1).a()).a();

        @Override // androidx.appcompat.view.menu.tf0
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(bd0 bd0Var, uf0 uf0Var) {
            uf0Var.e(b, bd0Var.a());
        }
    }

    public static final class c implements tf0 {
        public static final c a = new c();
        public static final ir b = ir.d("messagingClientEventExtension");

        @Override // androidx.appcompat.view.menu.tf0
        public /* bridge */ /* synthetic */ void a(Object obj, Object obj2) {
            jy0.a(obj);
            b(null, (uf0) obj2);
        }

        public void b(uk0 uk0Var, uf0 uf0Var) {
            throw null;
        }
    }

    @Override // androidx.appcompat.view.menu.bf
    public void a(ko koVar) {
        koVar.a(uk0.class, c.a);
        koVar.a(bd0.class, b.a);
        koVar.a(ad0.class, a.a);
    }
}
