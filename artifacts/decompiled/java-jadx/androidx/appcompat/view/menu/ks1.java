package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ms1;
import androidx.appcompat.view.menu.q02;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ks1 extends q02 implements a42 {
    private static final ks1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private n12 zzf = q02.B();
    private String zzg = "";
    private long zzh;
    private long zzi;
    private int zzj;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ks1.zzc);
        }

        public final long A() {
            return ((ks1) this.n).X();
        }

        public final a B(long j) {
            n();
            ((ks1) this.n).V(j);
            return this;
        }

        public final ms1 C(int i) {
            return ((ks1) this.n).G(i);
        }

        public final long D() {
            return ((ks1) this.n).Y();
        }

        public final a E() {
            n();
            ((ks1) this.n).g0();
            return this;
        }

        public final String F() {
            return ((ks1) this.n).b0();
        }

        public final List G() {
            return Collections.unmodifiableList(((ks1) this.n).c0());
        }

        public final boolean H() {
            return ((ks1) this.n).f0();
        }

        public final int r() {
            return ((ks1) this.n).T();
        }

        public final a s(int i) {
            n();
            ((ks1) this.n).U(i);
            return this;
        }

        public final a t(int i, ms1.a aVar) {
            n();
            ((ks1) this.n).H(i, (ms1) ((q02) aVar.j()));
            return this;
        }

        public final a u(int i, ms1 ms1Var) {
            n();
            ((ks1) this.n).H(i, ms1Var);
            return this;
        }

        public final a v(long j) {
            n();
            ((ks1) this.n).I(j);
            return this;
        }

        public final a w(ms1.a aVar) {
            n();
            ((ks1) this.n).Q((ms1) ((q02) aVar.j()));
            return this;
        }

        public final a x(ms1 ms1Var) {
            n();
            ((ks1) this.n).Q(ms1Var);
            return this;
        }

        public final a y(Iterable iterable) {
            n();
            ((ks1) this.n).R(iterable);
            return this;
        }

        public final a z(String str) {
            n();
            ((ks1) this.n).S(str);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        ks1 ks1Var = new ks1();
        zzc = ks1Var;
        q02.t(ks1.class, ks1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(long j) {
        this.zze |= 4;
        this.zzi = j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void Q(ms1 ms1Var) {
        ms1Var.getClass();
        h0();
        this.zzf.add(ms1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void S(String str) {
        str.getClass();
        this.zze |= 1;
        this.zzg = str;
    }

    public static a Z() {
        return (a) zzc.w();
    }

    public final ms1 G(int i) {
        return (ms1) this.zzf.get(i);
    }

    public final void H(int i, ms1 ms1Var) {
        ms1Var.getClass();
        h0();
        this.zzf.set(i, ms1Var);
    }

    public final void R(Iterable iterable) {
        h0();
        ax1.f(iterable, this.zzf);
    }

    public final int T() {
        return this.zzf.size();
    }

    public final void U(int i) {
        h0();
        this.zzf.remove(i);
    }

    public final void V(long j) {
        this.zze |= 2;
        this.zzh = j;
    }

    public final long X() {
        return this.zzi;
    }

    public final long Y() {
        return this.zzh;
    }

    public final String b0() {
        return this.zzg;
    }

    public final List c0() {
        return this.zzf;
    }

    public final boolean d0() {
        return (this.zze & 8) != 0;
    }

    public final boolean e0() {
        return (this.zze & 4) != 0;
    }

    public final boolean f0() {
        return (this.zze & 2) != 0;
    }

    public final void g0() {
        this.zzf = q02.B();
    }

    public final void h0() {
        n12 n12Var = this.zzf;
        if (n12Var.c()) {
            return;
        }
        this.zzf = q02.o(n12Var);
    }

    public final int j() {
        return this.zzj;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new ks1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003", new Object[]{"zze", "zzf", ms1.class, "zzg", "zzh", "zzi", "zzj"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ks1.class) {
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
