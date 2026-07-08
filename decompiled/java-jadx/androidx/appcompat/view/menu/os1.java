package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ps1;
import androidx.appcompat.view.menu.q02;
import java.util.List;

/* loaded from: classes.dex */
public final class os1 extends q02 implements a42 {
    private static final os1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private n12 zzf = q02.B();
    private String zzg = "";

    public static final class a extends q02.b implements a42 {
        public a() {
            super(os1.zzc);
        }

        public final int r() {
            return ((os1) this.n).j();
        }

        public final a s(ps1.a aVar) {
            n();
            ((os1) this.n).I((ps1) ((q02) aVar.j()));
            return this;
        }

        public final ps1 t(int i) {
            return ((os1) this.n).G(0);
        }

        public /* synthetic */ a(fs1 fs1Var) {
            this();
        }
    }

    static {
        os1 os1Var = new os1();
        zzc = os1Var;
        q02.t(os1.class, os1Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void I(ps1 ps1Var) {
        ps1Var.getClass();
        n12 n12Var = this.zzf;
        if (!n12Var.c()) {
            this.zzf = q02.o(n12Var);
        }
        this.zzf.add(ps1Var);
    }

    public static a J() {
        return (a) zzc.w();
    }

    public final ps1 G(int i) {
        return (ps1) this.zzf.get(0);
    }

    public final List L() {
        return this.zzf;
    }

    public final int j() {
        return this.zzf.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        fs1 fs1Var = null;
        switch (fs1.a[i - 1]) {
            case 1:
                return new os1();
            case 2:
                return new a(fs1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0002\u0000\u0001\u0001\u0007\u0002\u0000\u0001\u0000\u0001\u001b\u0007ဈ\u0000", new Object[]{"zze", "zzf", ps1.class, "zzg"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (os1.class) {
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
