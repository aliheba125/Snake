package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class tr1 extends q02 implements a42 {
    private static final tr1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private String zzf = "";
    private String zzg = "";

    public static final class a extends q02.b implements a42 {
        public a() {
            super(tr1.zzc);
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    static {
        tr1 tr1Var = new tr1();
        zzc = tr1Var;
        q02.t(tr1.class, tr1Var);
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new tr1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (tr1.class) {
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
