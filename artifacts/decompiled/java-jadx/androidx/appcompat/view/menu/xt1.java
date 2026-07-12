package androidx.appcompat.view.menu;

import android.content.Context;

/* loaded from: classes.dex */
public final class xt1 extends cw1 {
    public final Context a;
    public final ey0 b;

    public xt1(Context context, ey0 ey0Var) {
        if (context == null) {
            throw new NullPointerException("Null context");
        }
        this.a = context;
        this.b = ey0Var;
    }

    @Override // androidx.appcompat.view.menu.cw1
    public final Context a() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.cw1
    public final ey0 b() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        ey0 ey0Var;
        if (obj == this) {
            return true;
        }
        if (obj instanceof cw1) {
            cw1 cw1Var = (cw1) obj;
            if (this.a.equals(cw1Var.a()) && ((ey0Var = this.b) != null ? ey0Var.equals(cw1Var.b()) : cw1Var.b() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        ey0 ey0Var = this.b;
        return hashCode ^ (ey0Var == null ? 0 : ey0Var.hashCode());
    }

    public final String toString() {
        return "FlagsContext{context=" + String.valueOf(this.a) + ", hermeticFileOverrides=" + String.valueOf(this.b) + "}";
    }
}
