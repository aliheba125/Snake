package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class kw1 {
    public final boolean a;

    public kw1(ww1 ww1Var) {
        nj0.j(ww1Var, "BuildInfo must be non-null");
        this.a = !ww1Var.a();
    }

    public final boolean a(String str) {
        nj0.j(str, "flagName must not be null");
        if (this.a) {
            return ((n40) vw1.a.get()).b(str);
        }
        return true;
    }
}
