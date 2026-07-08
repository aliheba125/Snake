package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class tq1 extends q02 implements a42 {
    private static final tq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private boolean zzh;
    private String zzg = "";
    private n12 zzi = q02.B();

    public enum a implements h12 {
        UNKNOWN_MATCH_TYPE(0),
        REGEXP(1),
        BEGINS_WITH(2),
        ENDS_WITH(3),
        PARTIAL(4),
        EXACT(5),
        IN_LIST(6);

        public static final f12 u = new lr1();
        public final int m;

        a(int i) {
            this.m = i;
        }

        public static a c(int i) {
            switch (i) {
                case 0:
                    return UNKNOWN_MATCH_TYPE;
                case 1:
                    return REGEXP;
                case 2:
                    return BEGINS_WITH;
                case q02.c.c /* 3 */:
                    return ENDS_WITH;
                case 4:
                    return PARTIAL;
                case q02.c.e /* 5 */:
                    return EXACT;
                case q02.c.f /* 6 */:
                    return IN_LIST;
                default:
                    return null;
            }
        }

        public static l12 e() {
            return ar1.a;
        }

        @Override // androidx.appcompat.view.menu.h12
        public final int a() {
            return this.m;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + a.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.m + " name=" + name() + '>';
        }
    }

    public static final class b extends q02.b implements a42 {
        public b() {
            super(tq1.zzc);
        }

        public /* synthetic */ b(nq1 nq1Var) {
            this();
        }
    }

    static {
        tq1 tq1Var = new tq1();
        zzc = tq1Var;
        q02.t(tq1.class, tq1Var);
    }

    public static tq1 I() {
        return zzc;
    }

    public final a G() {
        a c = a.c(this.zzf);
        return c == null ? a.UNKNOWN_MATCH_TYPE : c;
    }

    public final String J() {
        return this.zzg;
    }

    public final List K() {
        return this.zzi;
    }

    public final boolean L() {
        return this.zzh;
    }

    public final boolean M() {
        return (this.zze & 4) != 0;
    }

    public final boolean N() {
        return (this.zze & 2) != 0;
    }

    public final boolean O() {
        return (this.zze & 1) != 0;
    }

    public final int j() {
        return this.zzi.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new tq1();
            case 2:
                return new b(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zze", "zzf", a.e(), "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (tq1.class) {
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
