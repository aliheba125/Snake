package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class f9 extends vg0 implements Serializable {
    public final pw m;
    public final vg0 n;

    public f9(pw pwVar, vg0 vg0Var) {
        this.m = (pw) nj0.i(pwVar);
        this.n = (vg0) nj0.i(vg0Var);
    }

    @Override // androidx.appcompat.view.menu.vg0, java.util.Comparator
    public int compare(Object obj, Object obj2) {
        return this.n.compare(this.m.apply(obj), this.m.apply(obj2));
    }

    @Override // java.util.Comparator
    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f9)) {
            return false;
        }
        f9 f9Var = (f9) obj;
        return this.m.equals(f9Var.m) && this.n.equals(f9Var.n);
    }

    public int hashCode() {
        return xf0.b(this.m, this.n);
    }

    public String toString() {
        String valueOf = String.valueOf(this.n);
        String valueOf2 = String.valueOf(this.m);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13 + valueOf2.length());
        sb.append(valueOf);
        sb.append(".onResultOf(");
        sb.append(valueOf2);
        sb.append(")");
        return sb.toString();
    }
}
