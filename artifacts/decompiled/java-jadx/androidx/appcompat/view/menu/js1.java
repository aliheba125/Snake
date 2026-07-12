package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class js1 extends q02 implements a42 {
    private static final js1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private long zzg;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(js1.zzc);
        }

        public final a r(int i) {
            n();
            ((js1) this.n).G(i);
            return this;
        }

        public final a s(long j) {
            n();
            ((js1) this.n).H(j);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        js1 js1Var = new js1();
        zzc = js1Var;
        q02.t(js1.class, js1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void G(int i) {
        this.zze |= 1;
        this.zzf = i;
    }

    public static a L() {
        return (a) zzc.w();
    }

    public final void H(long j) {
        this.zze |= 2;
        this.zzg = j;
    }

    public final long K() {
        return this.zzg;
    }

    public final boolean N() {
        return (this.zze & 2) != 0;
    }

    public final boolean O() {
        return (this.zze & 1) != 0;
    }

    public final int j() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new js1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (js1.class) {
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
