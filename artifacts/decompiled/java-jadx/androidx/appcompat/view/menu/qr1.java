package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class qr1 extends q02 implements a42 {
    private static final qr1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private String zzf = "";
    private boolean zzg;
    private boolean zzh;
    private int zzi;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(qr1.zzc);
        }

        public final int r() {
            return ((qr1) this.n).j();
        }

        public final a s(String str) {
            n();
            ((qr1) this.n).H(str);
            return this;
        }

        public final String t() {
            return ((qr1) this.n).J();
        }

        public final boolean u() {
            return ((qr1) this.n).K();
        }

        public final boolean v() {
            return ((qr1) this.n).L();
        }

        public final boolean w() {
            return ((qr1) this.n).M();
        }

        public final boolean x() {
            return ((qr1) this.n).N();
        }

        public final boolean y() {
            return ((qr1) this.n).O();
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    static {
        qr1 qr1Var = new qr1();
        zzc = qr1Var;
        q02.t(qr1.class, qr1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(String str) {
        str.getClass();
        this.zze |= 1;
        this.zzf = str;
    }

    public final String J() {
        return this.zzf;
    }

    public final boolean K() {
        return this.zzg;
    }

    public final boolean L() {
        return this.zzh;
    }

    public final boolean M() {
        return (this.zze & 2) != 0;
    }

    public final boolean N() {
        return (this.zze & 4) != 0;
    }

    public final boolean O() {
        return (this.zze & 8) != 0;
    }

    public final int j() {
        return this.zzi;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new qr1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (qr1.class) {
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
