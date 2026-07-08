package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.mf;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class e8 {
    public final ArrayList a = new ArrayList();
    public a b = new a();
    public nf c;

    public static class a {
        public mf.b a;
        public mf.b b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public boolean j;
    }

    public interface b {
        void a();

        void b(mf mfVar, a aVar);
    }

    public e8(nf nfVar) {
        this.c = nfVar;
    }

    public final boolean a(b bVar, mf mfVar, boolean z) {
        this.b.a = mfVar.y();
        this.b.b = mfVar.M();
        this.b.c = mfVar.P();
        this.b.d = mfVar.v();
        a aVar = this.b;
        aVar.i = false;
        aVar.j = z;
        mf.b bVar2 = aVar.a;
        mf.b bVar3 = mf.b.MATCH_CONSTRAINT;
        boolean z2 = bVar2 == bVar3;
        boolean z3 = aVar.b == bVar3;
        boolean z4 = z2 && mfVar.Q > 0.0f;
        boolean z5 = z3 && mfVar.Q > 0.0f;
        if (z4 && mfVar.n[0] == 4) {
            aVar.a = mf.b.FIXED;
        }
        if (z5 && mfVar.n[1] == 4) {
            aVar.b = mf.b.FIXED;
        }
        bVar.b(mfVar, aVar);
        mfVar.E0(this.b.e);
        mfVar.h0(this.b.f);
        mfVar.g0(this.b.h);
        mfVar.b0(this.b.g);
        a aVar2 = this.b;
        aVar2.j = false;
        return aVar2.i;
    }

    public final void b(nf nfVar) {
        int size = nfVar.w0.size();
        b U0 = nfVar.U0();
        for (int i = 0; i < size; i++) {
            mf mfVar = (mf) nfVar.w0.get(i);
            if (!(mfVar instanceof jy) && (!mfVar.e.e.j || !mfVar.f.e.j)) {
                mf.b s = mfVar.s(0);
                mf.b s2 = mfVar.s(1);
                mf.b bVar = mf.b.MATCH_CONSTRAINT;
                if (s != bVar || mfVar.l == 1 || s2 != bVar || mfVar.m == 1) {
                    a(U0, mfVar, false);
                }
            }
        }
        U0.a();
    }

    public final void c(nf nfVar, String str, int i, int i2) {
        int E = nfVar.E();
        int D = nfVar.D();
        nfVar.u0(0);
        nfVar.t0(0);
        nfVar.E0(i);
        nfVar.h0(i2);
        nfVar.u0(E);
        nfVar.t0(D);
        this.c.K0();
    }

    /* JADX WARN: Code restructure failed: missing block: B:173:0x02cb, code lost:
    
        if (r10 != false) goto L176;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long d(nf nfVar, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9) {
        boolean z;
        int i10;
        boolean z2;
        int i11;
        int i12;
        b bVar;
        int i13;
        boolean z3;
        boolean z4;
        int i14;
        b U0 = nfVar.U0();
        int size = nfVar.w0.size();
        int P = nfVar.P();
        int v = nfVar.v();
        boolean b2 = qg0.b(i, PackageParser.PARSE_IS_PRIVILEGED);
        boolean z5 = b2 || qg0.b(i, 64);
        if (z5) {
            for (int i15 = 0; i15 < size; i15++) {
                mf mfVar = (mf) nfVar.w0.get(i15);
                mf.b y = mfVar.y();
                mf.b bVar2 = mf.b.MATCH_CONSTRAINT;
                boolean z6 = (y == bVar2) && (mfVar.M() == bVar2) && mfVar.t() > 0.0f;
                if ((mfVar.V() && z6) || ((mfVar.X() && z6) || (mfVar instanceof f71) || mfVar.V() || mfVar.X())) {
                    z5 = false;
                    break;
                }
            }
        }
        if (z5) {
            int i16 = g90.q;
        }
        int i17 = 2;
        if (z5 && ((i4 == 1073741824 && i6 == 1073741824) || b2)) {
            int min = Math.min(nfVar.C(), i5);
            int min2 = Math.min(nfVar.B(), i7);
            if (i4 == 1073741824 && nfVar.P() != min) {
                nfVar.E0(min);
                nfVar.X0();
            }
            if (i6 == 1073741824 && nfVar.v() != min2) {
                nfVar.h0(min2);
                nfVar.X0();
            }
            if (i4 == 1073741824 && i6 == 1073741824) {
                z = nfVar.R0(b2);
                i10 = 2;
            } else {
                boolean S0 = nfVar.S0(b2);
                if (i4 == 1073741824) {
                    z4 = S0 & nfVar.T0(b2, 0);
                    i14 = 1;
                } else {
                    z4 = S0;
                    i14 = 0;
                }
                if (i6 == 1073741824) {
                    boolean T0 = nfVar.T0(b2, 1) & z4;
                    i10 = i14 + 1;
                    z = T0;
                } else {
                    i10 = i14;
                    z = z4;
                }
            }
            if (z) {
                nfVar.I0(i4 == 1073741824, i6 == 1073741824);
            }
        } else {
            z = false;
            i10 = 0;
        }
        if (z && i10 == 2) {
            return 0L;
        }
        if (size > 0) {
            b(nfVar);
        }
        int V0 = nfVar.V0();
        int size2 = this.a.size();
        if (size > 0) {
            c(nfVar, "First pass", P, v);
        }
        if (size2 > 0) {
            mf.b y2 = nfVar.y();
            mf.b bVar3 = mf.b.WRAP_CONTENT;
            boolean z7 = y2 == bVar3;
            boolean z8 = nfVar.M() == bVar3;
            int max = Math.max(nfVar.P(), this.c.E());
            int max2 = Math.max(nfVar.v(), this.c.D());
            int i18 = 0;
            boolean z9 = false;
            while (i18 < size2) {
                mf mfVar2 = (mf) this.a.get(i18);
                if (mfVar2 instanceof f71) {
                    int P2 = mfVar2.P();
                    int v2 = mfVar2.v();
                    i13 = V0;
                    boolean a2 = z9 | a(U0, mfVar2, true);
                    int P3 = mfVar2.P();
                    int v3 = mfVar2.v();
                    if (P3 != P2) {
                        mfVar2.E0(P3);
                        if (z7 && mfVar2.I() > max) {
                            max = Math.max(max, mfVar2.I() + mfVar2.m(kf.b.RIGHT).c());
                        }
                        z3 = true;
                    } else {
                        z3 = a2;
                    }
                    if (v3 != v2) {
                        mfVar2.h0(v3);
                        if (z8 && mfVar2.p() > max2) {
                            max2 = Math.max(max2, mfVar2.p() + mfVar2.m(kf.b.BOTTOM).c());
                        }
                        z3 = true;
                    }
                    z9 = z3 | ((f71) mfVar2).V0();
                } else {
                    i13 = V0;
                }
                i18++;
                V0 = i13;
                i17 = 2;
            }
            int i19 = V0;
            int i20 = 0;
            for (int i21 = i17; i20 < i21; i21 = 2) {
                int i22 = 0;
                while (i22 < size2) {
                    mf mfVar3 = (mf) this.a.get(i22);
                    if (((mfVar3 instanceof dz) && !(mfVar3 instanceof f71)) || (mfVar3 instanceof jy) || mfVar3.O() == 8 || ((mfVar3.e.e.j && mfVar3.f.e.j) || (mfVar3 instanceof f71))) {
                        i11 = size2;
                        bVar = U0;
                        i12 = i20;
                    } else {
                        int P4 = mfVar3.P();
                        int v4 = mfVar3.v();
                        i11 = size2;
                        int n = mfVar3.n();
                        i12 = i20;
                        z9 |= a(U0, mfVar3, true);
                        int P5 = mfVar3.P();
                        bVar = U0;
                        int v5 = mfVar3.v();
                        if (P5 != P4) {
                            mfVar3.E0(P5);
                            if (z7 && mfVar3.I() > max) {
                                max = Math.max(max, mfVar3.I() + mfVar3.m(kf.b.RIGHT).c());
                            }
                            z9 = true;
                        }
                        if (v5 != v4) {
                            mfVar3.h0(v5);
                            if (z8 && mfVar3.p() > max2) {
                                max2 = Math.max(max2, mfVar3.p() + mfVar3.m(kf.b.BOTTOM).c());
                            }
                            z9 = true;
                        }
                        if (mfVar3.S() && n != mfVar3.n()) {
                            z9 = true;
                        }
                    }
                    i22++;
                    size2 = i11;
                    U0 = bVar;
                    i20 = i12;
                }
                int i23 = size2;
                b bVar4 = U0;
                int i24 = i20;
                if (z9) {
                    c(nfVar, "intermediate pass", P, v);
                    z9 = false;
                }
                i20 = i24 + 1;
                size2 = i23;
                U0 = bVar4;
            }
            if (z9) {
                c(nfVar, "2nd pass", P, v);
                if (nfVar.P() < max) {
                    nfVar.E0(max);
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (nfVar.v() < max2) {
                    nfVar.h0(max2);
                }
                c(nfVar, "3rd pass", P, v);
            }
            V0 = i19;
        }
        nfVar.g1(V0);
        return 0L;
    }

    public void e(nf nfVar) {
        int i;
        this.a.clear();
        int size = nfVar.w0.size();
        while (i < size) {
            mf mfVar = (mf) nfVar.w0.get(i);
            mf.b y = mfVar.y();
            mf.b bVar = mf.b.MATCH_CONSTRAINT;
            if (y != bVar) {
                mf.b y2 = mfVar.y();
                mf.b bVar2 = mf.b.MATCH_PARENT;
                i = (y2 == bVar2 || mfVar.M() == bVar || mfVar.M() == bVar2) ? 0 : i + 1;
            }
            this.a.add(mfVar);
        }
        nfVar.X0();
    }
}
