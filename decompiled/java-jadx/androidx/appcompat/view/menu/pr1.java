package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class pr1 extends q02 implements a42 {
    private static final pr1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private String zzf = "";
    private n12 zzg = q02.B();
    private boolean zzh;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(pr1.zzc);
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    static {
        pr1 pr1Var = new pr1();
        zzc = pr1Var;
        q02.t(pr1.class, pr1Var);
    }

    public final String H() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new pr1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zze", "zzf", "zzg", tr1.class, "zzh"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (pr1.class) {
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
