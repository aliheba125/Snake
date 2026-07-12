package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class yx1 extends ky1 {
    public final int r;
    public final int s;

    public yx1(byte[] bArr, int i, int i2) {
        super(bArr);
        qx1.h(i, i + i2, bArr.length);
        this.r = i;
        this.s = i2;
    }

    @Override // androidx.appcompat.view.menu.ky1, androidx.appcompat.view.menu.qx1
    public final byte d(int i) {
        int t = t();
        if (((t - (i + 1)) | i) >= 0) {
            return this.q[this.r + i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException("Index < 0: " + i);
        }
        throw new ArrayIndexOutOfBoundsException("Index > length: " + i + ", " + t);
    }

    @Override // androidx.appcompat.view.menu.ky1, androidx.appcompat.view.menu.qx1
    public final byte s(int i) {
        return this.q[this.r + i];
    }

    @Override // androidx.appcompat.view.menu.ky1, androidx.appcompat.view.menu.qx1
    public final int t() {
        return this.s;
    }

    @Override // androidx.appcompat.view.menu.ky1
    public final int z() {
        return this.r;
    }
}
