package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.pq1;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.sq1;
import java.util.List;

/* loaded from: classes.dex */
public final class oq1 extends q02 implements a42 {
    private static final oq1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private n12 zzg = q02.B();
    private n12 zzh = q02.B();
    private boolean zzi;
    private boolean zzj;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(oq1.zzc);
        }

        public final int r() {
            return ((oq1) this.n).L();
        }

        public final a s(int i, pq1.a aVar) {
            n();
            ((oq1) this.n).H(i, (pq1) ((q02) aVar.j()));
            return this;
        }

        public final a t(int i, sq1.a aVar) {
            n();
            ((oq1) this.n).I(i, (sq1) ((q02) aVar.j()));
            return this;
        }

        public final pq1 u(int i) {
            return ((oq1) this.n).G(i);
        }

        public final int v() {
            return ((oq1) this.n).N();
        }

        public final sq1 w(int i) {
            return ((oq1) this.n).M(i);
        }

        public /* synthetic */ a(nq1 nq1Var) {
            this();
        }
    }

    static {
        oq1 oq1Var = new oq1();
        zzc = oq1Var;
        q02.t(oq1.class, oq1Var);
    }

    public final pq1 G(int i) {
        return (pq1) this.zzh.get(i);
    }

    public final void H(int i, pq1 pq1Var) {
        pq1Var.getClass();
        n12 n12Var = this.zzh;
        if (!n12Var.c()) {
            this.zzh = q02.o(n12Var);
        }
        this.zzh.set(i, pq1Var);
    }

    public final void I(int i, sq1 sq1Var) {
        sq1Var.getClass();
        n12 n12Var = this.zzg;
        if (!n12Var.c()) {
            this.zzg = q02.o(n12Var);
        }
        this.zzg.set(i, sq1Var);
    }

    public final int L() {
        return this.zzh.size();
    }

    public final sq1 M(int i) {
        return (sq1) this.zzg.get(i);
    }

    public final int N() {
        return this.zzg.size();
    }

    public final List P() {
        return this.zzh;
    }

    public final List Q() {
        return this.zzg;
    }

    public final boolean R() {
        return (this.zze & 1) != 0;
    }

    public final int j() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nq1 nq1Var = null;
        switch (nq1.a[i - 1]) {
            case 1:
                return new oq1();
            case 2:
                return new a(nq1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zze", "zzf", "zzg", sq1.class, "zzh", pq1.class, "zzi", "zzj"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (oq1.class) {
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
