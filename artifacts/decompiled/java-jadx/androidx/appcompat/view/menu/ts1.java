package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class ts1 extends q02 implements a42 {
    private static final ts1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private long zzf;
    private String zzg = "";
    private String zzh = "";
    private long zzi;
    private float zzj;
    private double zzk;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ts1.zzc);
        }

        public final a r() {
            n();
            ((ts1) this.n).g0();
            return this;
        }

        public final a s(double d) {
            n();
            ((ts1) this.n).H(d);
            return this;
        }

        public final a t(long j) {
            n();
            ((ts1) this.n).I(j);
            return this;
        }

        public final a u(String str) {
            n();
            ((ts1) this.n).N(str);
            return this;
        }

        public final a v() {
            n();
            ((ts1) this.n).h0();
            return this;
        }

        public final a w(long j) {
            n();
            ((ts1) this.n).P(j);
            return this;
        }

        public final a x(String str) {
            n();
            ((ts1) this.n).T(str);
            return this;
        }

        public final a y() {
            n();
            ((ts1) this.n).i0();
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        ts1 ts1Var = new ts1();
        zzc = ts1Var;
        q02.t(ts1.class, ts1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(double d) {
        this.zze |= 32;
        this.zzk = d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(long j) {
        this.zze |= 8;
        this.zzi = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void N(String str) {
        str.getClass();
        this.zze |= 2;
        this.zzg = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(long j) {
        this.zze |= 1;
        this.zzf = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void T(String str) {
        str.getClass();
        this.zze |= 4;
        this.zzh = str;
    }

    public static a X() {
        return (a) zzc.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g0() {
        this.zze &= -33;
        this.zzk = 0.0d;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void h0() {
        this.zze &= -9;
        this.zzi = 0L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void i0() {
        this.zze &= -5;
        this.zzh = zzc.zzh;
    }

    public final double G() {
        return this.zzk;
    }

    public final float O() {
        return this.zzj;
    }

    public final long U() {
        return this.zzi;
    }

    public final long W() {
        return this.zzf;
    }

    public final String Z() {
        return this.zzg;
    }

    public final String a0() {
        return this.zzh;
    }

    public final boolean b0() {
        return (this.zze & 32) != 0;
    }

    public final boolean c0() {
        return (this.zze & 16) != 0;
    }

    public final boolean d0() {
        return (this.zze & 8) != 0;
    }

    public final boolean e0() {
        return (this.zze & 1) != 0;
    }

    public final boolean f0() {
        return (this.zze & 4) != 0;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new ts1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004ဂ\u0003\u0005ခ\u0004\u0006က\u0005", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ts1.class) {
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
