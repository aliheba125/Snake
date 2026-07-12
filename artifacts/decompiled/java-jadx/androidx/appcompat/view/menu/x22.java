package androidx.appcompat.view.menu;

import java.util.Arrays;

/* loaded from: classes.dex */
public final class x22 extends w02 {
    public final byte[] m;

    public x22(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.m = bArr;
    }

    @Override // androidx.appcompat.view.menu.w02
    public final byte[] u2() {
        return this.m;
    }
}
