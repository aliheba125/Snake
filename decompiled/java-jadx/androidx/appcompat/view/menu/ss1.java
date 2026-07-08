package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class ss1 extends q02 implements a42 {
    private static final ss1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private p12 zzg = q02.A();

    public static final class a extends q02.b implements a42 {
        public a() {
            super(ss1.zzc);
        }

        public final a r(int i) {
            n();
            ((ss1) this.n).L(i);
            return this;
        }

        public final a s(Iterable iterable) {
            n();
            ((ss1) this.n).J(iterable);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        ss1 ss1Var = new ss1();
        zzc = ss1Var;
        q02.t(ss1.class, ss1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void J(Iterable iterable) {
        p12 p12Var = this.zzg;
        if (!p12Var.c()) {
            this.zzg = q02.p(p12Var);
        }
        ax1.f(iterable, this.zzg);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(int i) {
        this.zze |= 1;
        this.zzf = i;
    }

    public static a M() {
        return (a) zzc.w();
    }

    public final long G(int i) {
        return this.zzg.j(i);
    }

    public final int K() {
        return this.zzf;
    }

    public final List O() {
        return this.zzg;
    }

    public final boolean P() {
        return (this.zze & 1) != 0;
    }

    public final int j() {
        return this.zzg.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new ss1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zze", "zzf", "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (ss1.class) {
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
