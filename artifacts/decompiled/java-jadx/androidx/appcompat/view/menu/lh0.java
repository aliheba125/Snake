package androidx.appcompat.view.menu;

import java.io.Serializable;

/* loaded from: classes.dex */
public final class lh0 implements Serializable {
    public final Object m;
    public final Object n;

    public lh0(Object obj, Object obj2) {
        this.m = obj;
        this.n = obj2;
    }

    public final Object a() {
        return this.m;
    }

    public final Object b() {
        return this.n;
    }

    public final Object c() {
        return this.m;
    }

    public final Object d() {
        return this.n;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof lh0)) {
            return false;
        }
        lh0 lh0Var = (lh0) obj;
        return z50.a(this.m, lh0Var.m) && z50.a(this.n, lh0Var.n);
    }

    public int hashCode() {
        Object obj = this.m;
        int hashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        Object obj2 = this.n;
        return hashCode + (obj2 != null ? obj2.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.m + ", " + this.n + ')';
    }
}
