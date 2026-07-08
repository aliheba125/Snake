package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class sr1 extends q02 implements a42 {
    private static final sr1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf = 14;
    private int zzg = 11;
    private int zzh = 60;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(sr1.zzc);
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    static {
        sr1 sr1Var = new sr1();
        zzc = sr1Var;
        q02.t(sr1.class, sr1Var);
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new sr1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002", new Object[]{"zze", "zzf", "zzg", "zzh"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (sr1.class) {
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
