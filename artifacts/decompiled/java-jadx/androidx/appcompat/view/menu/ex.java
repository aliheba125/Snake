package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public abstract class ex extends l9 implements dx, n70 {
    public final int t;
    public final int u;

    public ex(int i, Object obj, Class cls, String str, String str2, int i2) {
        super(obj, cls, str, str2, (i2 & 1) == 1);
        this.t = i;
        this.u = i2 >> 1;
    }

    @Override // androidx.appcompat.view.menu.l9
    public j70 b() {
        return do0.a(this);
    }

    @Override // androidx.appcompat.view.menu.dx
    public int e() {
        return this.t;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ex) {
            ex exVar = (ex) obj;
            return f().equals(exVar.f()) && j().equals(exVar.j()) && this.u == exVar.u && this.t == exVar.t && z50.a(c(), exVar.c()) && z50.a(g(), exVar.g());
        }
        if (obj instanceof n70) {
            return obj.equals(a());
        }
        return false;
    }

    public int hashCode() {
        return (((g() == null ? 0 : g().hashCode() * 31) + f().hashCode()) * 31) + j().hashCode();
    }

    public String toString() {
        j70 a = a();
        if (a != this) {
            return a.toString();
        }
        if ("<init>".equals(f())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + f() + " (Kotlin reflection is not available)";
    }
}
