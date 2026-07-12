package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class od {
    public final Object a;
    public final fw b;

    public od(Object obj, fw fwVar) {
        this.a = obj;
        this.b = fwVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof od)) {
            return false;
        }
        od odVar = (od) obj;
        return z50.a(this.a, odVar.a) && z50.a(this.b, odVar.b);
    }

    public int hashCode() {
        Object obj = this.a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.b.hashCode();
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.a + ", onCancellation=" + this.b + ')';
    }
}
