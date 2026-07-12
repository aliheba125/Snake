package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class y5 extends t80 {
    public final String a;
    public final String b;

    public y5(String str, String str2) {
        if (str == null) {
            throw new NullPointerException("Null libraryName");
        }
        this.a = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.b = str2;
    }

    @Override // androidx.appcompat.view.menu.t80
    public String b() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.t80
    public String c() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof t80)) {
            return false;
        }
        t80 t80Var = (t80) obj;
        return this.a.equals(t80Var.b()) && this.b.equals(t80Var.c());
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        return "LibraryVersion{libraryName=" + this.a + ", version=" + this.b + "}";
    }
}
