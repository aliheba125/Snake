package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class ms1 extends q02 implements a42 {
    private static final ms1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private long zzh;
    private float zzi;
    private double zzj;
    private String zzf = "";
    private String zzg = "";
    private n12 zzk = q02.B();

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ms1.zzc);
        }

        public final a A() {
            n();
            ((ms1) this.n).m0();
            return this;
        }

        public final a B() {
            n();
            ((ms1) this.n).n0();
            return this;
        }

        public final int r() {
            return ((ms1) this.n).V();
        }

        public final a s(double d) {
            n();
            ((ms1) this.n).H(d);
            return this;
        }

        public final a t(long j) {
            n();
            ((ms1) this.n).I(j);
            return this;
        }

        public final a u(a aVar) {
            n();
            ((ms1) this.n).a0((ms1) ((q02) aVar.j()));
            return this;
        }

        public final a v(Iterable iterable) {
            n();
            ((ms1) this.n).P(iterable);
            return this;
        }

        public final a w(String str) {
            n();
            ((ms1) this.n).Q(str);
            return this;
        }

        public final a x() {
            n();
            ((ms1) this.n).k0();
            return this;
        }

        public final a y(String str) {
            n();
            ((ms1) this.n).U(str);
            return this;
        }

        public final a z() {
            n();
            ((ms1) this.n).l0();
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        ms1 ms1Var = new ms1();
        zzc = ms1Var;
        q02.t(ms1.class, ms1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(long j) {
        this.zze |= 4;
        this.zzh = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void P(Iterable iterable) {
        o0();
        ax1.f(iterable, this.zzk);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(String str) {
        str.getClass();
        this.zze |= 1;
        this.zzf = str;
    }

    public static a Z() {
        return (a) zzc.w();
    }

    public final double G() {
        return this.zzj;
    }

    public final void H(double d) {
        this.zze |= 16;
        this.zzj = d;
    }

    public final float R() {
        return this.zzi;
    }

    public final void U(String str) {
        str.getClass();
        this.zze |= 2;
        this.zzg = str;
    }

    public final int V() {
        return this.zzk.size();
    }

    public final long X() {
        return this.zzh;
    }

    public final void a0(ms1 ms1Var) {
        ms1Var.getClass();
        o0();
        this.zzk.add(ms1Var);
    }

    public final String c0() {
        return this.zzf;
    }

    public final String d0() {
        return this.zzg;
    }

    public final List e0() {
        return this.zzk;
    }

    public final boolean f0() {
        return (this.zze & 16) != 0;
    }

    public final boolean g0() {
        return (this.zze & 8) != 0;
    }

    public final boolean h0() {
        return (this.zze & 4) != 0;
    }

    public final boolean i0() {
        return (this.zze & 1) != 0;
    }

    public final boolean j0() {
        return (this.zze & 2) != 0;
    }

    public final void k0() {
        this.zze &= -17;
        this.zzj = 0.0d;
    }

    public final void l0() {
        this.zze &= -5;
        this.zzh = 0L;
    }

    public final void m0() {
        this.zzk = q02.B();
    }

    public final void n0() {
        this.zze &= -3;
        this.zzg = zzc.zzg;
    }

    public final void o0() {
        n12 n12Var = this.zzk;
        if (n12Var.c()) {
            return;
        }
        this.zzk = q02.o(n12Var);
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new ms1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", "zzj", "zzk", ms1.class});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ms1.class) {
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
