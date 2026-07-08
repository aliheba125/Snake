package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public abstract class g80 implements dx, Serializable {
    public final int m;

    public g80(int i) {
        this.m = i;
    }

    @Override // androidx.appcompat.view.menu.dx
    public int e() {
        return this.m;
    }

    public String toString() {
        String f = do0.f(this);
        z50.d(f, "renderLambdaToString(this)");
        return f;
    }
}
