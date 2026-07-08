package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class dx1 implements c42 {
    public abstract /* synthetic */ Object clone();

    public abstract dx1 e(byte[] bArr, int i, int i2);

    public abstract dx1 f(byte[] bArr, int i, int i2, qz1 qz1Var);

    @Override // androidx.appcompat.view.menu.c42
    public final /* synthetic */ c42 l(byte[] bArr) {
        return e(bArr, 0, bArr.length);
    }

    @Override // androidx.appcompat.view.menu.c42
    public final /* synthetic */ c42 m(byte[] bArr, qz1 qz1Var) {
        return f(bArr, 0, bArr.length, qz1Var);
    }
}
