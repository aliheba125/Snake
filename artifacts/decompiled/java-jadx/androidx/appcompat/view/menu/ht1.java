package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class ht1 extends q02 implements a42 {
    private static final ht1 zzc;
    private static volatile t42 zzd;
    private n12 zze = q02.B();

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ht1.zzc);
        }

        public /* synthetic */ a(gt1 gt1Var) {
            this();
        }
    }

    static {
        ht1 ht1Var = new ht1();
        zzc = ht1Var;
        q02.t(ht1.class, ht1Var);
    }

    public static ht1 H() {
        return zzc;
    }

    public final List I() {
        return this.zze;
    }

    public final int j() {
        return this.zze.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        gt1 gt1Var = null;
        switch (gt1.a[i - 1]) {
            case 1:
                return new ht1();
            case 2:
                return new a(gt1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zze", it1.class});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ht1.class) {
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
