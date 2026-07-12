package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.mf;
import androidx.appcompat.view.menu.nl;
import androidx.appcompat.view.menu.y71;

/* loaded from: classes.dex */
public class jz extends y71 {
    public static int[] k = new int[2];

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[y71.b.values().length];
            a = iArr;
            try {
                iArr[y71.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[y71.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[y71.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public jz(mf mfVar) {
        super(mfVar);
        this.h.e = nl.a.LEFT;
        this.i.e = nl.a.RIGHT;
        this.f = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x02ba, code lost:
    
        if (r14 != 1) goto L135;
     */
    @Override // androidx.appcompat.view.menu.y71, androidx.appcompat.view.menu.jl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(jl jlVar) {
        float f;
        float t;
        float f2;
        int i;
        int i2 = a.a[this.j.ordinal()];
        if (i2 == 1) {
            p(jlVar);
        } else if (i2 == 2) {
            o(jlVar);
        } else if (i2 == 3) {
            mf mfVar = this.b;
            n(jlVar, mfVar.B, mfVar.D, 0);
            return;
        }
        if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT) {
            mf mfVar2 = this.b;
            int i3 = mfVar2.l;
            if (i3 == 2) {
                mf G = mfVar2.G();
                if (G != null) {
                    if (G.e.e.j) {
                        this.e.d((int) ((r0.g * this.b.q) + 0.5f));
                    }
                }
            } else if (i3 == 3) {
                int i4 = mfVar2.m;
                if (i4 == 0 || i4 == 3) {
                    k51 k51Var = mfVar2.f;
                    nl nlVar = k51Var.h;
                    nl nlVar2 = k51Var.i;
                    boolean z = mfVar2.B.d != null;
                    boolean z2 = mfVar2.C.d != null;
                    boolean z3 = mfVar2.D.d != null;
                    boolean z4 = mfVar2.E.d != null;
                    int u = mfVar2.u();
                    if (z && z2 && z3 && z4) {
                        float t2 = this.b.t();
                        if (nlVar.j && nlVar2.j) {
                            nl nlVar3 = this.h;
                            if (nlVar3.c && this.i.c) {
                                q(k, ((nl) nlVar3.l.get(0)).g + this.h.f, ((nl) this.i.l.get(0)).g - this.i.f, nlVar.g + nlVar.f, nlVar2.g - nlVar2.f, t2, u);
                                this.e.d(k[0]);
                                this.b.f.e.d(k[1]);
                                return;
                            }
                            return;
                        }
                        nl nlVar4 = this.h;
                        if (nlVar4.j) {
                            nl nlVar5 = this.i;
                            if (nlVar5.j) {
                                if (!nlVar.c || !nlVar2.c) {
                                    return;
                                }
                                q(k, nlVar4.g + nlVar4.f, nlVar5.g - nlVar5.f, ((nl) nlVar.l.get(0)).g + nlVar.f, ((nl) nlVar2.l.get(0)).g - nlVar2.f, t2, u);
                                this.e.d(k[0]);
                                this.b.f.e.d(k[1]);
                            }
                        }
                        nl nlVar6 = this.h;
                        if (!nlVar6.c || !this.i.c || !nlVar.c || !nlVar2.c) {
                            return;
                        }
                        q(k, ((nl) nlVar6.l.get(0)).g + this.h.f, ((nl) this.i.l.get(0)).g - this.i.f, ((nl) nlVar.l.get(0)).g + nlVar.f, ((nl) nlVar2.l.get(0)).g - nlVar2.f, t2, u);
                        this.e.d(k[0]);
                        this.b.f.e.d(k[1]);
                    } else if (z && z3) {
                        if (!this.h.c || !this.i.c) {
                            return;
                        }
                        float t3 = this.b.t();
                        int i5 = ((nl) this.h.l.get(0)).g + this.h.f;
                        int i6 = ((nl) this.i.l.get(0)).g - this.i.f;
                        if (u == -1 || u == 0) {
                            int g = g(i6 - i5, 0);
                            int i7 = (int) ((g * t3) + 0.5f);
                            int g2 = g(i7, 1);
                            if (i7 != g2) {
                                g = (int) ((g2 / t3) + 0.5f);
                            }
                            this.e.d(g);
                            this.b.f.e.d(g2);
                        } else if (u == 1) {
                            int g3 = g(i6 - i5, 0);
                            int i8 = (int) ((g3 / t3) + 0.5f);
                            int g4 = g(i8, 1);
                            if (i8 != g4) {
                                g3 = (int) ((g4 * t3) + 0.5f);
                            }
                            this.e.d(g3);
                            this.b.f.e.d(g4);
                        }
                    } else if (z2 && z4) {
                        if (!nlVar.c || !nlVar2.c) {
                            return;
                        }
                        float t4 = this.b.t();
                        int i9 = ((nl) nlVar.l.get(0)).g + nlVar.f;
                        int i10 = ((nl) nlVar2.l.get(0)).g - nlVar2.f;
                        if (u != -1) {
                            if (u == 0) {
                                int g5 = g(i10 - i9, 1);
                                int i11 = (int) ((g5 * t4) + 0.5f);
                                int g6 = g(i11, 0);
                                if (i11 != g6) {
                                    g5 = (int) ((g6 / t4) + 0.5f);
                                }
                                this.e.d(g6);
                                this.b.f.e.d(g5);
                            }
                        }
                        int g7 = g(i10 - i9, 1);
                        int i12 = (int) ((g7 / t4) + 0.5f);
                        int g8 = g(i12, 0);
                        if (i12 != g8) {
                            g7 = (int) ((g8 * t4) + 0.5f);
                        }
                        this.e.d(g8);
                        this.b.f.e.d(g7);
                    }
                } else {
                    int u2 = mfVar2.u();
                    if (u2 == -1) {
                        mf mfVar3 = this.b;
                        f = mfVar3.f.e.g;
                        t = mfVar3.t();
                    } else if (u2 == 0) {
                        f2 = r0.f.e.g / this.b.t();
                        i = (int) (f2 + 0.5f);
                        this.e.d(i);
                    } else if (u2 != 1) {
                        i = 0;
                        this.e.d(i);
                    } else {
                        mf mfVar4 = this.b;
                        f = mfVar4.f.e.g;
                        t = mfVar4.t();
                    }
                    f2 = f * t;
                    i = (int) (f2 + 0.5f);
                    this.e.d(i);
                }
            }
        }
        nl nlVar7 = this.h;
        if (nlVar7.c) {
            nl nlVar8 = this.i;
            if (nlVar8.c) {
                if (nlVar7.j && nlVar8.j && this.e.j) {
                    return;
                }
                if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT) {
                    mf mfVar5 = this.b;
                    if (mfVar5.l == 0 && !mfVar5.V()) {
                        nl nlVar9 = (nl) this.h.l.get(0);
                        nl nlVar10 = (nl) this.i.l.get(0);
                        int i13 = nlVar9.g;
                        nl nlVar11 = this.h;
                        int i14 = i13 + nlVar11.f;
                        int i15 = nlVar10.g + this.i.f;
                        nlVar11.d(i14);
                        this.i.d(i15);
                        this.e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT && this.a == 1 && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    int min = Math.min((((nl) this.i.l.get(0)).g + this.i.f) - (((nl) this.h.l.get(0)).g + this.h.f), this.e.m);
                    mf mfVar6 = this.b;
                    int i16 = mfVar6.p;
                    int max = Math.max(mfVar6.o, min);
                    if (i16 > 0) {
                        max = Math.min(i16, max);
                    }
                    this.e.d(max);
                }
                if (this.e.j) {
                    nl nlVar12 = (nl) this.h.l.get(0);
                    nl nlVar13 = (nl) this.i.l.get(0);
                    int i17 = nlVar12.g + this.h.f;
                    int i18 = nlVar13.g + this.i.f;
                    float w = this.b.w();
                    if (nlVar12 == nlVar13) {
                        i17 = nlVar12.g;
                        i18 = nlVar13.g;
                        w = 0.5f;
                    }
                    this.h.d((int) (i17 + 0.5f + (((i18 - i17) - this.e.g) * w)));
                    this.i.d(this.h.g + this.e.g);
                }
            }
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void d() {
        mf G;
        mf G2;
        mf mfVar = this.b;
        if (mfVar.a) {
            this.e.d(mfVar.P());
        }
        if (this.e.j) {
            mf.b bVar = this.d;
            mf.b bVar2 = mf.b.MATCH_PARENT;
            if (bVar == bVar2 && (((G = this.b.G()) != null && G.y() == mf.b.FIXED) || G.y() == bVar2)) {
                b(this.h, G.e.h, this.b.B.c());
                b(this.i, G.e.i, -this.b.D.c());
                return;
            }
        } else {
            mf.b y = this.b.y();
            this.d = y;
            if (y != mf.b.MATCH_CONSTRAINT) {
                mf.b bVar3 = mf.b.MATCH_PARENT;
                if (y == bVar3 && (((G2 = this.b.G()) != null && G2.y() == mf.b.FIXED) || G2.y() == bVar3)) {
                    int P = (G2.P() - this.b.B.c()) - this.b.D.c();
                    b(this.h, G2.e.h, this.b.B.c());
                    b(this.i, G2.e.i, -this.b.D.c());
                    this.e.d(P);
                    return;
                }
                if (this.d == mf.b.FIXED) {
                    this.e.d(this.b.P());
                }
            }
        }
        zl zlVar = this.e;
        if (zlVar.j) {
            mf mfVar2 = this.b;
            if (mfVar2.a) {
                kf[] kfVarArr = mfVar2.J;
                kf kfVar = kfVarArr[0];
                kf kfVar2 = kfVar.d;
                if (kfVar2 != null && kfVarArr[1].d != null) {
                    if (mfVar2.V()) {
                        this.h.f = this.b.J[0].c();
                        this.i.f = -this.b.J[1].c();
                        return;
                    }
                    nl h = h(this.b.J[0]);
                    if (h != null) {
                        b(this.h, h, this.b.J[0].c());
                    }
                    nl h2 = h(this.b.J[1]);
                    if (h2 != null) {
                        b(this.i, h2, -this.b.J[1].c());
                    }
                    this.h.b = true;
                    this.i.b = true;
                    return;
                }
                if (kfVar2 != null) {
                    nl h3 = h(kfVar);
                    if (h3 != null) {
                        b(this.h, h3, this.b.J[0].c());
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                kf kfVar3 = kfVarArr[1];
                if (kfVar3.d != null) {
                    nl h4 = h(kfVar3);
                    if (h4 != null) {
                        b(this.i, h4, -this.b.J[1].c());
                        b(this.h, this.i, -this.e.g);
                        return;
                    }
                    return;
                }
                if ((mfVar2 instanceof dz) || mfVar2.G() == null || this.b.m(kf.b.CENTER).d != null) {
                    return;
                }
                b(this.h, this.b.G().e.h, this.b.Q());
                b(this.i, this.h, this.e.g);
                return;
            }
        }
        if (this.d == mf.b.MATCH_CONSTRAINT) {
            mf mfVar3 = this.b;
            int i = mfVar3.l;
            if (i == 2) {
                mf G3 = mfVar3.G();
                if (G3 != null) {
                    zl zlVar2 = G3.f.e;
                    this.e.l.add(zlVar2);
                    zlVar2.k.add(this.e);
                    zl zlVar3 = this.e;
                    zlVar3.b = true;
                    zlVar3.k.add(this.h);
                    this.e.k.add(this.i);
                }
            } else if (i == 3) {
                if (mfVar3.m == 3) {
                    this.h.a = this;
                    this.i.a = this;
                    k51 k51Var = mfVar3.f;
                    k51Var.h.a = this;
                    k51Var.i.a = this;
                    zlVar.a = this;
                    if (mfVar3.X()) {
                        this.e.l.add(this.b.f.e);
                        this.b.f.e.k.add(this.e);
                        k51 k51Var2 = this.b.f;
                        k51Var2.e.a = this;
                        this.e.l.add(k51Var2.h);
                        this.e.l.add(this.b.f.i);
                        this.b.f.h.k.add(this.e);
                        this.b.f.i.k.add(this.e);
                    } else if (this.b.V()) {
                        this.b.f.e.l.add(this.e);
                        this.e.k.add(this.b.f.e);
                    } else {
                        this.b.f.e.l.add(this.e);
                    }
                } else {
                    zl zlVar4 = mfVar3.f.e;
                    zlVar.l.add(zlVar4);
                    zlVar4.k.add(this.e);
                    this.b.f.h.k.add(this.e);
                    this.b.f.i.k.add(this.e);
                    zl zlVar5 = this.e;
                    zlVar5.b = true;
                    zlVar5.k.add(this.h);
                    this.e.k.add(this.i);
                    this.h.l.add(this.e);
                    this.i.l.add(this.e);
                }
            }
        }
        mf mfVar4 = this.b;
        kf[] kfVarArr2 = mfVar4.J;
        kf kfVar4 = kfVarArr2[0];
        kf kfVar5 = kfVar4.d;
        if (kfVar5 != null && kfVarArr2[1].d != null) {
            if (mfVar4.V()) {
                this.h.f = this.b.J[0].c();
                this.i.f = -this.b.J[1].c();
                return;
            }
            nl h5 = h(this.b.J[0]);
            nl h6 = h(this.b.J[1]);
            h5.b(this);
            h6.b(this);
            this.j = y71.b.CENTER;
            return;
        }
        if (kfVar5 != null) {
            nl h7 = h(kfVar4);
            if (h7 != null) {
                b(this.h, h7, this.b.J[0].c());
                c(this.i, this.h, 1, this.e);
                return;
            }
            return;
        }
        kf kfVar6 = kfVarArr2[1];
        if (kfVar6.d != null) {
            nl h8 = h(kfVar6);
            if (h8 != null) {
                b(this.i, h8, -this.b.J[1].c());
                c(this.h, this.i, -1, this.e);
                return;
            }
            return;
        }
        if ((mfVar4 instanceof dz) || mfVar4.G() == null) {
            return;
        }
        b(this.h, this.b.G().e.h, this.b.Q());
        c(this.i, this.h, 1, this.e);
    }

    @Override // androidx.appcompat.view.menu.y71
    public void e() {
        nl nlVar = this.h;
        if (nlVar.j) {
            this.b.F0(nlVar.g);
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.appcompat.view.menu.y71
    public boolean m() {
        return this.d != mf.b.MATCH_CONSTRAINT || this.b.l == 0;
    }

    public final void q(int[] iArr, int i, int i2, int i3, int i4, float f, int i5) {
        int i6 = i2 - i;
        int i7 = i4 - i3;
        if (i5 != -1) {
            if (i5 == 0) {
                iArr[0] = (int) ((i7 * f) + 0.5f);
                iArr[1] = i7;
                return;
            } else {
                if (i5 != 1) {
                    return;
                }
                iArr[0] = i6;
                iArr[1] = (int) ((i6 * f) + 0.5f);
                return;
            }
        }
        int i8 = (int) ((i7 * f) + 0.5f);
        int i9 = (int) ((i6 / f) + 0.5f);
        if (i8 <= i6) {
            iArr[0] = i8;
            iArr[1] = i7;
        } else if (i9 <= i7) {
            iArr[0] = i6;
            iArr[1] = i9;
        }
    }

    public void r() {
        this.g = false;
        this.h.c();
        this.h.j = false;
        this.i.c();
        this.i.j = false;
        this.e.j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.b.r();
    }
}
