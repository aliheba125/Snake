package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.mf;
import androidx.appcompat.view.menu.nl;
import androidx.appcompat.view.menu.y71;

/* loaded from: classes.dex */
public class k51 extends y71 {
    public nl k;
    public zl l;

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

    public k51(mf mfVar) {
        super(mfVar);
        nl nlVar = new nl(this);
        this.k = nlVar;
        this.l = null;
        this.h.e = nl.a.TOP;
        this.i.e = nl.a.BOTTOM;
        nlVar.e = nl.a.BASELINE;
        this.f = 1;
    }

    @Override // androidx.appcompat.view.menu.y71, androidx.appcompat.view.menu.jl
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
            n(jlVar, mfVar.C, mfVar.E, 1);
            return;
        }
        zl zlVar = this.e;
        if (zlVar.c && !zlVar.j && this.d == mf.b.MATCH_CONSTRAINT) {
            mf mfVar2 = this.b;
            int i3 = mfVar2.m;
            if (i3 == 2) {
                mf G = mfVar2.G();
                if (G != null) {
                    if (G.f.e.j) {
                        this.e.d((int) ((r7.g * this.b.t) + 0.5f));
                    }
                }
            } else if (i3 == 3 && mfVar2.e.e.j) {
                int u = mfVar2.u();
                if (u == -1) {
                    mf mfVar3 = this.b;
                    f = mfVar3.e.e.g;
                    t = mfVar3.t();
                } else if (u == 0) {
                    f2 = r7.e.e.g * this.b.t();
                    i = (int) (f2 + 0.5f);
                    this.e.d(i);
                } else if (u != 1) {
                    i = 0;
                    this.e.d(i);
                } else {
                    mf mfVar4 = this.b;
                    f = mfVar4.e.e.g;
                    t = mfVar4.t();
                }
                f2 = f / t;
                i = (int) (f2 + 0.5f);
                this.e.d(i);
            }
        }
        nl nlVar = this.h;
        if (nlVar.c) {
            nl nlVar2 = this.i;
            if (nlVar2.c) {
                if (nlVar.j && nlVar2.j && this.e.j) {
                    return;
                }
                if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT) {
                    mf mfVar5 = this.b;
                    if (mfVar5.l == 0 && !mfVar5.X()) {
                        nl nlVar3 = (nl) this.h.l.get(0);
                        nl nlVar4 = (nl) this.i.l.get(0);
                        int i4 = nlVar3.g;
                        nl nlVar5 = this.h;
                        int i5 = i4 + nlVar5.f;
                        int i6 = nlVar4.g + this.i.f;
                        nlVar5.d(i5);
                        this.i.d(i6);
                        this.e.d(i6 - i5);
                        return;
                    }
                }
                if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT && this.a == 1 && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    nl nlVar6 = (nl) this.h.l.get(0);
                    int i7 = (((nl) this.i.l.get(0)).g + this.i.f) - (nlVar6.g + this.h.f);
                    zl zlVar2 = this.e;
                    int i8 = zlVar2.m;
                    if (i7 < i8) {
                        zlVar2.d(i7);
                    } else {
                        zlVar2.d(i8);
                    }
                }
                if (this.e.j && this.h.l.size() > 0 && this.i.l.size() > 0) {
                    nl nlVar7 = (nl) this.h.l.get(0);
                    nl nlVar8 = (nl) this.i.l.get(0);
                    int i9 = nlVar7.g + this.h.f;
                    int i10 = nlVar8.g + this.i.f;
                    float K = this.b.K();
                    if (nlVar7 == nlVar8) {
                        i9 = nlVar7.g;
                        i10 = nlVar8.g;
                        K = 0.5f;
                    }
                    this.h.d((int) (i9 + 0.5f + (((i10 - i9) - this.e.g) * K)));
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
            this.e.d(mfVar.v());
        }
        if (!this.e.j) {
            this.d = this.b.M();
            if (this.b.S()) {
                this.l = new d8(this);
            }
            mf.b bVar = this.d;
            if (bVar != mf.b.MATCH_CONSTRAINT) {
                if (bVar == mf.b.MATCH_PARENT && (G2 = this.b.G()) != null && G2.M() == mf.b.FIXED) {
                    int v = (G2.v() - this.b.C.c()) - this.b.E.c();
                    b(this.h, G2.f.h, this.b.C.c());
                    b(this.i, G2.f.i, -this.b.E.c());
                    this.e.d(v);
                    return;
                }
                if (this.d == mf.b.FIXED) {
                    this.e.d(this.b.v());
                }
            }
        } else if (this.d == mf.b.MATCH_PARENT && (G = this.b.G()) != null && G.M() == mf.b.FIXED) {
            b(this.h, G.f.h, this.b.C.c());
            b(this.i, G.f.i, -this.b.E.c());
            return;
        }
        zl zlVar = this.e;
        boolean z = zlVar.j;
        if (z) {
            mf mfVar2 = this.b;
            if (mfVar2.a) {
                kf[] kfVarArr = mfVar2.J;
                kf kfVar = kfVarArr[2];
                kf kfVar2 = kfVar.d;
                if (kfVar2 != null && kfVarArr[3].d != null) {
                    if (mfVar2.X()) {
                        this.h.f = this.b.J[2].c();
                        this.i.f = -this.b.J[3].c();
                    } else {
                        nl h = h(this.b.J[2]);
                        if (h != null) {
                            b(this.h, h, this.b.J[2].c());
                        }
                        nl h2 = h(this.b.J[3]);
                        if (h2 != null) {
                            b(this.i, h2, -this.b.J[3].c());
                        }
                        this.h.b = true;
                        this.i.b = true;
                    }
                    if (this.b.S()) {
                        b(this.k, this.h, this.b.n());
                        return;
                    }
                    return;
                }
                if (kfVar2 != null) {
                    nl h3 = h(kfVar);
                    if (h3 != null) {
                        b(this.h, h3, this.b.J[2].c());
                        b(this.i, this.h, this.e.g);
                        if (this.b.S()) {
                            b(this.k, this.h, this.b.n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                kf kfVar3 = kfVarArr[3];
                if (kfVar3.d != null) {
                    nl h4 = h(kfVar3);
                    if (h4 != null) {
                        b(this.i, h4, -this.b.J[3].c());
                        b(this.h, this.i, -this.e.g);
                    }
                    if (this.b.S()) {
                        b(this.k, this.h, this.b.n());
                        return;
                    }
                    return;
                }
                kf kfVar4 = kfVarArr[4];
                if (kfVar4.d != null) {
                    nl h5 = h(kfVar4);
                    if (h5 != null) {
                        b(this.k, h5, 0);
                        b(this.h, this.k, -this.b.n());
                        b(this.i, this.h, this.e.g);
                        return;
                    }
                    return;
                }
                if ((mfVar2 instanceof dz) || mfVar2.G() == null || this.b.m(kf.b.CENTER).d != null) {
                    return;
                }
                b(this.h, this.b.G().f.h, this.b.R());
                b(this.i, this.h, this.e.g);
                if (this.b.S()) {
                    b(this.k, this.h, this.b.n());
                    return;
                }
                return;
            }
        }
        if (z || this.d != mf.b.MATCH_CONSTRAINT) {
            zlVar.b(this);
        } else {
            mf mfVar3 = this.b;
            int i = mfVar3.m;
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
            } else if (i == 3 && !mfVar3.X()) {
                mf mfVar4 = this.b;
                if (mfVar4.l != 3) {
                    zl zlVar4 = mfVar4.e.e;
                    this.e.l.add(zlVar4);
                    zlVar4.k.add(this.e);
                    zl zlVar5 = this.e;
                    zlVar5.b = true;
                    zlVar5.k.add(this.h);
                    this.e.k.add(this.i);
                }
            }
        }
        mf mfVar5 = this.b;
        kf[] kfVarArr2 = mfVar5.J;
        kf kfVar5 = kfVarArr2[2];
        kf kfVar6 = kfVar5.d;
        if (kfVar6 != null && kfVarArr2[3].d != null) {
            if (mfVar5.X()) {
                this.h.f = this.b.J[2].c();
                this.i.f = -this.b.J[3].c();
            } else {
                nl h6 = h(this.b.J[2]);
                nl h7 = h(this.b.J[3]);
                h6.b(this);
                h7.b(this);
                this.j = y71.b.CENTER;
            }
            if (this.b.S()) {
                c(this.k, this.h, 1, this.l);
            }
        } else if (kfVar6 != null) {
            nl h8 = h(kfVar5);
            if (h8 != null) {
                b(this.h, h8, this.b.J[2].c());
                c(this.i, this.h, 1, this.e);
                if (this.b.S()) {
                    c(this.k, this.h, 1, this.l);
                }
                mf.b bVar2 = this.d;
                mf.b bVar3 = mf.b.MATCH_CONSTRAINT;
                if (bVar2 == bVar3 && this.b.t() > 0.0f) {
                    jz jzVar = this.b.e;
                    if (jzVar.d == bVar3) {
                        jzVar.e.k.add(this.e);
                        this.e.l.add(this.b.e.e);
                        this.e.a = this;
                    }
                }
            }
        } else {
            kf kfVar7 = kfVarArr2[3];
            if (kfVar7.d != null) {
                nl h9 = h(kfVar7);
                if (h9 != null) {
                    b(this.i, h9, -this.b.J[3].c());
                    c(this.h, this.i, -1, this.e);
                    if (this.b.S()) {
                        c(this.k, this.h, 1, this.l);
                    }
                }
            } else {
                kf kfVar8 = kfVarArr2[4];
                if (kfVar8.d != null) {
                    nl h10 = h(kfVar8);
                    if (h10 != null) {
                        b(this.k, h10, 0);
                        c(this.h, this.k, -1, this.l);
                        c(this.i, this.h, 1, this.e);
                    }
                } else if (!(mfVar5 instanceof dz) && mfVar5.G() != null) {
                    b(this.h, this.b.G().f.h, this.b.R());
                    c(this.i, this.h, 1, this.e);
                    if (this.b.S()) {
                        c(this.k, this.h, 1, this.l);
                    }
                    mf.b bVar4 = this.d;
                    mf.b bVar5 = mf.b.MATCH_CONSTRAINT;
                    if (bVar4 == bVar5 && this.b.t() > 0.0f) {
                        jz jzVar2 = this.b.e;
                        if (jzVar2.d == bVar5) {
                            jzVar2.e.k.add(this.e);
                            this.e.l.add(this.b.e.e);
                            this.e.a = this;
                        }
                    }
                }
            }
        }
        if (this.e.l.size() == 0) {
            this.e.c = true;
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void e() {
        nl nlVar = this.h;
        if (nlVar.j) {
            this.b.G0(nlVar.g);
        }
    }

    @Override // androidx.appcompat.view.menu.y71
    public void f() {
        this.c = null;
        this.h.c();
        this.i.c();
        this.k.c();
        this.e.c();
        this.g = false;
    }

    @Override // androidx.appcompat.view.menu.y71
    public boolean m() {
        return this.d != mf.b.MATCH_CONSTRAINT || this.b.m == 0;
    }

    public void q() {
        this.g = false;
        this.h.c();
        this.h.j = false;
        this.i.c();
        this.i.j = false;
        this.k.c();
        this.k.j = false;
        this.e.j = false;
    }

    public String toString() {
        return "VerticalRun " + this.b.r();
    }
}
