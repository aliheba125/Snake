package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class ls1 extends q02 implements a42 {
    private static final ls1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private String zzf = "";
    private long zzg;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ls1.zzc);
        }

        public final a r(long j) {
            n();
            ((ls1) this.n).H(j);
            return this;
        }

        public final a s(String str) {
            n();
            ((ls1) this.n).K(str);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        ls1 ls1Var = new ls1();
        zzc = ls1Var;
        q02.t(ls1.class, ls1Var);
    }

    public static a G() {
        return (a) zzc.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void H(long j) {
        this.zze |= 2;
        this.zzg = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(String str) {
        str.getClass();
        this.zze |= 1;
        this.zzf = str;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new ls1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ls1.class) {
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
