package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class qq1 extends q02 implements a42 {
    private static final qq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private tq1 zzf;
    private rq1 zzg;
    private boolean zzh;
    private String zzi = "";

    public static final class a extends q02.b implements a42 {
        public a() {
            super(qq1.zzc);
        }

        public final a r(String str) {
            n();
            ((qq1) this.n).I(str);
            return this;
        }

        public /* synthetic */ a(nq1 nq1Var) {
            this();
        }
    }

    static {
        qq1 qq1Var = new qq1();
        zzc = qq1Var;
        q02.t(qq1.class, qq1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(String str) {
        str.getClass();
        this.zze |= 8;
        this.zzi = str;
    }

    public static qq1 J() {
        return zzc;
    }

    public final rq1 K() {
        rq1 rq1Var = this.zzg;
        return rq1Var == null ? rq1.I() : rq1Var;
    }

    public final tq1 L() {
        tq1 tq1Var = this.zzf;
        return tq1Var == null ? tq1.I() : tq1Var;
    }

    public final String M() {
        return this.zzi;
    }

    public final boolean N() {
        return this.zzh;
    }

    public final boolean O() {
        return (this.zze & 4) != 0;
    }

    public final boolean P() {
        return (this.zze & 2) != 0;
    }

    public final boolean Q() {
        return (this.zze & 8) != 0;
    }

    public final boolean R() {
        return (this.zze & 1) != 0;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new qq1();
            case 2:
                return new a(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (qq1.class) {
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
