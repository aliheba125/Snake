package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class sj0 extends rg0 {
    public final Object m;

    public sj0(Object obj) {
        this.m = obj;
    }

    @Override // androidx.appcompat.view.menu.rg0
    public Object b() {
        return this.m;
    }

    @Override // androidx.appcompat.view.menu.rg0
    public boolean c() {
        return true;
    }

    public boolean equals(Object obj) {
        if (obj instanceof sj0) {
            return this.m.equals(((sj0) obj).m);
        }
        return false;
    }

    public int hashCode() {
        return this.m.hashCode() + 1502476572;
    }

    public String toString() {
        String valueOf = String.valueOf(this.m);
        StringBuilder sb = new StringBuilder(valueOf.length() + 13);
        sb.append("Optional.of(");
        sb.append(valueOf);
        sb.append(")");
        return sb.toString();
    }
}
