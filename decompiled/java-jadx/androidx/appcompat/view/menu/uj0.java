package androidx.appcompat.view.menu;

import android.content.pm.PackageParser;
import androidx.appcompat.view.menu.p4;
import java.util.Arrays;
import java.util.Comparator;

/* loaded from: classes.dex */
public class uj0 extends p4 {
    public int g;
    public yv0[] h;
    public yv0[] i;
    public int j;
    public b k;
    public i9 l;

    public class a implements Comparator {
        public a() {
        }

        @Override // java.util.Comparator
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(yv0 yv0Var, yv0 yv0Var2) {
            return yv0Var.c - yv0Var2.c;
        }
    }

    public class b implements Comparable {
        public yv0 m;
        public uj0 n;

        public b(uj0 uj0Var) {
            this.n = uj0Var;
        }

        public boolean c(yv0 yv0Var, float f) {
            boolean z = true;
            if (!this.m.a) {
                for (int i = 0; i < 9; i++) {
                    float f2 = yv0Var.i[i];
                    if (f2 != 0.0f) {
                        float f3 = f2 * f;
                        if (Math.abs(f3) < 1.0E-4f) {
                            f3 = 0.0f;
                        }
                        this.m.i[i] = f3;
                    } else {
                        this.m.i[i] = 0.0f;
                    }
                }
                return true;
            }
            for (int i2 = 0; i2 < 9; i2++) {
                float[] fArr = this.m.i;
                float f4 = fArr[i2] + (yv0Var.i[i2] * f);
                fArr[i2] = f4;
                if (Math.abs(f4) < 1.0E-4f) {
                    this.m.i[i2] = 0.0f;
                } else {
                    z = false;
                }
            }
            if (z) {
                uj0.this.G(this.m);
            }
            return false;
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            return this.m.c - ((yv0) obj).c;
        }

        public void e(yv0 yv0Var) {
            this.m = yv0Var;
        }

        public final boolean g() {
            for (int i = 8; i >= 0; i--) {
                float f = this.m.i[i];
                if (f > 0.0f) {
                    return false;
                }
                if (f < 0.0f) {
                    return true;
                }
            }
            return false;
        }

        public final boolean h(yv0 yv0Var) {
            int i = 8;
            while (true) {
                if (i < 0) {
                    break;
                }
                float f = yv0Var.i[i];
                float f2 = this.m.i[i];
                if (f2 == f) {
                    i--;
                } else if (f2 < f) {
                    return true;
                }
            }
            return false;
        }

        public void i() {
            Arrays.fill(this.m.i, 0.0f);
        }

        public String toString() {
            String str = "[ ";
            if (this.m != null) {
                for (int i = 0; i < 9; i++) {
                    str = str + this.m.i[i] + " ";
                }
            }
            return str + "] " + this.m;
        }
    }

    public uj0(i9 i9Var) {
        super(i9Var);
        this.g = PackageParser.PARSE_IS_PRIVILEGED;
        this.h = new yv0[PackageParser.PARSE_IS_PRIVILEGED];
        this.i = new yv0[PackageParser.PARSE_IS_PRIVILEGED];
        this.j = 0;
        this.k = new b(this);
        this.l = i9Var;
    }

    @Override // androidx.appcompat.view.menu.p4
    public void C(p4 p4Var, boolean z) {
        yv0 yv0Var = p4Var.a;
        if (yv0Var == null) {
            return;
        }
        p4.a aVar = p4Var.e;
        int e = aVar.e();
        for (int i = 0; i < e; i++) {
            yv0 i2 = aVar.i(i);
            float a2 = aVar.a(i);
            this.k.e(i2);
            if (this.k.c(yv0Var, a2)) {
                F(i2);
            }
            this.b += p4Var.b * a2;
        }
        G(yv0Var);
    }

    public final void F(yv0 yv0Var) {
        int i;
        int i2 = this.j + 1;
        yv0[] yv0VarArr = this.h;
        if (i2 > yv0VarArr.length) {
            yv0[] yv0VarArr2 = (yv0[]) Arrays.copyOf(yv0VarArr, yv0VarArr.length * 2);
            this.h = yv0VarArr2;
            this.i = (yv0[]) Arrays.copyOf(yv0VarArr2, yv0VarArr2.length * 2);
        }
        yv0[] yv0VarArr3 = this.h;
        int i3 = this.j;
        yv0VarArr3[i3] = yv0Var;
        int i4 = i3 + 1;
        this.j = i4;
        if (i4 > 1 && yv0VarArr3[i3].c > yv0Var.c) {
            int i5 = 0;
            while (true) {
                i = this.j;
                if (i5 >= i) {
                    break;
                }
                this.i[i5] = this.h[i5];
                i5++;
            }
            Arrays.sort(this.i, 0, i, new a());
            for (int i6 = 0; i6 < this.j; i6++) {
                this.h[i6] = this.i[i6];
            }
        }
        yv0Var.a = true;
        yv0Var.a(this);
    }

    public final void G(yv0 yv0Var) {
        int i = 0;
        while (i < this.j) {
            if (this.h[i] == yv0Var) {
                while (true) {
                    int i2 = this.j;
                    if (i >= i2 - 1) {
                        this.j = i2 - 1;
                        yv0Var.a = false;
                        return;
                    } else {
                        yv0[] yv0VarArr = this.h;
                        int i3 = i + 1;
                        yv0VarArr[i] = yv0VarArr[i3];
                        i = i3;
                    }
                }
            } else {
                i++;
            }
        }
    }

    @Override // androidx.appcompat.view.menu.p4, androidx.appcompat.view.menu.g90.a
    public void a(yv0 yv0Var) {
        this.k.e(yv0Var);
        this.k.i();
        yv0Var.i[yv0Var.e] = 1.0f;
        F(yv0Var);
    }

    @Override // androidx.appcompat.view.menu.p4, androidx.appcompat.view.menu.g90.a
    public yv0 c(g90 g90Var, boolean[] zArr) {
        int i = -1;
        for (int i2 = 0; i2 < this.j; i2++) {
            yv0 yv0Var = this.h[i2];
            if (!zArr[yv0Var.c]) {
                this.k.e(yv0Var);
                if (i == -1) {
                    if (!this.k.g()) {
                    }
                    i = i2;
                } else {
                    if (!this.k.h(this.h[i])) {
                    }
                    i = i2;
                }
            }
        }
        if (i == -1) {
            return null;
        }
        return this.h[i];
    }

    @Override // androidx.appcompat.view.menu.p4, androidx.appcompat.view.menu.g90.a
    public void clear() {
        this.j = 0;
        this.b = 0.0f;
    }

    @Override // androidx.appcompat.view.menu.p4
    public String toString() {
        String str = " goal -> (" + this.b + ") : ";
        for (int i = 0; i < this.j; i++) {
            this.k.e(this.h[i]);
            str = str + this.k + " ";
        }
        return str;
    }
}
