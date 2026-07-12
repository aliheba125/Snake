package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class va extends ua {
    public final tw d;

    public va(tw twVar, kh khVar, int i, u8 u8Var) {
        super(khVar, i, u8Var);
        this.d = twVar;
    }

    public static /* synthetic */ Object j(va vaVar, gk0 gk0Var, xg xgVar) {
        Object c;
        Object h = vaVar.d.h(gk0Var, xgVar);
        c = c60.c();
        return h == c ? h : r31.a;
    }

    @Override // androidx.appcompat.view.menu.ua
    public Object e(gk0 gk0Var, xg xgVar) {
        return j(this, gk0Var, xgVar);
    }

    @Override // androidx.appcompat.view.menu.ua
    public String toString() {
        return "block[" + this.d + "] -> " + super.toString();
    }
}
