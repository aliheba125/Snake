package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class p72 extends l72 {
    public static void m(Object obj, d72 d72Var) {
        ((q02) obj).zzb = d72Var;
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ int a(Object obj) {
        return ((d72) obj).a();
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ Object b(Object obj, Object obj2) {
        d72 d72Var = (d72) obj;
        d72 d72Var2 = (d72) obj2;
        return d72.k().equals(d72Var2) ? d72Var : d72.k().equals(d72Var) ? d72.c(d72Var, d72Var2) : d72Var.b(d72Var2);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void c(Object obj, int i, qx1 qx1Var) {
        ((d72) obj).e((i << 3) | 2, qx1Var);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void d(Object obj, d92 d92Var) {
        ((d72) obj).g(d92Var);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ int e(Object obj) {
        return ((d72) obj).i();
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void f(Object obj, int i, long j) {
        ((d72) obj).e(i << 3, Long.valueOf(j));
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void g(Object obj, d92 d92Var) {
        ((d72) obj).j(d92Var);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void h(Object obj, Object obj2) {
        m(obj, (d72) obj2);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ Object i(Object obj) {
        d72 d72Var = ((q02) obj).zzb;
        if (d72Var != d72.k()) {
            return d72Var;
        }
        d72 l = d72.l();
        m(obj, l);
        return l;
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ void j(Object obj, Object obj2) {
        m(obj, (d72) obj2);
    }

    @Override // androidx.appcompat.view.menu.l72
    public final /* synthetic */ Object k(Object obj) {
        return ((q02) obj).zzb;
    }

    @Override // androidx.appcompat.view.menu.l72
    public final void l(Object obj) {
        ((q02) obj).zzb.m();
    }
}
