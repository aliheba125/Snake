package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class sk0 extends l9 implements p70 {
    public final boolean t;

    public sk0(Object obj, Class cls, String str, String str2, int i) {
        super(obj, cls, str, str2, (i & 1) == 1);
        this.t = (i & 2) == 2;
    }

    @Override // androidx.appcompat.view.menu.l9
    public j70 a() {
        return this.t ? this : super.a();
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof sk0) {
            sk0 sk0Var = (sk0) obj;
            return g().equals(sk0Var.g()) && f().equals(sk0Var.f()) && j().equals(sk0Var.j()) && z50.a(c(), sk0Var.c());
        }
        if (obj instanceof p70) {
            return obj.equals(a());
        }
        return false;
    }

    public int hashCode() {
        return (((g().hashCode() * 31) + f().hashCode()) * 31) + j().hashCode();
    }

    public String toString() {
        j70 a = a();
        if (a != this) {
            return a.toString();
        }
        return "property " + f() + " (Kotlin reflection is not available)";
    }
}
