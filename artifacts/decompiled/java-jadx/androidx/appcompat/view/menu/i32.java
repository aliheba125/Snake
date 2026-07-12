package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class i32 implements y32 {
    public y32[] a;

    public i32(y32... y32VarArr) {
        this.a = y32VarArr;
    }

    @Override // androidx.appcompat.view.menu.y32
    public final s32 a(Class cls) {
        for (y32 y32Var : this.a) {
            if (y32Var.b(cls)) {
                return y32Var.a(cls);
            }
        }
        throw new UnsupportedOperationException("No factory is available for message type: " + cls.getName());
    }

    @Override // androidx.appcompat.view.menu.y32
    public final boolean b(Class cls) {
        for (y32 y32Var : this.a) {
            if (y32Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
