package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class az1 extends cz1 {
    public final byte[] e;
    public final boolean f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;

    @Override // androidx.appcompat.view.menu.cz1
    public final int a(int i) {
        if (i < 0) {
            throw s12.d();
        }
        int d = i + d();
        if (d < 0) {
            throw s12.e();
        }
        int i2 = this.k;
        if (d > i2) {
            throw s12.f();
        }
        this.k = d;
        f();
        return i2;
    }

    @Override // androidx.appcompat.view.menu.cz1
    public final int d() {
        return this.i - this.j;
    }

    public final void f() {
        int i = this.g + this.h;
        this.g = i;
        int i2 = i - this.j;
        int i3 = this.k;
        if (i2 <= i3) {
            this.h = 0;
            return;
        }
        int i4 = i2 - i3;
        this.h = i4;
        this.g = i - i4;
    }

    public az1(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.k = Integer.MAX_VALUE;
        this.e = bArr;
        this.g = i2 + i;
        this.i = i;
        this.j = i;
        this.f = z;
    }
}
