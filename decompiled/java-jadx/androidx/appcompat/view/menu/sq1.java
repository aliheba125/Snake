package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class sq1 extends q02 implements a42 {
    private static final sq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private String zzg = "";
    private qq1 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(sq1.zzc);
        }

        public final a r(String str) {
            n();
            ((sq1) this.n).H(str);
            return this;
        }

        public /* synthetic */ a(nq1 nq1Var) {
            this();
        }
    }

    static {
        sq1 sq1Var = new sq1();
        zzc = sq1Var;
        q02.t(sq1.class, sq1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(String str) {
        str.getClass();
        this.zze |= 2;
        this.zzg = str;
    }

    public static a J() {
        return (a) zzc.w();
    }

    public final qq1 I() {
        qq1 qq1Var = this.zzh;
        return qq1Var == null ? qq1.J() : qq1Var;
    }

    public final String L() {
        return this.zzg;
    }

    public final boolean M() {
        return this.zzi;
    }

    public final boolean N() {
        return this.zzj;
    }

    public final boolean O() {
        return this.zzk;
    }

    public final boolean P() {
        return (this.zze & 1) != 0;
    }

    public final boolean Q() {
        return (this.zze & 32) != 0;
    }

    public final int j() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new sq1();
            case 2:
                return new a(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (sq1.class) {
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
