package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ze1 extends df1 {
    public sq1 g;
    public final /* synthetic */ we2 h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ze1(we2 we2Var, String str, int i, sq1 sq1Var) {
        super(str, i);
        this.h = we2Var;
        this.g = sq1Var;
    }

    @Override // androidx.appcompat.view.menu.df1
    public final int a() {
        return this.g.j();
    }

    @Override // androidx.appcompat.view.menu.df1
    public final boolean i() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.df1
    public final boolean j() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean k(Long l, Long l2, ts1 ts1Var, boolean z) {
        Object[] objArr = gb2.a() && this.h.e().D(this.a, si1.h0);
        boolean M = this.g.M();
        boolean N = this.g.N();
        boolean O = this.g.O();
        Object[] objArr2 = M || N || O;
        Boolean bool = null;
        bool = null;
        bool = null;
        bool = null;
        bool = null;
        if (z && objArr2 != true) {
            this.h.l().K().c("Property filter already evaluated true and it is not associated with an enhanced audience. audience ID, filter ID", Integer.valueOf(this.b), this.g.P() ? Integer.valueOf(this.g.j()) : null);
            return true;
        }
        qq1 I = this.g.I();
        boolean N2 = I.N();
        if (ts1Var.d0()) {
            if (I.P()) {
                bool = df1.d(df1.c(ts1Var.U(), I.K()), N2);
            } else {
                this.h.l().L().b("No number filter for long property. property", this.h.g().g(ts1Var.Z()));
            }
        } else if (ts1Var.b0()) {
            if (I.P()) {
                bool = df1.d(df1.b(ts1Var.G(), I.K()), N2);
            } else {
                this.h.l().L().b("No number filter for double property. property", this.h.g().g(ts1Var.Z()));
            }
        } else if (!ts1Var.f0()) {
            this.h.l().L().b("User property has no value, property", this.h.g().g(ts1Var.Z()));
        } else if (I.R()) {
            bool = df1.d(df1.g(ts1Var.a0(), I.L(), this.h.l()), N2);
        } else if (!I.P()) {
            this.h.l().L().b("No string or number filter defined. property", this.h.g().g(ts1Var.Z()));
        } else if (i92.f0(ts1Var.a0())) {
            bool = df1.d(df1.e(ts1Var.a0(), I.K()), N2);
        } else {
            this.h.l().L().c("Invalid user property value for Numeric number filter. property, value", this.h.g().g(ts1Var.Z()), ts1Var.a0());
        }
        this.h.l().K().b("Property filter result", bool == null ? "null" : bool);
        if (bool == null) {
            return false;
        }
        this.c = Boolean.TRUE;
        if (O && !bool.booleanValue()) {
            return true;
        }
        if (!z || this.g.M()) {
            this.d = bool;
        }
        if (bool.booleanValue() && objArr2 != false && ts1Var.e0()) {
            long W = ts1Var.W();
            if (l != null) {
                W = l.longValue();
            }
            if (objArr != false && this.g.M() && !this.g.N() && l2 != null) {
                W = l2.longValue();
            }
            if (this.g.N()) {
                this.f = Long.valueOf(W);
            } else {
                this.e = Long.valueOf(W);
            }
        }
        return true;
    }
}
