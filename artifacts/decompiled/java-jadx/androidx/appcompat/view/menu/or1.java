package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class or1 extends q02 implements a42 {
    private static final or1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private boolean zzi;
    private n12 zzf = q02.B();
    private n12 zzg = q02.B();
    private n12 zzh = q02.B();
    private n12 zzj = q02.B();

    public static final class a extends q02.b implements a42 {
        public a() {
            super(or1.zzc);
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    public static final class b extends q02 implements a42 {
        private static final b zzc;
        private static volatile t42 zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public static final class a extends q02.b implements a42 {
            public a() {
                super(b.zzc);
            }

            public /* synthetic */ a(nr1 nr1Var) {
                this();
            }
        }

        static {
            b bVar = new b();
            zzc = bVar;
            q02.t(b.class, bVar);
        }

        public final d H() {
            d c = d.c(this.zzg);
            return c == null ? d.CONSENT_STATUS_UNSPECIFIED : c;
        }

        public final e I() {
            e c = e.c(this.zzf);
            return c == null ? e.CONSENT_TYPE_UNSPECIFIED : c;
        }

        @Override // androidx.appcompat.view.menu.q02
        public final Object q(int i, Object obj, Object obj2) {
            nr1 nr1Var = null;
            switch (nr1.a[i - 1]) {
                case 1:
                    return new b();
                case 2:
                    return new a(nr1Var);
                case q02.c.c /* 3 */:
                    return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", e.e(), "zzg", d.e()});
                case 4:
                    return zzc;
                case q02.c.e /* 5 */:
                    t42 t42Var = zzd;
                    if (t42Var == null) {
                        synchronized (b.class) {
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

    public static final class c extends q02 implements a42 {
        private static final c zzc;
        private static volatile t42 zzd;
        private int zze;
        private int zzf;
        private int zzg;

        public static final class a extends q02.b implements a42 {
            public a() {
                super(c.zzc);
            }

            public /* synthetic */ a(nr1 nr1Var) {
                this();
            }
        }

        static {
            c cVar = new c();
            zzc = cVar;
            q02.t(c.class, cVar);
        }

        public final e H() {
            e c = e.c(this.zzg);
            return c == null ? e.CONSENT_TYPE_UNSPECIFIED : c;
        }

        public final e I() {
            e c = e.c(this.zzf);
            return c == null ? e.CONSENT_TYPE_UNSPECIFIED : c;
        }

        @Override // androidx.appcompat.view.menu.q02
        public final Object q(int i, Object obj, Object obj2) {
            nr1 nr1Var = null;
            switch (nr1.a[i - 1]) {
                case 1:
                    return new c();
                case 2:
                    return new a(nr1Var);
                case q02.c.c /* 3 */:
                    return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zze", "zzf", e.e(), "zzg", e.e()});
                case 4:
                    return zzc;
                case q02.c.e /* 5 */:
                    t42 t42Var = zzd;
                    if (t42Var == null) {
                        synchronized (c.class) {
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

    public enum d implements h12 {
        CONSENT_STATUS_UNSPECIFIED(0),
        GRANTED(1),
        DENIED(2);

        public static final f12 q = new xr1();
        public final int m;

        d(int i) {
            this.m = i;
        }

        public static d c(int i) {
            if (i == 0) {
                return CONSENT_STATUS_UNSPECIFIED;
            }
            if (i == 1) {
                return GRANTED;
            }
            if (i != 2) {
                return null;
            }
            return DENIED;
        }

        public static l12 e() {
            return zr1.a;
        }

        @Override // androidx.appcompat.view.menu.h12
        public final int a() {
            return this.m;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + d.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.m + " name=" + name() + '>';
        }
    }

    public enum e implements h12 {
        CONSENT_TYPE_UNSPECIFIED(0),
        AD_STORAGE(1),
        ANALYTICS_STORAGE(2),
        AD_USER_DATA(3),
        AD_PERSONALIZATION(4);

        public static final f12 s = new ds1();
        public final int m;

        e(int i) {
            this.m = i;
        }

        public static e c(int i) {
            if (i == 0) {
                return CONSENT_TYPE_UNSPECIFIED;
            }
            if (i == 1) {
                return AD_STORAGE;
            }
            if (i == 2) {
                return ANALYTICS_STORAGE;
            }
            if (i == 3) {
                return AD_USER_DATA;
            }
            if (i != 4) {
                return null;
            }
            return AD_PERSONALIZATION;
        }

        public static l12 e() {
            return bs1.a;
        }

        @Override // androidx.appcompat.view.menu.h12
        public final int a() {
            return this.m;
        }

        @Override // java.lang.Enum
        public final String toString() {
            return "<" + e.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.m + " name=" + name() + '>';
        }
    }

    public static final class f extends q02 implements a42 {
        private static final f zzc;
        private static volatile t42 zzd;
        private int zze;
        private String zzf = "";
        private String zzg = "";

        public static final class a extends q02.b implements a42 {
            public a() {
                super(f.zzc);
            }

            public /* synthetic */ a(nr1 nr1Var) {
                this();
            }
        }

        static {
            f fVar = new f();
            zzc = fVar;
            q02.t(f.class, fVar);
        }

        public final String H() {
            return this.zzf;
        }

        @Override // androidx.appcompat.view.menu.q02
        public final Object q(int i, Object obj, Object obj2) {
            nr1 nr1Var = null;
            switch (nr1.a[i - 1]) {
                case 1:
                    return new f();
                case 2:
                    return new a(nr1Var);
                case q02.c.c /* 3 */:
                    return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zze", "zzf", "zzg"});
                case 4:
                    return zzc;
                case q02.c.e /* 5 */:
                    t42 t42Var = zzd;
                    if (t42Var == null) {
                        synchronized (f.class) {
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

    static {
        or1 or1Var = new or1();
        zzc = or1Var;
        q02.t(or1.class, or1Var);
    }

    public static or1 H() {
        return zzc;
    }

    public final List I() {
        return this.zzh;
    }

    public final List J() {
        return this.zzf;
    }

    public final List K() {
        return this.zzg;
    }

    public final boolean L() {
        return this.zzi;
    }

    public final boolean M() {
        return (this.zze & 1) != 0;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new or1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zze", "zzf", b.class, "zzg", c.class, "zzh", f.class, "zzi", "zzj", b.class});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (or1.class) {
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
