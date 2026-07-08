package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class vb1 {
    public final r2 a;
    public final hr b;

    public /* synthetic */ vb1(r2 r2Var, hr hrVar, ub1 ub1Var) {
        this.a = r2Var;
        this.b = hrVar;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof vb1)) {
            vb1 vb1Var = (vb1) obj;
            if (wf0.a(this.a, vb1Var.a) && wf0.a(this.b, vb1Var.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return wf0.b(this.a, this.b);
    }

    public final String toString() {
        return wf0.c(this).a("key", this.a).a("feature", this.b).toString();
    }
}
