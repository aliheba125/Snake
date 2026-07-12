package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ls1;
import androidx.appcompat.view.menu.q02;

/* loaded from: classes.dex */
public final class qs1 extends q02 implements a42 {
    private static final qs1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf = 1;
    private n12 zzg = q02.B();

    public enum a implements h12 {
        RADS(1),
        PROVISIONING(2);

        public static final f12 p = new et1();
        public final int m;

        a(int i) {
            this.m = i;
        }

        public static a c(int i) {
            if (i == 1) {
                return RADS;
            }
            if (i != 2) {
                return null;
            }
            return PROVISIONING;
        }

        public static l12 e() {
            return ct1.a;
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
            super(qs1.zzc);
        }

        public final b r(ls1.a aVar) {
            n();
            ((qs1) this.n).H((ls1) ((q02) aVar.j()));
            return this;
        }

        public /* synthetic */ b(fs1 fs1Var) {
            this();
        }
    }

    static {
        qs1 qs1Var = new qs1();
        zzc = qs1Var;
        q02.t(qs1.class, qs1Var);
    }

    public static b G() {
        return (b) zzc.w();
    }

    public final void H(ls1 ls1Var) {
        ls1Var.getClass();
        n12 n12Var = this.zzg;
        if (!n12Var.c()) {
            this.zzg = q02.o(n12Var);
        }
        this.zzg.add(ls1Var);
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new qs1();
            case 2:
                return new b(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zze", "zzf", a.e(), "zzg", ls1.class});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (qs1.class) {
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
