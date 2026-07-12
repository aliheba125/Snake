package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.g90;
import androidx.appcompat.view.menu.yv0;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public class p4 implements g90.a {
    public a e;
    public yv0 a = null;
    public float b = 0.0f;
    public boolean c = false;
    public ArrayList d = new ArrayList();
    public boolean f = false;

    public interface a {
        float a(int i);

        void b(yv0 yv0Var, float f, boolean z);

        void c(yv0 yv0Var, float f);

        void clear();

        boolean d(yv0 yv0Var);

        int e();

        float f(p4 p4Var, boolean z);

        float g(yv0 yv0Var);

        float h(yv0 yv0Var, boolean z);

        yv0 i(int i);

        void j(float f);

        void k();
    }

    public p4() {
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String A() {
        boolean z;
        String str = (this.a == null ? "0" : "" + this.a) + " = ";
        if (this.b != 0.0f) {
            str = str + this.b;
            z = true;
        } else {
            z = false;
        }
        int e = this.e.e();
        for (int i = 0; i < e; i++) {
            yv0 i2 = this.e.i(i);
            if (i2 != null) {
                float a2 = this.e.a(i);
                if (a2 != 0.0f) {
                    String yv0Var = i2.toString();
                    if (!z) {
                        if (a2 < 0.0f) {
                            str = str + "- ";
                            a2 *= -1.0f;
                        }
                        str = a2 == 1.0f ? str + yv0Var : str + a2 + " " + yv0Var;
                        z = true;
                    } else if (a2 > 0.0f) {
                        str = str + " + ";
                        if (a2 == 1.0f) {
                        }
                        z = true;
                    } else {
                        str = str + " - ";
                        a2 *= -1.0f;
                        if (a2 == 1.0f) {
                        }
                        z = true;
                    }
                }
            }
        }
        if (z) {
            return str;
        }
        return str + "0.0";
    }

    public void B(g90 g90Var, yv0 yv0Var, boolean z) {
        if (yv0Var.g) {
            this.b += yv0Var.f * this.e.g(yv0Var);
            this.e.h(yv0Var, z);
            if (z) {
                yv0Var.c(this);
            }
        }
    }

    public void C(p4 p4Var, boolean z) {
        this.b += p4Var.b * this.e.f(p4Var, z);
        if (z) {
            p4Var.a.c(this);
        }
    }

    public void D(g90 g90Var) {
        if (g90Var.f.length == 0) {
            return;
        }
        boolean z = false;
        while (!z) {
            int e = this.e.e();
            for (int i = 0; i < e; i++) {
                yv0 i2 = this.e.i(i);
                if (i2.d != -1 || i2.g) {
                    this.d.add(i2);
                }
            }
            if (this.d.size() > 0) {
                Iterator it = this.d.iterator();
                while (it.hasNext()) {
                    yv0 yv0Var = (yv0) it.next();
                    if (yv0Var.g) {
                        B(g90Var, yv0Var, true);
                    } else {
                        C(g90Var.f[yv0Var.d], true);
                    }
                }
                this.d.clear();
            } else {
                z = true;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.g90.a
    public void a(yv0 yv0Var) {
        int i = yv0Var.e;
        float f = 1.0f;
        if (i != 1) {
            if (i == 2) {
                f = 1000.0f;
            } else if (i == 3) {
                f = 1000000.0f;
            } else if (i == 4) {
                f = 1.0E9f;
            } else if (i == 5) {
                f = 1.0E12f;
            }
        }
        this.e.c(yv0Var, f);
    }

    @Override // androidx.appcompat.view.menu.g90.a
    public void b(g90.a aVar) {
        if (aVar instanceof p4) {
            p4 p4Var = (p4) aVar;
            this.a = null;
            this.e.clear();
            for (int i = 0; i < p4Var.e.e(); i++) {
                this.e.b(p4Var.e.i(i), p4Var.e.a(i), true);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.g90.a
    public yv0 c(g90 g90Var, boolean[] zArr) {
        return x(zArr, null);
    }

    @Override // androidx.appcompat.view.menu.g90.a
    public void clear() {
        this.e.clear();
        this.a = null;
        this.b = 0.0f;
    }

    public p4 d(g90 g90Var, int i) {
        this.e.c(g90Var.o(i, "ep"), 1.0f);
        this.e.c(g90Var.o(i, "em"), -1.0f);
        return this;
    }

    public p4 e(yv0 yv0Var, int i) {
        this.e.c(yv0Var, i);
        return this;
    }

    public boolean f(g90 g90Var) {
        boolean z;
        yv0 g = g(g90Var);
        if (g == null) {
            z = true;
        } else {
            y(g);
            z = false;
        }
        if (this.e.e() == 0) {
            this.f = true;
        }
        return z;
    }

    public yv0 g(g90 g90Var) {
        boolean v;
        boolean v2;
        int e = this.e.e();
        yv0 yv0Var = null;
        float f = 0.0f;
        float f2 = 0.0f;
        boolean z = false;
        boolean z2 = false;
        yv0 yv0Var2 = null;
        for (int i = 0; i < e; i++) {
            float a2 = this.e.a(i);
            yv0 i2 = this.e.i(i);
            if (i2.j == yv0.a.UNRESTRICTED) {
                if (yv0Var == null) {
                    v2 = v(i2, g90Var);
                } else if (f > a2) {
                    v2 = v(i2, g90Var);
                } else if (!z && v(i2, g90Var)) {
                    f = a2;
                    yv0Var = i2;
                    z = true;
                }
                z = v2;
                f = a2;
                yv0Var = i2;
            } else if (yv0Var == null && a2 < 0.0f) {
                if (yv0Var2 == null) {
                    v = v(i2, g90Var);
                } else if (f2 > a2) {
                    v = v(i2, g90Var);
                } else if (!z2 && v(i2, g90Var)) {
                    f2 = a2;
                    yv0Var2 = i2;
                    z2 = true;
                }
                z2 = v;
                f2 = a2;
                yv0Var2 = i2;
            }
        }
        return yv0Var != null ? yv0Var : yv0Var2;
    }

    @Override // androidx.appcompat.view.menu.g90.a
    public yv0 getKey() {
        return this.a;
    }

    public p4 h(yv0 yv0Var, yv0 yv0Var2, int i, float f, yv0 yv0Var3, yv0 yv0Var4, int i2) {
        if (yv0Var2 == yv0Var3) {
            this.e.c(yv0Var, 1.0f);
            this.e.c(yv0Var4, 1.0f);
            this.e.c(yv0Var2, -2.0f);
            return this;
        }
        if (f == 0.5f) {
            this.e.c(yv0Var, 1.0f);
            this.e.c(yv0Var2, -1.0f);
            this.e.c(yv0Var3, -1.0f);
            this.e.c(yv0Var4, 1.0f);
            if (i > 0 || i2 > 0) {
                this.b = (-i) + i2;
            }
        } else if (f <= 0.0f) {
            this.e.c(yv0Var, -1.0f);
            this.e.c(yv0Var2, 1.0f);
            this.b = i;
        } else if (f >= 1.0f) {
            this.e.c(yv0Var4, -1.0f);
            this.e.c(yv0Var3, 1.0f);
            this.b = -i2;
        } else {
            float f2 = 1.0f - f;
            this.e.c(yv0Var, f2 * 1.0f);
            this.e.c(yv0Var2, f2 * (-1.0f));
            this.e.c(yv0Var3, (-1.0f) * f);
            this.e.c(yv0Var4, 1.0f * f);
            if (i > 0 || i2 > 0) {
                this.b = ((-i) * f2) + (i2 * f);
            }
        }
        return this;
    }

    public p4 i(yv0 yv0Var, int i) {
        this.a = yv0Var;
        float f = i;
        yv0Var.f = f;
        this.b = f;
        this.f = true;
        return this;
    }

    public p4 j(yv0 yv0Var, yv0 yv0Var2, float f) {
        this.e.c(yv0Var, -1.0f);
        this.e.c(yv0Var2, f);
        return this;
    }

    public p4 k(yv0 yv0Var, yv0 yv0Var2, yv0 yv0Var3, yv0 yv0Var4, float f) {
        this.e.c(yv0Var, -1.0f);
        this.e.c(yv0Var2, 1.0f);
        this.e.c(yv0Var3, f);
        this.e.c(yv0Var4, -f);
        return this;
    }

    public p4 l(float f, float f2, float f3, yv0 yv0Var, yv0 yv0Var2, yv0 yv0Var3, yv0 yv0Var4) {
        this.b = 0.0f;
        if (f2 == 0.0f || f == f3) {
            this.e.c(yv0Var, 1.0f);
            this.e.c(yv0Var2, -1.0f);
            this.e.c(yv0Var4, 1.0f);
            this.e.c(yv0Var3, -1.0f);
        } else if (f == 0.0f) {
            this.e.c(yv0Var, 1.0f);
            this.e.c(yv0Var2, -1.0f);
        } else if (f3 == 0.0f) {
            this.e.c(yv0Var3, 1.0f);
            this.e.c(yv0Var4, -1.0f);
        } else {
            float f4 = (f / f2) / (f3 / f2);
            this.e.c(yv0Var, 1.0f);
            this.e.c(yv0Var2, -1.0f);
            this.e.c(yv0Var4, f4);
            this.e.c(yv0Var3, -f4);
        }
        return this;
    }

    public p4 m(yv0 yv0Var, int i) {
        if (i < 0) {
            this.b = i * (-1);
            this.e.c(yv0Var, 1.0f);
        } else {
            this.b = i;
            this.e.c(yv0Var, -1.0f);
        }
        return this;
    }

    public p4 n(yv0 yv0Var, yv0 yv0Var2, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.b = i;
            if (z) {
                this.e.c(yv0Var, 1.0f);
                this.e.c(yv0Var2, -1.0f);
                return this;
            }
        }
        this.e.c(yv0Var, -1.0f);
        this.e.c(yv0Var2, 1.0f);
        return this;
    }

    public p4 o(yv0 yv0Var, yv0 yv0Var2, yv0 yv0Var3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.b = i;
            if (z) {
                this.e.c(yv0Var, 1.0f);
                this.e.c(yv0Var2, -1.0f);
                this.e.c(yv0Var3, -1.0f);
                return this;
            }
        }
        this.e.c(yv0Var, -1.0f);
        this.e.c(yv0Var2, 1.0f);
        this.e.c(yv0Var3, 1.0f);
        return this;
    }

    public p4 p(yv0 yv0Var, yv0 yv0Var2, yv0 yv0Var3, int i) {
        boolean z;
        if (i != 0) {
            if (i < 0) {
                i *= -1;
                z = true;
            } else {
                z = false;
            }
            this.b = i;
            if (z) {
                this.e.c(yv0Var, 1.0f);
                this.e.c(yv0Var2, -1.0f);
                this.e.c(yv0Var3, 1.0f);
                return this;
            }
        }
        this.e.c(yv0Var, -1.0f);
        this.e.c(yv0Var2, 1.0f);
        this.e.c(yv0Var3, -1.0f);
        return this;
    }

    public p4 q(yv0 yv0Var, yv0 yv0Var2, yv0 yv0Var3, yv0 yv0Var4, float f) {
        this.e.c(yv0Var3, 0.5f);
        this.e.c(yv0Var4, 0.5f);
        this.e.c(yv0Var, -0.5f);
        this.e.c(yv0Var2, -0.5f);
        this.b = -f;
        return this;
    }

    public void r() {
        float f = this.b;
        if (f < 0.0f) {
            this.b = f * (-1.0f);
            this.e.k();
        }
    }

    public boolean s() {
        yv0 yv0Var = this.a;
        return yv0Var != null && (yv0Var.j == yv0.a.UNRESTRICTED || this.b >= 0.0f);
    }

    public boolean t(yv0 yv0Var) {
        return this.e.d(yv0Var);
    }

    public String toString() {
        return A();
    }

    public boolean u() {
        return this.a == null && this.b == 0.0f && this.e.e() == 0;
    }

    public final boolean v(yv0 yv0Var, g90 g90Var) {
        return yv0Var.m <= 1;
    }

    public yv0 w(yv0 yv0Var) {
        return x(null, yv0Var);
    }

    public final yv0 x(boolean[] zArr, yv0 yv0Var) {
        yv0.a aVar;
        int e = this.e.e();
        yv0 yv0Var2 = null;
        float f = 0.0f;
        for (int i = 0; i < e; i++) {
            float a2 = this.e.a(i);
            if (a2 < 0.0f) {
                yv0 i2 = this.e.i(i);
                if ((zArr == null || !zArr[i2.c]) && i2 != yv0Var && (((aVar = i2.j) == yv0.a.SLACK || aVar == yv0.a.ERROR) && a2 < f)) {
                    f = a2;
                    yv0Var2 = i2;
                }
            }
        }
        return yv0Var2;
    }

    public void y(yv0 yv0Var) {
        yv0 yv0Var2 = this.a;
        if (yv0Var2 != null) {
            this.e.c(yv0Var2, -1.0f);
            this.a = null;
        }
        float h = this.e.h(yv0Var, true) * (-1.0f);
        this.a = yv0Var;
        if (h == 1.0f) {
            return;
        }
        this.b /= h;
        this.e.j(h);
    }

    public void z() {
        this.a = null;
        this.e.clear();
        this.b = 0.0f;
        this.f = false;
    }

    public p4(i9 i9Var) {
        this.e = new n4(this, i9Var);
    }
}
