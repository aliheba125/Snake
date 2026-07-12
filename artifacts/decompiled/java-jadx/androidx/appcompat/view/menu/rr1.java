package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.q02;
import androidx.appcompat.view.menu.qr1;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class rr1 extends q02 implements a42 {
    private static final rr1 zzc;
    private static volatile t42 zzd;
    private int zze;
    private long zzf;
    private int zzh;
    private boolean zzm;
    private or1 zzt;
    private sr1 zzu;
    private String zzg = "";
    private n12 zzi = q02.B();
    private n12 zzj = q02.B();
    private n12 zzk = q02.B();
    private String zzl = "";
    private n12 zzn = q02.B();
    private n12 zzo = q02.B();
    private String zzp = "";
    private String zzq = "";
    private String zzr = "";
    private String zzs = "";

    public static final class a extends q02.b implements a42 {
        public a() {
            super(rr1.zzc);
        }

        public final int r() {
            return ((rr1) this.n).K();
        }

        public final qr1 s(int i) {
            return ((rr1) this.n).G(i);
        }

        public final a t(int i, qr1.a aVar) {
            n();
            ((rr1) this.n).H(i, (qr1) ((q02) aVar.j()));
            return this;
        }

        public final a u() {
            n();
            ((rr1) this.n).c0();
            return this;
        }

        public final String v() {
            return ((rr1) this.n).T();
        }

        public final List w() {
            return Collections.unmodifiableList(((rr1) this.n).U());
        }

        public final List x() {
            return Collections.unmodifiableList(((rr1) this.n).V());
        }

        public /* synthetic */ a(nr1 nr1Var) {
            this();
        }
    }

    static {
        rr1 rr1Var = new rr1();
        zzc = rr1Var;
        q02.t(rr1.class, rr1Var);
    }

    public static a N() {
        return (a) zzc.w();
    }

    public static rr1 P() {
        return zzc;
    }

    public final qr1 G(int i) {
        return (qr1) this.zzj.get(i);
    }

    public final void H(int i, qr1 qr1Var) {
        qr1Var.getClass();
        n12 n12Var = this.zzj;
        if (!n12Var.c()) {
            this.zzj = q02.o(n12Var);
        }
        this.zzj.set(i, qr1Var);
    }

    public final int K() {
        return this.zzj.size();
    }

    public final long L() {
        return this.zzf;
    }

    public final or1 M() {
        or1 or1Var = this.zzt;
        return or1Var == null ? or1.H() : or1Var;
    }

    public final String Q() {
        return this.zzg;
    }

    public final String R() {
        return this.zzr;
    }

    public final String S() {
        return this.zzq;
    }

    public final String T() {
        return this.zzp;
    }

    public final List U() {
        return this.zzk;
    }

    public final List V() {
        return this.zzo;
    }

    public final List W() {
        return this.zzn;
    }

    public final List X() {
        return this.zzi;
    }

    public final boolean Y() {
        return this.zzm;
    }

    public final boolean Z() {
        return (this.zze & PackageParser.PARSE_TRUSTED_OVERLAY) != 0;
    }

    public final boolean a0() {
        return (this.zze & 2) != 0;
    }

    public final boolean b0() {
        return (this.zze & 1) != 0;
    }

    public final void c0() {
        this.zzk = q02.B();
    }

    public final int j() {
        return this.zzn.size();
    }

    @Override // androidx.appcompat.view.menu.q02
    public final Object q(int i, Object obj, Object obj2) {
        nr1 nr1Var = null;
        switch (nr1.a[i - 1]) {
            case 1:
                return new rr1();
            case 2:
                return new a(nr1Var);
            case q02.c.c /* 3 */:
                return q02.r(zzc, "\u0001\u0010\u0000\u0001\u0001\u0010\u0010\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\fဈ\u0006\rဈ\u0007\u000eဈ\b\u000fဉ\t\u0010ဉ\n", new Object[]{"zze", "zzf", "zzg", "zzh", "zzi", ur1.class, "zzj", qr1.class, "zzk", oq1.class, "zzl", "zzm", "zzn", jt1.class, "zzo", pr1.class, "zzp", "zzq", "zzr", "zzs", "zzt", "zzu"});
            case 4:
                return zzc;
            case q02.c.e /* 5 */:
                t42 t42Var = zzd;
                if (t42Var == null) {
                    synchronized (rr1.class) {
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
