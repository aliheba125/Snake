package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class kt1 extends q02 implements a42 {
    private static final kt1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private n12 zzg = q02.B();
    private String zzh = "";
    private String zzi = "";
    private boolean zzj;
    private double zzk;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(kt1.zzc);
        }

        public /* synthetic */ a(gt1 gt1Var) {
            this();
        }
    }

    public enum b implements h12 {
        UNKNOWN(0),
        STRING(1),
        NUMBER(2),
        BOOLEAN(3),
        STATEMENT(4);

        public static final f12 s = new nt1();
        public final int m;

        b(int i) {
            this.m = i;
        }

        public static b c(int i) {
            if (i == 0) {
                return UNKNOWN;
            }
            if (i == 1) {
                return STRING;
            }
            if (i == 2) {
                return NUMBER;
            }
            if (i == 3) {
                return BOOLEAN;
            }
            if (i != 4) {
                return null;
            }
            return STATEMENT;
        }

        public static l12 e() {
            return rt1.a;
        }

        @Override // androidx.appcompat.view.menu.h12
        public final int a() {
            return this.m;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + b.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.m + " name=" + name() + '>';
        }
    }

    static {
        kt1 kt1Var = new kt1();
        zzc = kt1Var;
        q02.t(kt1.class, kt1Var);
    }

    public final double G() {
        return this.zzk;
    }

    public final b H() {
        b c = b.c(this.zzf);
        return c == null ? b.UNKNOWN : c;
    }

    public final String J() {
        return this.zzh;
    }

    public final String K() {
        return this.zzi;
    }

    public final List L() {
        return this.zzg;
    }

    public final boolean M() {
        return this.zzj;
    }

    public final boolean N() {
        return (this.zze & 8) != 0;
    }

    public final boolean O() {
        return (this.zze & 16) != 0;
    }

    public final boolean P() {
        return (this.zze & 4) != 0;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        gt1 gt1Var = null;
        switch (gt1.a[i - 1]) {
            case 1:
                return new kt1();
            case 2:
                return new a(gt1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zze", "zzf", b.e(), "zzg", kt1.class, "zzh", "zzi", "zzj", "zzk"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (kt1.class) {
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
