package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.kf;
import androidx.appcompat.view.menu.q02;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class mf {
    public static float v0 = 0.5f;
    public kf I;
    public kf[] J;
    public ArrayList K;
    public boolean[] L;
    public b[] M;
    public mf N;
    public int O;
    public int P;
    public float Q;
    public int R;
    public int S;
    public int T;
    public int U;
    public int V;
    public int W;
    public int X;
    public int Y;
    public int Z;
    public int a0;
    public float b0;
    public qa c;
    public float c0;
    public qa d;
    public Object d0;
    public int e0;
    public int f0;
    public String g0;
    public String h0;
    public boolean i0;
    public boolean j0;
    public boolean k0;
    public boolean l0;
    public int m0;
    public int n0;
    public boolean o0;
    public boolean p0;
    public float[] q0;
    public mf[] r0;
    public mf[] s0;
    public mf t0;
    public mf u0;
    public boolean z;
    public boolean a = false;
    public y71[] b = new y71[2];
    public jz e = new jz(this);
    public k51 f = new k51(this);
    public boolean[] g = {true, true};
    public int[] h = {0, 0, 0, 0};
    public boolean i = false;
    public int j = -1;
    public int k = -1;
    public int l = 0;
    public int m = 0;
    public int[] n = new int[2];
    public int o = 0;
    public int p = 0;
    public float q = 1.0f;
    public int r = 0;
    public int s = 0;
    public float t = 1.0f;
    public int u = -1;
    public float v = 1.0f;
    public int[] w = {Integer.MAX_VALUE, Integer.MAX_VALUE};
    public float x = 0.0f;
    public boolean y = false;
    public boolean A = false;
    public kf B = new kf(this, kf.b.LEFT);
    public kf C = new kf(this, kf.b.TOP);
    public kf D = new kf(this, kf.b.RIGHT);
    public kf E = new kf(this, kf.b.BOTTOM);
    public kf F = new kf(this, kf.b.BASELINE);
    public kf G = new kf(this, kf.b.CENTER_X);
    public kf H = new kf(this, kf.b.CENTER_Y);

    public static /* synthetic */ class a {
        public static final /* synthetic */ int[] a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[b.values().length];
            b = iArr;
            try {
                iArr[b.FIXED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[b.WRAP_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[b.MATCH_PARENT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[b.MATCH_CONSTRAINT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[kf.b.values().length];
            a = iArr2;
            try {
                iArr2[kf.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[kf.b.TOP.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[kf.b.RIGHT.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[kf.b.BOTTOM.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                a[kf.b.BASELINE.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                a[kf.b.CENTER.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                a[kf.b.CENTER_X.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                a[kf.b.CENTER_Y.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
            try {
                a[kf.b.NONE.ordinal()] = 9;
            } catch (NoSuchFieldError unused13) {
            }
        }
    }

    public enum b {
        FIXED,
        WRAP_CONTENT,
        MATCH_CONSTRAINT,
        MATCH_PARENT
    }

    public mf() {
        kf kfVar = new kf(this, kf.b.CENTER);
        this.I = kfVar;
        this.J = new kf[]{this.B, this.D, this.C, this.E, this.F, kfVar};
        this.K = new ArrayList();
        this.L = new boolean[2];
        b bVar = b.FIXED;
        this.M = new b[]{bVar, bVar};
        this.N = null;
        this.O = 0;
        this.P = 0;
        this.Q = 0.0f;
        this.R = -1;
        this.S = 0;
        this.T = 0;
        this.U = 0;
        this.V = 0;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        float f = v0;
        this.b0 = f;
        this.c0 = f;
        this.e0 = 0;
        this.f0 = 0;
        this.g0 = null;
        this.h0 = null;
        this.k0 = false;
        this.l0 = false;
        this.m0 = 0;
        this.n0 = 0;
        this.q0 = new float[]{-1.0f, -1.0f};
        this.r0 = new mf[]{null, null};
        this.s0 = new mf[]{null, null};
        this.t0 = null;
        this.u0 = null;
        d();
    }

    public int A(int i) {
        if (i == 0) {
            return P();
        }
        if (i == 1) {
            return v();
        }
        return 0;
    }

    public void A0(b bVar) {
        this.M[1] = bVar;
    }

    public int B() {
        return this.w[1];
    }

    public void B0(int i, int i2, int i3, float f) {
        this.m = i;
        this.r = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.s = i3;
        this.t = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.m = 2;
    }

    public int C() {
        return this.w[0];
    }

    public void C0(float f) {
        this.q0[1] = f;
    }

    public int D() {
        return this.a0;
    }

    public void D0(int i) {
        this.f0 = i;
    }

    public int E() {
        return this.Z;
    }

    public void E0(int i) {
        this.O = i;
        int i2 = this.Z;
        if (i < i2) {
            this.O = i2;
        }
    }

    public mf F(int i) {
        kf kfVar;
        kf kfVar2;
        if (i != 0) {
            if (i == 1 && (kfVar2 = (kfVar = this.E).d) != null && kfVar2.d == kfVar) {
                return kfVar2.b;
            }
            return null;
        }
        kf kfVar3 = this.D;
        kf kfVar4 = kfVar3.d;
        if (kfVar4 == null || kfVar4.d != kfVar3) {
            return null;
        }
        return kfVar4.b;
    }

    public void F0(int i) {
        this.S = i;
    }

    public mf G() {
        return this.N;
    }

    public void G0(int i) {
        this.T = i;
    }

    public mf H(int i) {
        kf kfVar;
        kf kfVar2;
        if (i != 0) {
            if (i == 1 && (kfVar2 = (kfVar = this.C).d) != null && kfVar2.d == kfVar) {
                return kfVar2.b;
            }
            return null;
        }
        kf kfVar3 = this.B;
        kf kfVar4 = kfVar3.d;
        if (kfVar4 == null || kfVar4.d != kfVar3) {
            return null;
        }
        return kfVar4.b;
    }

    public void H0(boolean z, boolean z2, boolean z3, boolean z4) {
        if (this.u == -1) {
            if (z3 && !z4) {
                this.u = 0;
            } else if (!z3 && z4) {
                this.u = 1;
                if (this.R == -1) {
                    this.v = 1.0f / this.v;
                }
            }
        }
        if (this.u == 0 && (!this.C.j() || !this.E.j())) {
            this.u = 1;
        } else if (this.u == 1 && (!this.B.j() || !this.D.j())) {
            this.u = 0;
        }
        if (this.u == -1 && (!this.C.j() || !this.E.j() || !this.B.j() || !this.D.j())) {
            if (this.C.j() && this.E.j()) {
                this.u = 0;
            } else if (this.B.j() && this.D.j()) {
                this.v = 1.0f / this.v;
                this.u = 1;
            }
        }
        if (this.u == -1) {
            int i = this.o;
            if (i > 0 && this.r == 0) {
                this.u = 0;
            } else {
                if (i != 0 || this.r <= 0) {
                    return;
                }
                this.v = 1.0f / this.v;
                this.u = 1;
            }
        }
    }

    public int I() {
        return Q() + this.O;
    }

    public void I0(boolean z, boolean z2) {
        int i;
        int i2;
        boolean k = z & this.e.k();
        boolean k2 = z2 & this.f.k();
        jz jzVar = this.e;
        int i3 = jzVar.h.g;
        k51 k51Var = this.f;
        int i4 = k51Var.h.g;
        int i5 = jzVar.i.g;
        int i6 = k51Var.i.g;
        int i7 = i6 - i4;
        if (i5 - i3 < 0 || i7 < 0 || i3 == Integer.MIN_VALUE || i3 == Integer.MAX_VALUE || i4 == Integer.MIN_VALUE || i4 == Integer.MAX_VALUE || i5 == Integer.MIN_VALUE || i5 == Integer.MAX_VALUE || i6 == Integer.MIN_VALUE || i6 == Integer.MAX_VALUE) {
            i5 = 0;
            i3 = 0;
            i6 = 0;
            i4 = 0;
        }
        int i8 = i5 - i3;
        int i9 = i6 - i4;
        if (k) {
            this.S = i3;
        }
        if (k2) {
            this.T = i4;
        }
        if (this.f0 == 8) {
            this.O = 0;
            this.P = 0;
            return;
        }
        if (k) {
            if (this.M[0] == b.FIXED && i8 < (i2 = this.O)) {
                i8 = i2;
            }
            this.O = i8;
            int i10 = this.Z;
            if (i8 < i10) {
                this.O = i10;
            }
        }
        if (k2) {
            if (this.M[1] == b.FIXED && i9 < (i = this.P)) {
                i9 = i;
            }
            this.P = i9;
            int i11 = this.a0;
            if (i9 < i11) {
                this.P = i11;
            }
        }
    }

    public y71 J(int i) {
        if (i == 0) {
            return this.e;
        }
        if (i == 1) {
            return this.f;
        }
        return null;
    }

    public void J0(g90 g90Var) {
        int x = g90Var.x(this.B);
        int x2 = g90Var.x(this.C);
        int x3 = g90Var.x(this.D);
        int x4 = g90Var.x(this.E);
        jz jzVar = this.e;
        nl nlVar = jzVar.h;
        if (nlVar.j) {
            nl nlVar2 = jzVar.i;
            if (nlVar2.j) {
                x = nlVar.g;
                x3 = nlVar2.g;
            }
        }
        k51 k51Var = this.f;
        nl nlVar3 = k51Var.h;
        if (nlVar3.j) {
            nl nlVar4 = k51Var.i;
            if (nlVar4.j) {
                x2 = nlVar3.g;
                x4 = nlVar4.g;
            }
        }
        int i = x4 - x2;
        if (x3 - x < 0 || i < 0 || x == Integer.MIN_VALUE || x == Integer.MAX_VALUE || x2 == Integer.MIN_VALUE || x2 == Integer.MAX_VALUE || x3 == Integer.MIN_VALUE || x3 == Integer.MAX_VALUE || x4 == Integer.MIN_VALUE || x4 == Integer.MAX_VALUE) {
            x = 0;
            x4 = 0;
            x2 = 0;
            x3 = 0;
        }
        f0(x, x2, x3, x4);
    }

    public float K() {
        return this.c0;
    }

    public int L() {
        return this.n0;
    }

    public b M() {
        return this.M[1];
    }

    public int N() {
        int i = this.B != null ? this.C.e : 0;
        return this.D != null ? i + this.E.e : i;
    }

    public int O() {
        return this.f0;
    }

    public int P() {
        if (this.f0 == 8) {
            return 0;
        }
        return this.O;
    }

    public int Q() {
        mf mfVar = this.N;
        return (mfVar == null || !(mfVar instanceof nf)) ? this.S : ((nf) mfVar).C0 + this.S;
    }

    public int R() {
        mf mfVar = this.N;
        return (mfVar == null || !(mfVar instanceof nf)) ? this.T : ((nf) mfVar).D0 + this.T;
    }

    public boolean S() {
        return this.y;
    }

    public void T(kf.b bVar, mf mfVar, kf.b bVar2, int i, int i2) {
        m(bVar).b(mfVar.m(bVar2), i, i2, true);
    }

    public final boolean U(int i) {
        kf kfVar;
        kf kfVar2;
        int i2 = i * 2;
        kf[] kfVarArr = this.J;
        kf kfVar3 = kfVarArr[i2];
        kf kfVar4 = kfVar3.d;
        return (kfVar4 == null || kfVar4.d == kfVar3 || (kfVar2 = (kfVar = kfVarArr[i2 + 1]).d) == null || kfVar2.d != kfVar) ? false : true;
    }

    public boolean V() {
        kf kfVar = this.B;
        kf kfVar2 = kfVar.d;
        if (kfVar2 != null && kfVar2.d == kfVar) {
            return true;
        }
        kf kfVar3 = this.D;
        kf kfVar4 = kfVar3.d;
        return kfVar4 != null && kfVar4.d == kfVar3;
    }

    public boolean W() {
        return this.z;
    }

    public boolean X() {
        kf kfVar = this.C;
        kf kfVar2 = kfVar.d;
        if (kfVar2 != null && kfVar2.d == kfVar) {
            return true;
        }
        kf kfVar3 = this.E;
        kf kfVar4 = kfVar3.d;
        return kfVar4 != null && kfVar4.d == kfVar3;
    }

    public void Y() {
        this.B.l();
        this.C.l();
        this.D.l();
        this.E.l();
        this.F.l();
        this.G.l();
        this.H.l();
        this.I.l();
        this.N = null;
        this.x = 0.0f;
        this.O = 0;
        this.P = 0;
        this.Q = 0.0f;
        this.R = -1;
        this.S = 0;
        this.T = 0;
        this.W = 0;
        this.X = 0;
        this.Y = 0;
        this.Z = 0;
        this.a0 = 0;
        float f = v0;
        this.b0 = f;
        this.c0 = f;
        b[] bVarArr = this.M;
        b bVar = b.FIXED;
        bVarArr[0] = bVar;
        bVarArr[1] = bVar;
        this.d0 = null;
        this.e0 = 0;
        this.f0 = 0;
        this.h0 = null;
        this.i0 = false;
        this.j0 = false;
        this.m0 = 0;
        this.n0 = 0;
        this.o0 = false;
        this.p0 = false;
        float[] fArr = this.q0;
        fArr[0] = -1.0f;
        fArr[1] = -1.0f;
        this.j = -1;
        this.k = -1;
        int[] iArr = this.w;
        iArr[0] = Integer.MAX_VALUE;
        iArr[1] = Integer.MAX_VALUE;
        this.l = 0;
        this.m = 0;
        this.q = 1.0f;
        this.t = 1.0f;
        this.p = Integer.MAX_VALUE;
        this.s = Integer.MAX_VALUE;
        this.o = 0;
        this.r = 0;
        this.i = false;
        this.u = -1;
        this.v = 1.0f;
        this.k0 = false;
        this.l0 = false;
        boolean[] zArr = this.g;
        zArr[0] = true;
        zArr[1] = true;
        this.A = false;
        boolean[] zArr2 = this.L;
        zArr2[0] = false;
        zArr2[1] = false;
    }

    public void Z() {
        mf G = G();
        if (G != null && (G instanceof nf) && ((nf) G()).W0()) {
            return;
        }
        int size = this.K.size();
        for (int i = 0; i < size; i++) {
            ((kf) this.K.get(i)).l();
        }
    }

    public void a0(i9 i9Var) {
        this.B.m(i9Var);
        this.C.m(i9Var);
        this.D.m(i9Var);
        this.E.m(i9Var);
        this.F.m(i9Var);
        this.I.m(i9Var);
        this.G.m(i9Var);
        this.H.m(i9Var);
    }

    public void b0(int i) {
        this.Y = i;
        this.y = i > 0;
    }

    public void c0(Object obj) {
        this.d0 = obj;
    }

    public final void d() {
        this.K.add(this.B);
        this.K.add(this.C);
        this.K.add(this.D);
        this.K.add(this.E);
        this.K.add(this.G);
        this.K.add(this.H);
        this.K.add(this.I);
        this.K.add(this.F);
    }

    public void d0(String str) {
        this.g0 = str;
    }

    public boolean e() {
        return (this instanceof f71) || (this instanceof jy);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x0086 -> B:31:0x0087). Please report as a decompilation issue!!! */
    public void e0(String str) {
        float f;
        int i = 0;
        if (str == null || str.length() == 0) {
            this.Q = 0.0f;
            return;
        }
        int length = str.length();
        int indexOf = str.indexOf(44);
        int i2 = -1;
        if (indexOf > 0 && indexOf < length - 1) {
            String substring = str.substring(0, indexOf);
            i2 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
            r3 = indexOf + 1;
        }
        int indexOf2 = str.indexOf(58);
        if (indexOf2 < 0 || indexOf2 >= length - 1) {
            String substring2 = str.substring(r3);
            if (substring2.length() > 0) {
                f = Float.parseFloat(substring2);
            }
            f = i;
        } else {
            String substring3 = str.substring(r3, indexOf2);
            String substring4 = str.substring(indexOf2 + 1);
            if (substring3.length() > 0 && substring4.length() > 0) {
                float parseFloat = Float.parseFloat(substring3);
                float parseFloat2 = Float.parseFloat(substring4);
                if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                    f = i2 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                }
            }
            f = i;
        }
        i = (f > i ? 1 : (f == i ? 0 : -1));
        if (i > 0) {
            this.Q = f;
            this.R = i2;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0211  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0232  */
    /* JADX WARN: Removed duplicated region for block: B:123:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x034d  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x046e  */
    /* JADX WARN: Removed duplicated region for block: B:157:0x04a1  */
    /* JADX WARN: Removed duplicated region for block: B:159:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:161:0x0497  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x03b0 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x03d9  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x03e6  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0419  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x03e0  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0235  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x021b A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void f(g90 g90Var) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        int i;
        int i2;
        int i3;
        int i4;
        boolean z5;
        boolean z6;
        boolean z7;
        b bVar;
        boolean z8;
        yv0 yv0Var;
        yv0 yv0Var2;
        yv0 yv0Var3;
        yv0 yv0Var4;
        yv0 yv0Var5;
        boolean z9;
        nl nlVar;
        g90 g90Var2;
        yv0 yv0Var6;
        yv0 yv0Var7;
        yv0 yv0Var8;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z10;
        kf kfVar;
        boolean z11;
        yv0 yv0Var9;
        yv0 yv0Var10;
        int i9;
        mf mfVar;
        int i10;
        boolean V;
        boolean X;
        mf mfVar2 = this;
        yv0 q = g90Var.q(mfVar2.B);
        yv0 q2 = g90Var.q(mfVar2.D);
        yv0 q3 = g90Var.q(mfVar2.C);
        yv0 q4 = g90Var.q(mfVar2.E);
        yv0 q5 = g90Var.q(mfVar2.F);
        int i11 = g90.q;
        jz jzVar = mfVar2.e;
        nl nlVar2 = jzVar.h;
        if (nlVar2.j && jzVar.i.j) {
            k51 k51Var = mfVar2.f;
            if (k51Var.h.j && k51Var.i.j) {
                g90Var.f(q, nlVar2.g);
                g90Var.f(q2, mfVar2.e.i.g);
                g90Var.f(q3, mfVar2.f.h.g);
                g90Var.f(q4, mfVar2.f.i.g);
                g90Var.f(q5, mfVar2.f.k.g);
                mf mfVar3 = mfVar2.N;
                if (mfVar3 != null) {
                    boolean z12 = mfVar3 != null && mfVar3.M[0] == b.WRAP_CONTENT;
                    boolean z13 = mfVar3 != null && mfVar3.M[1] == b.WRAP_CONTENT;
                    if (z12 && mfVar2.g[0] && !V()) {
                        g90Var.h(g90Var.q(mfVar2.N.D), q2, 0, 8);
                    }
                    if (z13 && mfVar2.g[1] && !X()) {
                        g90Var.h(g90Var.q(mfVar2.N.E), q4, 0, 8);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        mf mfVar4 = mfVar2.N;
        if (mfVar4 != null) {
            boolean z14 = mfVar4 != null && mfVar4.M[0] == b.WRAP_CONTENT;
            z = mfVar4 != null && mfVar4.M[1] == b.WRAP_CONTENT;
            if (mfVar2.U(0)) {
                ((nf) mfVar2.N).N0(mfVar2, 0);
                V = true;
            } else {
                V = V();
            }
            if (mfVar2.U(1)) {
                ((nf) mfVar2.N).N0(mfVar2, 1);
                X = true;
            } else {
                X = X();
            }
            if (!V && z14 && mfVar2.f0 != 8 && mfVar2.B.d == null && mfVar2.D.d == null) {
                g90Var.h(g90Var.q(mfVar2.N.D), q2, 0, 1);
            }
            if (!X && z && mfVar2.f0 != 8 && mfVar2.C.d == null && mfVar2.E.d == null && mfVar2.F == null) {
                g90Var.h(g90Var.q(mfVar2.N.E), q4, 0, 1);
            }
            z2 = z14;
            z4 = V;
            z3 = X;
        } else {
            z = false;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        int i12 = mfVar2.O;
        int i13 = mfVar2.Z;
        if (i12 >= i13) {
            i13 = i12;
        }
        int i14 = mfVar2.P;
        int i15 = mfVar2.a0;
        if (i14 >= i15) {
            i15 = i14;
        }
        b[] bVarArr = mfVar2.M;
        b bVar2 = bVarArr[0];
        b bVar3 = b.MATCH_CONSTRAINT;
        boolean z15 = bVar2 != bVar3;
        b bVar4 = bVarArr[1];
        boolean z16 = bVar4 != bVar3;
        int i16 = mfVar2.R;
        mfVar2.u = i16;
        int i17 = i13;
        float f = mfVar2.Q;
        mfVar2.v = f;
        int i18 = i15;
        int i19 = mfVar2.l;
        int i20 = mfVar2.m;
        if (f <= 0.0f || mfVar2.f0 == 8) {
            i = i20;
            i2 = i19;
            i3 = i17;
        } else {
            if (bVar2 == bVar3 && i19 == 0) {
                i19 = 3;
            }
            if (bVar4 == bVar3 && i20 == 0) {
                i20 = 3;
            }
            if (bVar2 == bVar3 && bVar4 == bVar3 && i19 == 3 && i20 == 3) {
                mfVar2.H0(z2, z, z15, z16);
            } else if (bVar2 == bVar3 && i19 == 3) {
                mfVar2.u = 0;
                i3 = (int) (f * i14);
                if (bVar4 != bVar3) {
                    i2 = 4;
                    i = i20;
                } else {
                    i = i20;
                    i2 = i19;
                    i4 = i18;
                    z5 = true;
                    int[] iArr = mfVar2.n;
                    iArr[0] = i2;
                    iArr[1] = i;
                    mfVar2.i = z5;
                    if (!z5) {
                    }
                    z6 = false;
                    b bVar5 = mfVar2.M[0];
                    b bVar6 = b.WRAP_CONTENT;
                    if (bVar5 != bVar6) {
                    }
                    if (r30) {
                    }
                    boolean z17 = !mfVar2.I.j();
                    boolean[] zArr = mfVar2.L;
                    boolean z18 = zArr[0];
                    boolean z19 = zArr[1];
                    if (mfVar2.j != 2) {
                    }
                    mfVar2 = this;
                    k51 k51Var2 = mfVar2.f;
                    nlVar = k51Var2.h;
                    if (nlVar.j) {
                    }
                    g90Var2 = g90Var;
                    yv0Var6 = yv0Var;
                    yv0Var7 = yv0Var2;
                    yv0Var8 = yv0Var3;
                    i5 = 8;
                    i6 = 0;
                    i7 = 1;
                    i8 = 1;
                    if (mfVar2.k == 2) {
                    }
                    yv0Var9 = yv0Var7;
                    yv0Var10 = yv0Var8;
                    if (z8) {
                    }
                    if (mfVar.I.j()) {
                    }
                }
            } else if (bVar4 == bVar3 && i20 == 3) {
                mfVar2.u = 1;
                if (i16 == -1) {
                    mfVar2.v = 1.0f / f;
                }
                int i21 = (int) (mfVar2.v * i12);
                if (bVar2 != bVar3) {
                    i = 4;
                    i4 = i21;
                    i2 = i19;
                    i3 = i17;
                    z5 = false;
                    int[] iArr2 = mfVar2.n;
                    iArr2[0] = i2;
                    iArr2[1] = i;
                    mfVar2.i = z5;
                    if (!z5 && ((i10 = mfVar2.u) == 0 || i10 == -1)) {
                        z6 = true;
                        b bVar52 = mfVar2.M[0];
                        b bVar62 = b.WRAP_CONTENT;
                        boolean z20 = bVar52 != bVar62 && (mfVar2 instanceof nf);
                        int i22 = z20 ? 0 : i3;
                        boolean z172 = !mfVar2.I.j();
                        boolean[] zArr2 = mfVar2.L;
                        boolean z182 = zArr2[0];
                        boolean z192 = zArr2[1];
                        if (mfVar2.j != 2) {
                            jz jzVar2 = mfVar2.e;
                            nl nlVar3 = jzVar2.h;
                            if (nlVar3.j && jzVar2.i.j) {
                                g90Var.f(q, nlVar3.g);
                                g90Var.f(q2, mfVar2.e.i.g);
                                if (mfVar2.N != null && z2 && mfVar2.g[0] && !V()) {
                                    g90Var.h(g90Var.q(mfVar2.N.D), q2, 0, 8);
                                }
                                z7 = z;
                                bVar = bVar62;
                                z8 = z5;
                                z9 = z2;
                                yv0Var4 = q2;
                                yv0Var5 = q;
                                yv0Var = q5;
                                yv0Var2 = q4;
                                yv0Var3 = q3;
                                k51 k51Var22 = mfVar2.f;
                                nlVar = k51Var22.h;
                                if (nlVar.j || !k51Var22.i.j) {
                                    g90Var2 = g90Var;
                                    yv0Var6 = yv0Var;
                                    yv0Var7 = yv0Var2;
                                    yv0Var8 = yv0Var3;
                                    i5 = 8;
                                    i6 = 0;
                                    i7 = 1;
                                    i8 = 1;
                                } else {
                                    g90Var2 = g90Var;
                                    yv0Var8 = yv0Var3;
                                    g90Var2.f(yv0Var8, nlVar.g);
                                    yv0Var7 = yv0Var2;
                                    g90Var2.f(yv0Var7, mfVar2.f.i.g);
                                    yv0Var6 = yv0Var;
                                    g90Var2.f(yv0Var6, mfVar2.f.k.g);
                                    mf mfVar5 = mfVar2.N;
                                    if (mfVar5 == null || z3 || !z7) {
                                        i5 = 8;
                                        i6 = 0;
                                        i7 = 1;
                                    } else {
                                        i7 = 1;
                                        if (mfVar2.g[1]) {
                                            i5 = 8;
                                            i6 = 0;
                                            g90Var2.h(g90Var2.q(mfVar5.E), yv0Var7, 0, 8);
                                        } else {
                                            i5 = 8;
                                            i6 = 0;
                                        }
                                    }
                                    i8 = i6;
                                }
                                if (mfVar2.k == 2 || i8 == 0) {
                                    yv0Var9 = yv0Var7;
                                    yv0Var10 = yv0Var8;
                                } else {
                                    z10 = (mfVar2.M[i7] == bVar || !(mfVar2 instanceof nf)) ? i6 : i7;
                                    if (z10) {
                                        i4 = i6;
                                    }
                                    int i23 = (z8 || !((i9 = mfVar2.u) == i7 || i9 == -1)) ? i6 : i7;
                                    mf mfVar6 = mfVar2.N;
                                    yv0 q6 = mfVar6 == null ? g90Var2.q(mfVar6.E) : null;
                                    mf mfVar7 = mfVar2.N;
                                    yv0 q7 = mfVar7 != null ? g90Var2.q(mfVar7.C) : null;
                                    if (mfVar2.Y <= 0 || mfVar2.f0 == i5) {
                                        g90Var2.e(yv0Var6, yv0Var8, n(), i5);
                                        kfVar = mfVar2.F.d;
                                        if (kfVar == null) {
                                            g90Var2.e(yv0Var6, g90Var2.q(kfVar), i6, i5);
                                            if (z7) {
                                                g90Var2.h(q6, g90Var2.q(mfVar2.E), i6, 5);
                                            }
                                            z11 = i6;
                                            boolean z21 = z9;
                                            yv0Var9 = yv0Var7;
                                            yv0Var10 = yv0Var8;
                                            h(g90Var, false, z7, z21, mfVar2.g[i7], q7, q6, mfVar2.M[i7], z10, mfVar2.C, mfVar2.E, mfVar2.T, i4, mfVar2.a0, mfVar2.w[i7], mfVar2.c0, i23, z3, z4, z192, i, i2, mfVar2.r, mfVar2.s, mfVar2.t, z11);
                                        } else if (mfVar2.f0 == i5) {
                                            g90Var2.e(yv0Var6, yv0Var8, i6, i5);
                                        }
                                    }
                                    z11 = z172;
                                    boolean z212 = z9;
                                    yv0Var9 = yv0Var7;
                                    yv0Var10 = yv0Var8;
                                    h(g90Var, false, z7, z212, mfVar2.g[i7], q7, q6, mfVar2.M[i7], z10, mfVar2.C, mfVar2.E, mfVar2.T, i4, mfVar2.a0, mfVar2.w[i7], mfVar2.c0, i23, z3, z4, z192, i, i2, mfVar2.r, mfVar2.s, mfVar2.t, z11);
                                }
                                if (z8) {
                                    mfVar = this;
                                } else {
                                    mfVar = this;
                                    if (mfVar.u == 1) {
                                        g90Var.k(yv0Var9, yv0Var10, yv0Var4, yv0Var5, mfVar.v, 8);
                                    } else {
                                        g90Var.k(yv0Var4, yv0Var5, yv0Var9, yv0Var10, mfVar.v, 8);
                                    }
                                }
                                if (mfVar.I.j()) {
                                    return;
                                }
                                g90Var.b(mfVar, mfVar.I.g().e(), (float) Math.toRadians(mfVar.x + 90.0f), mfVar.I.c());
                                return;
                            }
                            mf mfVar8 = mfVar2.N;
                            yv0 q8 = mfVar8 != null ? g90Var.q(mfVar8.D) : null;
                            mf mfVar9 = mfVar2.N;
                            z9 = z2;
                            yv0Var4 = q2;
                            yv0Var5 = q;
                            z7 = z;
                            yv0Var = q5;
                            yv0Var2 = q4;
                            yv0Var3 = q3;
                            bVar = bVar62;
                            z8 = z5;
                            h(g90Var, true, z9, z7, mfVar2.g[0], mfVar9 != null ? g90Var.q(mfVar9.B) : null, q8, mfVar2.M[0], z20, mfVar2.B, mfVar2.D, mfVar2.S, i22, mfVar2.Z, mfVar2.w[0], mfVar2.b0, z6, z4, z3, z182, i2, i, mfVar2.o, mfVar2.p, mfVar2.q, z172);
                        } else {
                            z7 = z;
                            bVar = bVar62;
                            z8 = z5;
                            yv0Var = q5;
                            yv0Var2 = q4;
                            yv0Var3 = q3;
                            yv0Var4 = q2;
                            yv0Var5 = q;
                            z9 = z2;
                        }
                        mfVar2 = this;
                        k51 k51Var222 = mfVar2.f;
                        nlVar = k51Var222.h;
                        if (nlVar.j) {
                        }
                        g90Var2 = g90Var;
                        yv0Var6 = yv0Var;
                        yv0Var7 = yv0Var2;
                        yv0Var8 = yv0Var3;
                        i5 = 8;
                        i6 = 0;
                        i7 = 1;
                        i8 = 1;
                        if (mfVar2.k == 2) {
                            if (mfVar2.M[i7] == bVar) {
                            }
                            if (z10) {
                            }
                            if (z8) {
                            }
                            mf mfVar62 = mfVar2.N;
                            if (mfVar62 == null) {
                            }
                            mf mfVar72 = mfVar2.N;
                            if (mfVar72 != null) {
                            }
                            if (mfVar2.Y <= 0) {
                            }
                            g90Var2.e(yv0Var6, yv0Var8, n(), i5);
                            kfVar = mfVar2.F.d;
                            if (kfVar == null) {
                            }
                        }
                        yv0Var9 = yv0Var7;
                        yv0Var10 = yv0Var8;
                        if (z8) {
                        }
                        if (mfVar.I.j()) {
                        }
                    }
                    z6 = false;
                    b bVar522 = mfVar2.M[0];
                    b bVar622 = b.WRAP_CONTENT;
                    if (bVar522 != bVar622) {
                    }
                    if (z20) {
                    }
                    boolean z1722 = !mfVar2.I.j();
                    boolean[] zArr22 = mfVar2.L;
                    boolean z1822 = zArr22[0];
                    boolean z1922 = zArr22[1];
                    if (mfVar2.j != 2) {
                    }
                    mfVar2 = this;
                    k51 k51Var2222 = mfVar2.f;
                    nlVar = k51Var2222.h;
                    if (nlVar.j) {
                    }
                    g90Var2 = g90Var;
                    yv0Var6 = yv0Var;
                    yv0Var7 = yv0Var2;
                    yv0Var8 = yv0Var3;
                    i5 = 8;
                    i6 = 0;
                    i7 = 1;
                    i8 = 1;
                    if (mfVar2.k == 2) {
                    }
                    yv0Var9 = yv0Var7;
                    yv0Var10 = yv0Var8;
                    if (z8) {
                    }
                    if (mfVar.I.j()) {
                    }
                } else {
                    i4 = i21;
                    i = i20;
                    i2 = i19;
                    i3 = i17;
                    z5 = true;
                    int[] iArr22 = mfVar2.n;
                    iArr22[0] = i2;
                    iArr22[1] = i;
                    mfVar2.i = z5;
                    if (!z5) {
                        z6 = true;
                        b bVar5222 = mfVar2.M[0];
                        b bVar6222 = b.WRAP_CONTENT;
                        if (bVar5222 != bVar6222) {
                        }
                        if (z20) {
                        }
                        boolean z17222 = !mfVar2.I.j();
                        boolean[] zArr222 = mfVar2.L;
                        boolean z18222 = zArr222[0];
                        boolean z19222 = zArr222[1];
                        if (mfVar2.j != 2) {
                        }
                        mfVar2 = this;
                        k51 k51Var22222 = mfVar2.f;
                        nlVar = k51Var22222.h;
                        if (nlVar.j) {
                        }
                        g90Var2 = g90Var;
                        yv0Var6 = yv0Var;
                        yv0Var7 = yv0Var2;
                        yv0Var8 = yv0Var3;
                        i5 = 8;
                        i6 = 0;
                        i7 = 1;
                        i8 = 1;
                        if (mfVar2.k == 2) {
                        }
                        yv0Var9 = yv0Var7;
                        yv0Var10 = yv0Var8;
                        if (z8) {
                        }
                        if (mfVar.I.j()) {
                        }
                    }
                    z6 = false;
                    b bVar52222 = mfVar2.M[0];
                    b bVar62222 = b.WRAP_CONTENT;
                    if (bVar52222 != bVar62222) {
                    }
                    if (z20) {
                    }
                    boolean z172222 = !mfVar2.I.j();
                    boolean[] zArr2222 = mfVar2.L;
                    boolean z182222 = zArr2222[0];
                    boolean z192222 = zArr2222[1];
                    if (mfVar2.j != 2) {
                    }
                    mfVar2 = this;
                    k51 k51Var222222 = mfVar2.f;
                    nlVar = k51Var222222.h;
                    if (nlVar.j) {
                    }
                    g90Var2 = g90Var;
                    yv0Var6 = yv0Var;
                    yv0Var7 = yv0Var2;
                    yv0Var8 = yv0Var3;
                    i5 = 8;
                    i6 = 0;
                    i7 = 1;
                    i8 = 1;
                    if (mfVar2.k == 2) {
                    }
                    yv0Var9 = yv0Var7;
                    yv0Var10 = yv0Var8;
                    if (z8) {
                    }
                    if (mfVar.I.j()) {
                    }
                }
            }
            i = i20;
            i2 = i19;
            i3 = i17;
            i4 = i18;
            z5 = true;
            int[] iArr222 = mfVar2.n;
            iArr222[0] = i2;
            iArr222[1] = i;
            mfVar2.i = z5;
            if (!z5) {
            }
            z6 = false;
            b bVar522222 = mfVar2.M[0];
            b bVar622222 = b.WRAP_CONTENT;
            if (bVar522222 != bVar622222) {
            }
            if (z20) {
            }
            boolean z1722222 = !mfVar2.I.j();
            boolean[] zArr22222 = mfVar2.L;
            boolean z1822222 = zArr22222[0];
            boolean z1922222 = zArr22222[1];
            if (mfVar2.j != 2) {
            }
            mfVar2 = this;
            k51 k51Var2222222 = mfVar2.f;
            nlVar = k51Var2222222.h;
            if (nlVar.j) {
            }
            g90Var2 = g90Var;
            yv0Var6 = yv0Var;
            yv0Var7 = yv0Var2;
            yv0Var8 = yv0Var3;
            i5 = 8;
            i6 = 0;
            i7 = 1;
            i8 = 1;
            if (mfVar2.k == 2) {
            }
            yv0Var9 = yv0Var7;
            yv0Var10 = yv0Var8;
            if (z8) {
            }
            if (mfVar.I.j()) {
            }
        }
        i4 = i18;
        z5 = false;
        int[] iArr2222 = mfVar2.n;
        iArr2222[0] = i2;
        iArr2222[1] = i;
        mfVar2.i = z5;
        if (!z5) {
        }
        z6 = false;
        b bVar5222222 = mfVar2.M[0];
        b bVar6222222 = b.WRAP_CONTENT;
        if (bVar5222222 != bVar6222222) {
        }
        if (z20) {
        }
        boolean z17222222 = !mfVar2.I.j();
        boolean[] zArr222222 = mfVar2.L;
        boolean z18222222 = zArr222222[0];
        boolean z19222222 = zArr222222[1];
        if (mfVar2.j != 2) {
        }
        mfVar2 = this;
        k51 k51Var22222222 = mfVar2.f;
        nlVar = k51Var22222222.h;
        if (nlVar.j) {
        }
        g90Var2 = g90Var;
        yv0Var6 = yv0Var;
        yv0Var7 = yv0Var2;
        yv0Var8 = yv0Var3;
        i5 = 8;
        i6 = 0;
        i7 = 1;
        i8 = 1;
        if (mfVar2.k == 2) {
        }
        yv0Var9 = yv0Var7;
        yv0Var10 = yv0Var8;
        if (z8) {
        }
        if (mfVar.I.j()) {
        }
    }

    public void f0(int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7 = i3 - i;
        int i8 = i4 - i2;
        this.S = i;
        this.T = i2;
        if (this.f0 == 8) {
            this.O = 0;
            this.P = 0;
            return;
        }
        b[] bVarArr = this.M;
        b bVar = bVarArr[0];
        b bVar2 = b.FIXED;
        if (bVar == bVar2 && i7 < (i6 = this.O)) {
            i7 = i6;
        }
        if (bVarArr[1] == bVar2 && i8 < (i5 = this.P)) {
            i8 = i5;
        }
        this.O = i7;
        this.P = i8;
        int i9 = this.a0;
        if (i8 < i9) {
            this.P = i9;
        }
        int i10 = this.Z;
        if (i7 < i10) {
            this.O = i10;
        }
    }

    public boolean g() {
        return this.f0 != 8;
    }

    public void g0(boolean z) {
        this.y = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x02d8 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:114:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0331 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0332  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x0416  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x01b3  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0424 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:71:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(g90 g90Var, boolean z, boolean z2, boolean z3, boolean z4, yv0 yv0Var, yv0 yv0Var2, b bVar, boolean z5, kf kfVar, kf kfVar2, int i, int i2, int i3, int i4, float f, boolean z6, boolean z7, boolean z8, boolean z9, int i5, int i6, int i7, int i8, float f2, boolean z10) {
        int i9;
        boolean z11;
        int i10;
        yv0 yv0Var3;
        int i11;
        int i12;
        yv0 yv0Var4;
        yv0 yv0Var5;
        yv0 yv0Var6;
        int i13;
        int i14;
        boolean z12;
        boolean z13;
        yv0 q;
        yv0 q2;
        yv0 yv0Var7;
        yv0 yv0Var8;
        yv0 yv0Var9;
        yv0 yv0Var10;
        int i15;
        int i16;
        char c;
        int i17;
        kf kfVar3;
        boolean z14;
        boolean z15;
        boolean z16;
        int i18;
        int i19;
        boolean z17;
        int i20;
        boolean z18;
        boolean z19;
        yv0 yv0Var11;
        mf mfVar;
        boolean z20;
        mf mfVar2;
        yv0 yv0Var12;
        int i21;
        int i22;
        int i23;
        mf mfVar3;
        yv0 yv0Var13;
        mf mfVar4;
        yv0 yv0Var14;
        int i24;
        int i25;
        boolean z21;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        int i32;
        boolean z22;
        yv0 yv0Var15;
        int i33;
        yv0 q3 = g90Var.q(kfVar);
        yv0 q4 = g90Var.q(kfVar2);
        yv0 q5 = g90Var.q(kfVar.g());
        yv0 q6 = g90Var.q(kfVar2.g());
        g90.w();
        boolean j = kfVar.j();
        boolean j2 = kfVar2.j();
        boolean j3 = this.I.j();
        int i34 = j2 ? (j ? 1 : 0) + 1 : j ? 1 : 0;
        if (j3) {
            i34++;
        }
        int i35 = z6 ? 3 : i5;
        int i36 = a.b[bVar.ordinal()];
        if (i36 == 1 || i36 == 2 || i36 == 3 || i36 != 4) {
            i9 = i35;
        } else {
            i9 = i35;
            if (i9 != 4) {
                z11 = true;
                if (this.f0 != 8) {
                    i10 = 0;
                    z11 = false;
                } else {
                    i10 = i2;
                }
                if (z10) {
                    yv0Var3 = q6;
                    i11 = 8;
                } else {
                    if (!j && !j2 && !j3) {
                        g90Var.f(q3, i);
                    } else if (j && !j2) {
                        yv0Var3 = q6;
                        i11 = 8;
                        g90Var.e(q3, q5, kfVar.c(), 8);
                    }
                    yv0Var3 = q6;
                    i11 = 8;
                }
                if (z11) {
                    if (z5) {
                        g90Var.e(q4, q3, 0, 3);
                        if (i3 > 0) {
                            g90Var.h(q4, q3, i3, 8);
                        }
                        if (i4 < Integer.MAX_VALUE) {
                            g90Var.j(q4, q3, i4, 8);
                        }
                    } else {
                        g90Var.e(q4, q3, i10, i11);
                    }
                    i14 = i7;
                    i12 = i8;
                    yv0Var4 = q5;
                    yv0Var5 = q4;
                } else {
                    if (i34 != 2 && !z6 && (i9 == 1 || i9 == 0)) {
                        int max = Math.max(i7, i10);
                        if (i8 > 0) {
                            max = Math.min(i8, max);
                        }
                        g90Var.e(q4, q3, max, 8);
                        z13 = z4;
                        i14 = i7;
                        i12 = i8;
                        yv0Var4 = q5;
                        yv0Var5 = q4;
                        yv0Var6 = yv0Var3;
                        z12 = false;
                        i13 = i34;
                        if (z10) {
                        }
                        if (i17 >= i16) {
                            return;
                        } else {
                            return;
                        }
                    }
                    int i37 = i7 == -2 ? i10 : i7;
                    i12 = i8 == -2 ? i10 : i8;
                    if (i10 > 0 && i9 != 1) {
                        i10 = 0;
                    }
                    if (i37 > 0) {
                        g90Var.h(q4, q3, i37, 8);
                        i10 = Math.max(i10, i37);
                    }
                    if (i12 > 0) {
                        if (!z2 || i9 != 1) {
                            g90Var.j(q4, q3, i12, 8);
                        }
                        i10 = Math.min(i10, i12);
                    }
                    if (i9 != 1) {
                        if (i9 == 2) {
                            kf.b h = kfVar.h();
                            kf.b bVar2 = kf.b.TOP;
                            if (h == bVar2 || kfVar.h() == kf.b.BOTTOM) {
                                q = g90Var.q(this.N.m(bVar2));
                                q2 = g90Var.q(this.N.m(kf.b.BOTTOM));
                            } else {
                                q = g90Var.q(this.N.m(kf.b.LEFT));
                                q2 = g90Var.q(this.N.m(kf.b.RIGHT));
                            }
                            int i38 = i37;
                            yv0Var6 = yv0Var3;
                            yv0Var4 = q5;
                            i13 = i34;
                            yv0Var5 = q4;
                            g90Var.d(g90Var.r().k(q4, q3, q2, q, f2));
                            z13 = z4;
                            i14 = i38;
                            z12 = false;
                        } else {
                            yv0Var4 = q5;
                            yv0Var5 = q4;
                            int i39 = i37;
                            yv0Var6 = yv0Var3;
                            i13 = i34;
                            i14 = i39;
                            z12 = z11;
                            z13 = true;
                        }
                        if (z10) {
                            yv0Var7 = yv0Var2;
                            yv0Var8 = yv0Var5;
                            yv0Var9 = q3;
                            yv0Var10 = yv0Var;
                            i15 = 8;
                            i16 = 2;
                            c = 1;
                            i17 = i13;
                        } else {
                            if (!z7) {
                                if ((j || j2 || j3) && (!j || j2)) {
                                    if (!j && j2) {
                                        g90Var.e(yv0Var5, yv0Var6, -kfVar2.c(), 8);
                                        if (z2) {
                                            g90Var.h(q3, yv0Var, 0, 5);
                                        }
                                    } else if (j && j2) {
                                        mf mfVar5 = kfVar.d.b;
                                        mf mfVar6 = kfVar2.d.b;
                                        mf G = G();
                                        int i40 = 6;
                                        if (z12) {
                                            if (i9 == 0) {
                                                if (i12 == 0 && i14 == 0) {
                                                    z22 = false;
                                                    i31 = 8;
                                                    i32 = 8;
                                                    z17 = true;
                                                } else {
                                                    z17 = false;
                                                    i31 = 5;
                                                    i32 = 5;
                                                    z22 = true;
                                                }
                                                if ((mfVar5 instanceof w7) || (mfVar6 instanceof w7)) {
                                                    i20 = i31;
                                                    i18 = 6;
                                                    z16 = z22;
                                                    z15 = false;
                                                    z14 = true;
                                                    i19 = 4;
                                                    if (z15 || yv0Var4 != yv0Var6 || mfVar5 == G) {
                                                        z18 = z15;
                                                        z19 = z14;
                                                    } else {
                                                        z18 = false;
                                                        z19 = false;
                                                    }
                                                    if (z16) {
                                                        yv0Var11 = yv0Var5;
                                                        mfVar = G;
                                                        z20 = z14;
                                                        mfVar2 = mfVar5;
                                                        yv0Var12 = q3;
                                                        i21 = i9;
                                                        i22 = 8;
                                                        i23 = 4;
                                                        mfVar3 = mfVar6;
                                                    } else {
                                                        yv0Var11 = yv0Var5;
                                                        i23 = 4;
                                                        z20 = true;
                                                        mfVar = G;
                                                        i21 = i9;
                                                        mfVar3 = mfVar6;
                                                        i22 = 8;
                                                        mfVar2 = mfVar5;
                                                        yv0Var12 = q3;
                                                        g90Var.c(q3, yv0Var4, kfVar.c(), f, yv0Var6, yv0Var11, kfVar2.c(), this.f0 == 8 ? 4 : i18);
                                                    }
                                                    if (this.f0 != i22) {
                                                        return;
                                                    }
                                                    if (z18) {
                                                        if (!z2 || yv0Var4 == yv0Var6 || z12) {
                                                            mfVar4 = mfVar2;
                                                        } else {
                                                            mfVar4 = mfVar2;
                                                            if ((mfVar4 instanceof w7) || (mfVar3 instanceof w7)) {
                                                                i28 = 6;
                                                                yv0Var14 = yv0Var12;
                                                                g90Var.h(yv0Var14, yv0Var4, kfVar.c(), i28);
                                                                yv0Var13 = yv0Var11;
                                                                g90Var.j(yv0Var13, yv0Var6, -kfVar2.c(), i28);
                                                                i20 = i28;
                                                            }
                                                        }
                                                        i28 = i20;
                                                        yv0Var14 = yv0Var12;
                                                        g90Var.h(yv0Var14, yv0Var4, kfVar.c(), i28);
                                                        yv0Var13 = yv0Var11;
                                                        g90Var.j(yv0Var13, yv0Var6, -kfVar2.c(), i28);
                                                        i20 = i28;
                                                    } else {
                                                        yv0Var13 = yv0Var11;
                                                        mfVar4 = mfVar2;
                                                        yv0Var14 = yv0Var12;
                                                    }
                                                    if (!z2 || !z9 || (mfVar4 instanceof w7) || (mfVar3 instanceof w7)) {
                                                        i24 = i19;
                                                        i25 = i20;
                                                        z21 = z19;
                                                    } else {
                                                        i24 = 6;
                                                        i25 = 6;
                                                        z21 = z20;
                                                    }
                                                    if (z21) {
                                                        if (!z17 || (z8 && !z3)) {
                                                            i27 = i24;
                                                        } else {
                                                            if (mfVar4 != mfVar && mfVar3 != mfVar) {
                                                                i40 = i24;
                                                            }
                                                            if ((mfVar4 instanceof jy) || (mfVar3 instanceof jy)) {
                                                                i40 = 5;
                                                            }
                                                            if ((mfVar4 instanceof w7) || (mfVar3 instanceof w7)) {
                                                                i40 = 5;
                                                            }
                                                            i27 = Math.max(z8 ? 5 : i40, i24);
                                                        }
                                                        if (z2) {
                                                            i27 = Math.min(i25, i27);
                                                            if (z6 && !z8 && (mfVar4 == mfVar || mfVar3 == mfVar)) {
                                                                i27 = i23;
                                                            }
                                                        }
                                                        g90Var.e(yv0Var14, yv0Var4, kfVar.c(), i27);
                                                        g90Var.e(yv0Var13, yv0Var6, -kfVar2.c(), i27);
                                                    }
                                                    if (z2) {
                                                        i26 = i22;
                                                        int c2 = yv0Var == yv0Var4 ? kfVar.c() : 0;
                                                        if (yv0Var4 != yv0Var) {
                                                            g90Var.h(yv0Var14, yv0Var, c2, 5);
                                                        }
                                                    } else {
                                                        i26 = i22;
                                                    }
                                                    if (z2 && z12 && i3 == 0 && i14 == 0) {
                                                        if (z12 && i21 == 3) {
                                                            g90Var.h(yv0Var13, yv0Var14, 0, i26);
                                                        } else {
                                                            g90Var.h(yv0Var13, yv0Var14, 0, 5);
                                                        }
                                                    }
                                                } else {
                                                    i20 = i31;
                                                    i18 = 6;
                                                    z16 = z22;
                                                    z15 = false;
                                                    z14 = true;
                                                    i19 = i32;
                                                    if (z15) {
                                                    }
                                                    z18 = z15;
                                                    z19 = z14;
                                                    if (z16) {
                                                    }
                                                    if (this.f0 != i22) {
                                                    }
                                                }
                                            } else {
                                                if (i9 == 1) {
                                                    i20 = 8;
                                                    i18 = 6;
                                                    z15 = true;
                                                    z14 = true;
                                                    i19 = 4;
                                                    z17 = false;
                                                    z16 = true;
                                                } else if (i9 != 3) {
                                                    z14 = true;
                                                    i18 = 6;
                                                    z15 = false;
                                                    i19 = 4;
                                                    z17 = false;
                                                    z16 = false;
                                                } else if (this.u == -1) {
                                                    i18 = z8 ? z2 ? 5 : 4 : 8;
                                                    z15 = true;
                                                    z14 = true;
                                                    i19 = 5;
                                                    z17 = true;
                                                    z16 = true;
                                                    i20 = 8;
                                                } else if (z6) {
                                                    if (i6 != 2) {
                                                        z14 = true;
                                                        if (i6 != 1) {
                                                            i29 = 8;
                                                            i30 = 5;
                                                            i20 = i29;
                                                            i19 = i30;
                                                            z15 = z14;
                                                            z17 = z15;
                                                            z16 = z17;
                                                            i18 = 6;
                                                        }
                                                    } else {
                                                        z14 = true;
                                                    }
                                                    i29 = 5;
                                                    i30 = 4;
                                                    i20 = i29;
                                                    i19 = i30;
                                                    z15 = z14;
                                                    z17 = z15;
                                                    z16 = z17;
                                                    i18 = 6;
                                                } else {
                                                    z14 = true;
                                                    if (i12 > 0) {
                                                        z15 = true;
                                                        z17 = true;
                                                        z16 = true;
                                                        i18 = 6;
                                                        i19 = 5;
                                                    } else if (i12 != 0 || i14 != 0) {
                                                        z15 = true;
                                                        z17 = true;
                                                        z16 = true;
                                                        i18 = 6;
                                                        i19 = 4;
                                                    } else if (z8) {
                                                        i20 = (mfVar5 == G || mfVar6 == G) ? 5 : 4;
                                                        z15 = true;
                                                        z17 = true;
                                                        z16 = true;
                                                        i18 = 6;
                                                        i19 = 4;
                                                    } else {
                                                        z15 = true;
                                                        z17 = true;
                                                        z16 = true;
                                                        i18 = 6;
                                                        i19 = 8;
                                                    }
                                                }
                                                if (z15) {
                                                }
                                                z18 = z15;
                                                z19 = z14;
                                                if (z16) {
                                                }
                                                if (this.f0 != i22) {
                                                }
                                            }
                                            if (z2 || !z13) {
                                                return;
                                            }
                                            if (kfVar2.d != null) {
                                                i33 = kfVar2.c();
                                                yv0Var15 = yv0Var2;
                                            } else {
                                                yv0Var15 = yv0Var2;
                                                i33 = 0;
                                            }
                                            if (yv0Var6 != yv0Var15) {
                                                g90Var.h(yv0Var15, yv0Var13, i33, 5);
                                                return;
                                            }
                                            return;
                                        }
                                        z14 = true;
                                        z15 = true;
                                        z16 = true;
                                        i18 = 6;
                                        i19 = 4;
                                        z17 = false;
                                        i20 = 5;
                                        if (z15) {
                                        }
                                        z18 = z15;
                                        z19 = z14;
                                        if (z16) {
                                        }
                                        if (this.f0 != i22) {
                                        }
                                    }
                                }
                                yv0Var13 = yv0Var5;
                                if (z2) {
                                    return;
                                } else {
                                    return;
                                }
                            }
                            yv0Var7 = yv0Var2;
                            yv0Var8 = yv0Var5;
                            yv0Var9 = q3;
                            yv0Var10 = yv0Var;
                            i17 = i13;
                            i15 = 8;
                            i16 = 2;
                            c = 1;
                        }
                        if (i17 >= i16 && z2 && z13) {
                            g90Var.h(yv0Var9, yv0Var10, 0, i15);
                            char c3 = (z || this.F.d == null) ? c : (char) 0;
                            if (!z && (kfVar3 = this.F.d) != null) {
                                mf mfVar7 = kfVar3.b;
                                if (mfVar7.Q == 0.0f) {
                                    return;
                                }
                                b[] bVarArr = mfVar7.M;
                                b bVar3 = bVarArr[0];
                                b bVar4 = b.MATCH_CONSTRAINT;
                                if (bVar3 != bVar4 || bVarArr[c] != bVar4) {
                                    return;
                                }
                            } else if (c3 == 0) {
                                return;
                            }
                            g90Var.h(yv0Var7, yv0Var8, 0, i15);
                            return;
                        }
                        return;
                    }
                    if (z2) {
                        g90Var.e(q4, q3, i10, 8);
                    } else if (z7) {
                        g90Var.e(q4, q3, i10, 5);
                        g90Var.j(q4, q3, i10, 8);
                    } else {
                        g90Var.e(q4, q3, i10, 5);
                        g90Var.j(q4, q3, i10, 8);
                    }
                    yv0Var4 = q5;
                    yv0Var5 = q4;
                    i14 = i37;
                }
                z12 = z11;
                yv0Var6 = yv0Var3;
                z13 = z4;
                i13 = i34;
                if (z10) {
                }
                if (i17 >= i16) {
                }
            }
        }
        z11 = false;
        if (this.f0 != 8) {
        }
        if (z10) {
        }
        if (z11) {
        }
        z12 = z11;
        yv0Var6 = yv0Var3;
        z13 = z4;
        i13 = i34;
        if (z10) {
        }
        if (i17 >= i16) {
        }
    }

    public void h0(int i) {
        this.P = i;
        int i2 = this.a0;
        if (i < i2) {
            this.P = i2;
        }
    }

    public void i(kf.b bVar, mf mfVar, kf.b bVar2, int i) {
        kf.b bVar3;
        kf.b bVar4;
        boolean z;
        kf.b bVar5 = kf.b.CENTER;
        if (bVar == bVar5) {
            if (bVar2 != bVar5) {
                kf.b bVar6 = kf.b.LEFT;
                if (bVar2 == bVar6 || bVar2 == kf.b.RIGHT) {
                    i(bVar6, mfVar, bVar2, 0);
                    i(kf.b.RIGHT, mfVar, bVar2, 0);
                    m(bVar5).a(mfVar.m(bVar2), 0);
                    return;
                }
                kf.b bVar7 = kf.b.TOP;
                if (bVar2 == bVar7 || bVar2 == kf.b.BOTTOM) {
                    i(bVar7, mfVar, bVar2, 0);
                    i(kf.b.BOTTOM, mfVar, bVar2, 0);
                    m(bVar5).a(mfVar.m(bVar2), 0);
                    return;
                }
                return;
            }
            kf.b bVar8 = kf.b.LEFT;
            kf m = m(bVar8);
            kf.b bVar9 = kf.b.RIGHT;
            kf m2 = m(bVar9);
            kf.b bVar10 = kf.b.TOP;
            kf m3 = m(bVar10);
            kf.b bVar11 = kf.b.BOTTOM;
            kf m4 = m(bVar11);
            boolean z2 = true;
            if ((m == null || !m.j()) && (m2 == null || !m2.j())) {
                i(bVar8, mfVar, bVar8, 0);
                i(bVar9, mfVar, bVar9, 0);
                z = true;
            } else {
                z = false;
            }
            if ((m3 == null || !m3.j()) && (m4 == null || !m4.j())) {
                i(bVar10, mfVar, bVar10, 0);
                i(bVar11, mfVar, bVar11, 0);
            } else {
                z2 = false;
            }
            if (z && z2) {
                m(bVar5).a(mfVar.m(bVar5), 0);
                return;
            }
            if (z) {
                kf.b bVar12 = kf.b.CENTER_X;
                m(bVar12).a(mfVar.m(bVar12), 0);
                return;
            } else {
                if (z2) {
                    kf.b bVar13 = kf.b.CENTER_Y;
                    m(bVar13).a(mfVar.m(bVar13), 0);
                    return;
                }
                return;
            }
        }
        kf.b bVar14 = kf.b.CENTER_X;
        if (bVar == bVar14 && (bVar2 == (bVar4 = kf.b.LEFT) || bVar2 == kf.b.RIGHT)) {
            kf m5 = m(bVar4);
            kf m6 = mfVar.m(bVar2);
            kf m7 = m(kf.b.RIGHT);
            m5.a(m6, 0);
            m7.a(m6, 0);
            m(bVar14).a(m6, 0);
            return;
        }
        kf.b bVar15 = kf.b.CENTER_Y;
        if (bVar == bVar15 && (bVar2 == (bVar3 = kf.b.TOP) || bVar2 == kf.b.BOTTOM)) {
            kf m8 = mfVar.m(bVar2);
            m(bVar3).a(m8, 0);
            m(kf.b.BOTTOM).a(m8, 0);
            m(bVar15).a(m8, 0);
            return;
        }
        if (bVar == bVar14 && bVar2 == bVar14) {
            kf.b bVar16 = kf.b.LEFT;
            m(bVar16).a(mfVar.m(bVar16), 0);
            kf.b bVar17 = kf.b.RIGHT;
            m(bVar17).a(mfVar.m(bVar17), 0);
            m(bVar14).a(mfVar.m(bVar2), 0);
            return;
        }
        if (bVar == bVar15 && bVar2 == bVar15) {
            kf.b bVar18 = kf.b.TOP;
            m(bVar18).a(mfVar.m(bVar18), 0);
            kf.b bVar19 = kf.b.BOTTOM;
            m(bVar19).a(mfVar.m(bVar19), 0);
            m(bVar15).a(mfVar.m(bVar2), 0);
            return;
        }
        kf m9 = m(bVar);
        kf m10 = mfVar.m(bVar2);
        if (m9.k(m10)) {
            kf.b bVar20 = kf.b.BASELINE;
            if (bVar == bVar20) {
                kf m11 = m(kf.b.TOP);
                kf m12 = m(kf.b.BOTTOM);
                if (m11 != null) {
                    m11.l();
                }
                if (m12 != null) {
                    m12.l();
                }
                i = 0;
            } else if (bVar == kf.b.TOP || bVar == kf.b.BOTTOM) {
                kf m13 = m(bVar20);
                if (m13 != null) {
                    m13.l();
                }
                kf m14 = m(bVar5);
                if (m14.g() != m10) {
                    m14.l();
                }
                kf d = m(bVar).d();
                kf m15 = m(bVar15);
                if (m15.j()) {
                    d.l();
                    m15.l();
                }
            } else if (bVar == kf.b.LEFT || bVar == kf.b.RIGHT) {
                kf m16 = m(bVar5);
                if (m16.g() != m10) {
                    m16.l();
                }
                kf d2 = m(bVar).d();
                kf m17 = m(bVar14);
                if (m17.j()) {
                    d2.l();
                    m17.l();
                }
            }
            m9.a(m10, i);
        }
    }

    public void i0(float f) {
        this.b0 = f;
    }

    public void j(kf kfVar, kf kfVar2, int i) {
        if (kfVar.e() == this) {
            i(kfVar.h(), kfVar2.e(), kfVar2.h(), i);
        }
    }

    public void j0(int i) {
        this.m0 = i;
    }

    public void k(mf mfVar, float f, int i) {
        kf.b bVar = kf.b.CENTER;
        T(bVar, mfVar, bVar, i, 0);
        this.x = f;
    }

    public void k0(int i, int i2) {
        this.S = i;
        int i3 = i2 - i;
        this.O = i3;
        int i4 = this.Z;
        if (i3 < i4) {
            this.O = i4;
        }
    }

    public void l(g90 g90Var) {
        g90Var.q(this.B);
        g90Var.q(this.C);
        g90Var.q(this.D);
        g90Var.q(this.E);
        if (this.Y > 0) {
            g90Var.q(this.F);
        }
    }

    public void l0(b bVar) {
        this.M[0] = bVar;
    }

    public kf m(kf.b bVar) {
        switch (a.a[bVar.ordinal()]) {
            case 1:
                return this.B;
            case 2:
                return this.C;
            case q02.c.c /* 3 */:
                return this.D;
            case 4:
                return this.E;
            case q02.c.e /* 5 */:
                return this.F;
            case q02.c.f /* 6 */:
                return this.I;
            case q02.c.g /* 7 */:
                return this.G;
            case PackageParser.PARSE_IGNORE_PROCESSES /* 8 */:
                return this.H;
            case 9:
                return null;
            default:
                throw new AssertionError(bVar.name());
        }
    }

    public void m0(int i, int i2, int i3, float f) {
        this.l = i;
        this.o = i2;
        if (i3 == Integer.MAX_VALUE) {
            i3 = 0;
        }
        this.p = i3;
        this.q = f;
        if (f <= 0.0f || f >= 1.0f || i != 0) {
            return;
        }
        this.l = 2;
    }

    public int n() {
        return this.Y;
    }

    public void n0(float f) {
        this.q0[0] = f;
    }

    public float o(int i) {
        if (i == 0) {
            return this.b0;
        }
        if (i == 1) {
            return this.c0;
        }
        return -1.0f;
    }

    public void o0(int i, boolean z) {
        this.L[i] = z;
    }

    public int p() {
        return R() + this.P;
    }

    public void p0(boolean z) {
        this.z = z;
    }

    public Object q() {
        return this.d0;
    }

    public void q0(boolean z) {
        this.A = z;
    }

    public String r() {
        return this.g0;
    }

    public void r0(int i) {
        this.w[1] = i;
    }

    public b s(int i) {
        if (i == 0) {
            return y();
        }
        if (i == 1) {
            return M();
        }
        return null;
    }

    public void s0(int i) {
        this.w[0] = i;
    }

    public float t() {
        return this.Q;
    }

    public void t0(int i) {
        if (i < 0) {
            this.a0 = 0;
        } else {
            this.a0 = i;
        }
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        String str2 = "";
        if (this.h0 != null) {
            str = "type: " + this.h0 + " ";
        } else {
            str = "";
        }
        sb.append(str);
        if (this.g0 != null) {
            str2 = "id: " + this.g0 + " ";
        }
        sb.append(str2);
        sb.append("(");
        sb.append(this.S);
        sb.append(", ");
        sb.append(this.T);
        sb.append(") - (");
        sb.append(this.O);
        sb.append(" x ");
        sb.append(this.P);
        sb.append(")");
        return sb.toString();
    }

    public int u() {
        return this.R;
    }

    public void u0(int i) {
        if (i < 0) {
            this.Z = 0;
        } else {
            this.Z = i;
        }
    }

    public int v() {
        if (this.f0 == 8) {
            return 0;
        }
        return this.P;
    }

    public void v0(int i, int i2) {
        this.S = i;
        this.T = i2;
    }

    public float w() {
        return this.b0;
    }

    public void w0(mf mfVar) {
        this.N = mfVar;
    }

    public int x() {
        return this.m0;
    }

    public void x0(float f) {
        this.c0 = f;
    }

    public b y() {
        return this.M[0];
    }

    public void y0(int i) {
        this.n0 = i;
    }

    public int z() {
        kf kfVar = this.B;
        int i = kfVar != null ? kfVar.e : 0;
        kf kfVar2 = this.D;
        return kfVar2 != null ? i + kfVar2.e : i;
    }

    public void z0(int i, int i2) {
        this.T = i;
        int i3 = i2 - i;
        this.P = i3;
        int i4 = this.a0;
        if (i3 < i4) {
            this.P = i4;
        }
    }
}
