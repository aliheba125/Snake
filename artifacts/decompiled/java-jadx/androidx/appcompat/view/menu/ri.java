package androidx.appcompat.view.menu;

import android.content.Context;
import androidx.appcompat.view.menu.l21;

/* loaded from: classes.dex */
public final class ri extends l21 {
    public dl0 m;
    public dl0 n;
    public dl0 o;
    public dl0 p;
    public dl0 q;
    public dl0 r;
    public dl0 s;
    public dl0 t;
    public dl0 u;
    public dl0 v;
    public dl0 w;
    public dl0 x;
    public dl0 y;

    public static final class b implements l21.a {
        public Context a;

        public b() {
        }

        @Override // androidx.appcompat.view.menu.l21.a
        public l21 a() {
            lj0.a(this.a, Context.class);
            return new ri(this.a);
        }

        @Override // androidx.appcompat.view.menu.l21.a
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public b b(Context context) {
            this.a = (Context) lj0.b(context);
            return this;
        }
    }

    public static l21.a d() {
        return new b();
    }

    @Override // androidx.appcompat.view.menu.l21
    public gp a() {
        return (gp) this.s.get();
    }

    @Override // androidx.appcompat.view.menu.l21
    public k21 c() {
        return (k21) this.y.get();
    }

    public final void e(Context context) {
        this.m = nm.a(sp.a());
        qq a2 = o50.a(context);
        this.n = a2;
        fi a3 = fi.a(a2, r01.a(), s01.a());
        this.o = a3;
        this.p = nm.a(ed0.a(this.n, a3));
        this.q = hs0.a(this.n, jp.a(), lp.a());
        this.r = nm.a(kp.a(this.n));
        this.s = nm.a(fr0.a(r01.a(), s01.a(), mp.a(), this.q, this.r));
        yr0 b2 = yr0.b(r01.a());
        this.t = b2;
        as0 a4 = as0.a(this.n, this.s, b2, s01.a());
        this.u = a4;
        dl0 dl0Var = this.m;
        dl0 dl0Var2 = this.p;
        dl0 dl0Var3 = this.s;
        this.v = zj.a(dl0Var, dl0Var2, a4, dl0Var3, dl0Var3);
        dl0 dl0Var4 = this.n;
        dl0 dl0Var5 = this.p;
        dl0 dl0Var6 = this.s;
        this.w = j41.a(dl0Var4, dl0Var5, dl0Var6, this.u, this.m, dl0Var6, r01.a(), s01.a(), this.s);
        dl0 dl0Var7 = this.m;
        dl0 dl0Var8 = this.s;
        this.x = na1.a(dl0Var7, dl0Var8, this.u, dl0Var8);
        this.y = nm.a(m21.a(r01.a(), s01.a(), this.v, this.w, this.x));
    }

    public ri(Context context) {
        e(context);
    }
}
