package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class pq1 extends q02 implements a42 {
    private static final pq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private n12 zzh = q02.B();
    private boolean zzi;
    private rq1 zzj;
    private boolean zzk;
    private boolean zzl;
    private boolean zzm;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(pq1.zzc);
        }

        public final int r() {
            return ((pq1) this.n).j();
        }

        public final a s(int i, qq1 qq1Var) {
            n();
            ((pq1) this.n).H(i, qq1Var);
            return this;
        }

        public final a t(String str) {
            n();
            ((pq1) this.n).K(str);
            return this;
        }

        public final qq1 u(int i) {
            return ((pq1) this.n).G(i);
        }

        public final String v() {
            return ((pq1) this.n).P();
        }

        public /* synthetic */ a(nq1 nq1Var) {
            this();
        }
    }

    static {
        pq1 pq1Var = new pq1();
        zzc = pq1Var;
        q02.t(pq1.class, pq1Var);
    }

    public static a M() {
        return (a) zzc.w();
    }

    public final qq1 G(int i) {
        return (qq1) this.zzh.get(i);
    }

    public final void H(int i, qq1 qq1Var) {
        qq1Var.getClass();
        n12 n12Var = this.zzh;
        if (!n12Var.c()) {
            this.zzh = q02.o(n12Var);
        }
        this.zzh.set(i, qq1Var);
    }

    public final void K(String str) {
        str.getClass();
        this.zze |= 2;
        this.zzg = str;
    }

    public final int L() {
        return this.zzf;
    }

    public final rq1 O() {
        rq1 rq1Var = this.zzj;
        return rq1Var == null ? rq1.I() : rq1Var;
    }

    public final String P() {
        return this.zzg;
    }

    public final List Q() {
        return this.zzh;
    }

    public final boolean R() {
        return this.zzk;
    }

    public final boolean S() {
        return this.zzl;
    }

    public final boolean T() {
        return this.zzm;
    }

    public final boolean U() {
        return (this.zze & 8) != 0;
    }

    public final boolean V() {
        return (this.zze & 1) != 0;
    }

    public final boolean W() {
        return (this.zze & 64) != 0;
    }

    public final int j() {
        return this.zzh.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new pq1();
            case 2:
                return new a(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zze", "zzf", "zzg", "zzh", qq1.class, "zzi", "zzj", "zzk", "zzl", "zzm"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (pq1.class) {
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
