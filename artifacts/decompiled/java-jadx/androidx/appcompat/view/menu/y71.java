package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.mf;

/* loaded from: classes.dex */
public abstract class y71 implements jl {
    public int a;
    public mf b;
    public zp0 c;
    public mf.b d;
    public zl e = new zl(this);
    public int f = 0;
    public boolean g = false;
    public nl h = new nl(this);
    public nl i = new nl(this);
    public b j = b.NONE;

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[kf.b.values().length];
            a = iArr;
            try {
                iArr[kf.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[kf.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[kf.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[kf.b.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[kf.b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public y71(mf mfVar) {
        this.b = mfVar;
    }

    @Override // androidx.appcompat.view.menu.jl
    public abstract void a(jl jlVar);

    public final void b(nl nlVar, nl nlVar2, int i) {
        nlVar.l.add(nlVar2);
        nlVar.f = i;
        nlVar2.k.add(nlVar);
    }

    public final void c(nl nlVar, nl nlVar2, int i, zl zlVar) {
        nlVar.l.add(nlVar2);
        nlVar.l.add(this.e);
        nlVar.h = i;
        nlVar.i = zlVar;
        nlVar2.k.add(nlVar);
        zlVar.k.add(nlVar);
    }

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public final int g(int i, int i2) {
        int max;
        if (i2 == 0) {
            mf mfVar = this.b;
            int i3 = mfVar.p;
            max = Math.max(mfVar.o, i);
            if (i3 > 0) {
                max = Math.min(i3, i);
            }
            if (max == i) {
                return i;
            }
        } else {
            mf mfVar2 = this.b;
            int i4 = mfVar2.s;
            max = Math.max(mfVar2.r, i);
            if (i4 > 0) {
                max = Math.min(i4, i);
            }
            if (max == i) {
                return i;
            }
        }
        return max;
    }

    public final nl h(kf kfVar) {
        kf kfVar2 = kfVar.d;
        if (kfVar2 == null) {
            return null;
        }
        mf mfVar = kfVar2.b;
        int i = a.a[kfVar2.c.ordinal()];
        if (i == 1) {
            return mfVar.e.h;
        }
        if (i == 2) {
            return mfVar.e.i;
        }
        if (i == 3) {
            return mfVar.f.h;
        }
        if (i == 4) {
            return mfVar.f.k;
        }
        if (i != 5) {
            return null;
        }
        return mfVar.f.i;
    }

    public final nl i(kf kfVar, int i) {
        kf kfVar2 = kfVar.d;
        if (kfVar2 == null) {
            return null;
        }
        mf mfVar = kfVar2.b;
        y71 y71Var = i == 0 ? mfVar.e : mfVar.f;
        int i2 = a.a[kfVar2.c.ordinal()];
        if (i2 != 1) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 5) {
                        return null;
                    }
                }
            }
            return y71Var.i;
        }
        return y71Var.h;
    }

    public long j() {
        if (this.e.j) {
            return r0.g;
        }
        return 0L;
    }

    public boolean k() {
        return this.g;
    }

    public final void l(int i, int i2) {
        int i3 = this.a;
        if (i3 == 0) {
            this.e.d(g(i2, i));
            return;
        }
        if (i3 == 1) {
            this.e.d(Math.min(g(this.e.m, i), i2));
            return;
        }
        if (i3 == 2) {
            mf G = this.b.G();
            if (G != null) {
                if ((i == 0 ? G.e : G.f).e.j) {
                    mf mfVar = this.b;
                    this.e.d(g((int) ((r9.g * (i == 0 ? mfVar.q : mfVar.t)) + 0.5f), i));
                    return;
                }
                return;
            }
            return;
        }
        if (i3 != 3) {
            return;
        }
        mf mfVar2 = this.b;
        y71 y71Var = mfVar2.e;
        mf.b bVar = y71Var.d;
        mf.b bVar2 = mf.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && y71Var.a == 3) {
            k51 k51Var = mfVar2.f;
            if (k51Var.d == bVar2 && k51Var.a == 3) {
                return;
            }
        }
        if (i == 0) {
            y71Var = mfVar2.f;
        }
        if (y71Var.e.j) {
            float t = mfVar2.t();
            this.e.d(i == 1 ? (int) ((y71Var.e.g / t) + 0.5f) : (int) ((t * y71Var.e.g) + 0.5f));
        }
    }

    public abstract boolean m();

    public void n(jl jlVar, kf kfVar, kf kfVar2, int i) {
        nl h = h(kfVar);
        nl h2 = h(kfVar2);
        if (h.j && h2.j) {
            int c = h.g + kfVar.c();
            int c2 = h2.g - kfVar2.c();
            int i2 = c2 - c;
            if (!this.e.j && this.d == mf.b.MATCH_CONSTRAINT) {
                l(i, i2);
            }
            zl zlVar = this.e;
            if (zlVar.j) {
                if (zlVar.g == i2) {
                    this.h.d(c);
                    this.i.d(c2);
                    return;
                }
                mf mfVar = this.b;
                float w = i == 0 ? mfVar.w() : mfVar.K();
                if (h == h2) {
                    c = h.g;
                    c2 = h2.g;
                    w = 0.5f;
                }
                this.h.d((int) (c + 0.5f + (((c2 - c) - this.e.g) * w)));
                this.i.d(this.h.g + this.e.g);
            }
        }
    }

    public void o(jl jlVar) {
    }

    public void p(jl jlVar) {
    }
}
