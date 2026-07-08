package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class jt1 extends q02 implements a42 {
    private static final jt1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private n12 zzf = q02.B();
    private ht1 zzg;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(jt1.zzc);
        }

        public /* synthetic */ a(gt1 gt1Var) {
            this();
        }
    }

    static {
        jt1 jt1Var = new jt1();
        zzc = jt1Var;
        q02.t(jt1.class, jt1Var);
    }

    public final ht1 G() {
        ht1 ht1Var = this.zzg;
        return ht1Var == null ? ht1.H() : ht1Var;
    }

    public final List I() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        gt1 gt1Var = null;
        switch (gt1.a[i - 1]) {
            case 1:
                return new jt1();
            case 2:
                return new a(gt1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zze", "zzf", kt1.class, "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (jt1.class) {
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
