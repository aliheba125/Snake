package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class rq1 extends q02 implements a42 {
    private static final rq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private boolean zzg;
    private String zzh = "";
    private String zzi = "";
    private String zzj = "";

    public static final class a extends q02.b implements a42 {
        public a() {
            super(rq1.zzc);
        }

        public /* synthetic */ a(nq1 nq1Var) {
            this();
        }
    }

    public enum b implements h12 {
        UNKNOWN_COMPARISON_TYPE(0),
        LESS_THAN(1),
        GREATER_THAN(2),
        EQUAL(3),
        BETWEEN(4);

        public static final f12 s = new wq1();
        public final int m;

        b(int i) {
            this.m = i;
        }

        public static b c(int i) {
            if (i == 0) {
                return UNKNOWN_COMPARISON_TYPE;
            }
            if (i == 1) {
                return LESS_THAN;
            }
            if (i == 2) {
                return GREATER_THAN;
            }
            if (i == 3) {
                return EQUAL;
            }
            if (i != 4) {
                return null;
            }
            return BETWEEN;
        }

        public static l12 e() {
            return yq1.a;
        }

        @Override // androidx.appcompat.view.menu.h12
        public final int a() {
            return this.m;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.m + " name=" + name() + '>';
        }
    }

    static {
        rq1 rq1Var = new rq1();
        zzc = rq1Var;
        q02.t(rq1.class, rq1Var);
    }

    public static rq1 I() {
        return zzc;
    }

    public final b G() {
        b c = b.c(this.zzf);
        return c == null ? b.UNKNOWN_COMPARISON_TYPE : c;
    }

    public final String J() {
        return this.zzh;
    }

    public final String K() {
        return this.zzj;
    }

    public final String L() {
        return this.zzi;
    }

    public final boolean M() {
        return this.zzg;
    }

    public final boolean N() {
        return (this.zze & 1) != 0;
    }

    public final boolean O() {
        return (this.zze & 4) != 0;
    }

    public final boolean P() {
        return (this.zze & 2) != 0;
    }

    public final boolean Q() {
        return (this.zze & 16) != 0;
    }

    public final boolean R() {
        return (this.zze & 8) != 0;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new rq1();
            case 2:
                return new a(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zze", "zzf", b.e(), "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (rq1.class) {
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
