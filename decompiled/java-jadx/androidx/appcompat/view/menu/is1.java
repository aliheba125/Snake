package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.rs1;

/* loaded from: classes.dex */
public final class is1 extends q02 implements a42 {
    private static final is1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private int zzf;
    private rs1 zzg;
    private rs1 zzh;
    private boolean zzi;

    public static final class a extends q02.b implements a42 {
        public a() {
            super(is1.zzc);
        }

        public final a r(int i) {
            n();
            ((is1) this.n).G(i);
            return this;
        }

        public final a s(rs1.a aVar) {
            n();
            ((is1) this.n).K((rs1) ((q02) aVar.j()));
            return this;
        }

        public final a t(rs1 rs1Var) {
            n();
            ((is1) this.n).O(rs1Var);
            return this;
        }

        public final a u(boolean z) {
            n();
            ((is1) this.n).L(z);
            return this;
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        is1 is1Var = new is1();
        zzc = is1Var;
        q02.t(is1.class, is1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void K(rs1 rs1Var) {
        rs1Var.getClass();
        this.zzg = rs1Var;
        this.zze |= 2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void L(boolean z) {
        this.zze |= 8;
        this.zzi = z;
    }

    public static a M() {
        return (a) zzc.w();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void O(rs1 rs1Var) {
        rs1Var.getClass();
        this.zzh = rs1Var;
        this.zze |= 4;
    }

    public final void G(int i) {
        this.zze |= 1;
        this.zzf = i;
    }

    public final rs1 Q() {
        rs1 rs1Var = this.zzg;
        return rs1Var == null ? rs1.X() : rs1Var;
    }

    public final rs1 R() {
        rs1 rs1Var = this.zzh;
        return rs1Var == null ? rs1.X() : rs1Var;
    }

    public final boolean S() {
        return this.zzi;
    }

    public final boolean T() {
        return (this.zze & 1) != 0;
    }

    public final boolean U() {
        return (this.zze & 8) != 0;
    }

    public final boolean V() {
        return (this.zze & 4) != 0;
    }

    public final int j() {
        return this.zzf;
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new is1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (is1.class) {
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
