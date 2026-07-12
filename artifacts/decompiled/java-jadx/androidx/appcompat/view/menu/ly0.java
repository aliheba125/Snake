package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ly0 extends zg implements dx {
    public final int p;

    public ly0(int i, xg xgVar) {
        super(xgVar);
        this.p = i;
    }

    @Override // androidx.appcompat.view.menu.dx
    public int e() {
        return this.p;
    }

    @Override // androidx.appcompat.view.menu.y7
    public String toString() {
        if (c() != null) {
            return super.toString();
        }
        String e = do0.e(this);
        z50.d(e, "renderLambdaToString(this)");
        return e;
    }
}
