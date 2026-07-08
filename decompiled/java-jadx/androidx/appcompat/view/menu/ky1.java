package androidx.appcompat.view.menu;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class ky1 extends my1 {
    public final byte[] q;

    public ky1(byte[] bArr) {
        bArr.getClass();
        this.q = bArr;
    }

    @Override // androidx.appcompat.view.menu.qx1
    public byte d(int i) {
        return this.q[i];
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof qx1) || t() != ((qx1) obj).t()) {
            return false;
        }
        if (t() == 0) {
            return true;
        }
        if (!(obj instanceof ky1)) {
            return obj.equals(this);
        }
        ky1 ky1Var = (ky1) obj;
        int f = f();
        int f2 = ky1Var.f();
        if (f == 0 || f2 == 0 || f == f2) {
            return y(ky1Var, 0, t());
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final qx1 i(int i, int i2) {
        int h = qx1.h(0, i2, t());
        return h == 0 ? qx1.n : new yx1(this.q, z(), h);
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final String p(Charset charset) {
        return new String(this.q, z(), t(), charset);
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final void r(sx1 sx1Var) {
        sx1Var.a(this.q, z(), t());
    }

    @Override // androidx.appcompat.view.menu.qx1
    public byte s(int i) {
        return this.q[i];
    }

    @Override // androidx.appcompat.view.menu.qx1
    public int t() {
        return this.q.length;
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final int u(int i, int i2, int i3) {
        return v02.a(i, this.q, z(), i3);
    }

    @Override // androidx.appcompat.view.menu.qx1
    public final boolean x() {
        int z = z();
        return z72.f(this.q, z, t() + z);
    }

    @Override // androidx.appcompat.view.menu.my1
    public final boolean y(qx1 qx1Var, int i, int i2) {
        if (i2 > qx1Var.t()) {
            throw new IllegalArgumentException("Length too large: " + i2 + t());
        }
        if (i2 > qx1Var.t()) {
            throw new IllegalArgumentException("Ran off end of other: 0, " + i2 + ", " + qx1Var.t());
        }
        if (!(qx1Var instanceof ky1)) {
            return qx1Var.i(0, i2).equals(i(0, i2));
        }
        ky1 ky1Var = (ky1) qx1Var;
        byte[] bArr = this.q;
        byte[] bArr2 = ky1Var.q;
        int z = z() + i2;
        int z2 = z();
        int z3 = ky1Var.z();
        while (z2 < z) {
            if (bArr[z2] != bArr2[z3]) {
                return false;
            }
            z2++;
            z3++;
        }
        return true;
    }

    public int z() {
        return 0;
    }
}
