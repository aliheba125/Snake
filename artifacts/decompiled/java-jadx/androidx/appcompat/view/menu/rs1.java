package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class rs1 extends q02 implements a42 {
    private static final rs1 zzc;
    private static volatile t42 zzd;
    private p12 zze = q02.A();
    private p12 zzf = q02.A();
    private n12 zzg = q02.B();
    private n12 zzh = q02.B();

    public static final class a extends q02.b implements a42 {
        public a() {
            super(rs1.zzc);
        }

        public final a r() {
            n();
            ((rs1) this.n).c0();
            return this;
        }

        public final a s(Iterable iterable) {
            n();
            ((rs1) this.n).I(iterable);
            return this;
        }

        public final a t() {
            n();
            ((rs1) this.n).d0();
            return this;
        }

        public final a u(Iterable iterable) {
            n();
            ((rs1) this.n).M(iterable);
            return this;
        }

        public final a v() {
            n();
            ((rs1) this.n).e0();
            return this;
        }

        public final a w(Iterable iterable) {
            n();
            ((rs1) this.n).Q(iterable);
            return this;
        }

        public final a x() {
            n();
            ((rs1) this.n).f0();
            return this;
        }

        public final a y(Iterable iterable) {
            n();
            ((rs1) this.n).U(iterable);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        rs1 rs1Var = new rs1();
        zzc = rs1Var;
        q02.t(rs1.class, rs1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(Iterable iterable) {
        n12 n12Var = this.zzg;
        if (!n12Var.c()) {
            this.zzg = q02.o(n12Var);
        }
        ax1.f(iterable, this.zzg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void M(Iterable iterable) {
        p12 p12Var = this.zzf;
        if (!p12Var.c()) {
            this.zzf = q02.p(p12Var);
        }
        ax1.f(iterable, this.zzf);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(Iterable iterable) {
        n12 n12Var = this.zzh;
        if (!n12Var.c()) {
            this.zzh = q02.o(n12Var);
        }
        ax1.f(iterable, this.zzh);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(Iterable iterable) {
        p12 p12Var = this.zze;
        if (!p12Var.c()) {
            this.zze = q02.p(p12Var);
        }
        ax1.f(iterable, this.zze);
    }

    public static a V() {
        return (a) zzc.w();
    }

    public static rs1 X() {
        return zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void c0() {
        this.zzg = q02.B();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d0() {
        this.zzf = q02.A();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void f0() {
        this.zze = q02.A();
    }

    public final int J() {
        return this.zzf.size();
    }

    public final int N() {
        return this.zzh.size();
    }

    public final int R() {
        return this.zze.size();
    }

    public final List Y() {
        return this.zzg;
    }

    public final List Z() {
        return this.zzf;
    }

    public final List a0() {
        return this.zzh;
    }

    public final List b0() {
        return this.zze;
    }

    public final void e0() {
        this.zzh = q02.B();
    }

    public final int j() {
        return this.zzg.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new rs1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b", new Object[]{"zze", "zzf", "zzg", js1.class, "zzh", ss1.class});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (rs1.class) {
                        try {
                            t42Var = zzd;
                            if (t42Var == null) {
                                t42Var = new q02.a(zzc);
                                zzd = t42Var;
                            }
                        } finally {
                        }
                    }
                }
                return t42Var;
            case q02.c.f /* 6 */:
                return (byte) 1;
            case q02.c.g /* 7 */:
                return null;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
