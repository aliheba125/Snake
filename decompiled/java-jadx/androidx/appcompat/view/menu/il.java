package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class il {
    public final ul0 a;
    public final int b;
    public final int c;

    public il(Class cls, int i, int i2) {
        this(ul0.b(cls), i, i2);
    }

    public static String a(int i) {
        if (i == 0) {
            return "direct";
        }
        if (i == 1) {
            return "provider";
        }
        if (i == 2) {
            return "deferred";
        }
        throw new AssertionError("Unsupported injection: " + i);
    }

    public static il g(Class cls) {
        return new il(cls, 0, 0);
    }

    public static il h(Class cls) {
        return new il(cls, 0, 1);
    }

    public static il i(ul0 ul0Var) {
        return new il(ul0Var, 1, 0);
    }

    public static il j(Class cls) {
        return new il(cls, 1, 0);
    }

    public static il k(Class cls) {
        return new il(cls, 1, 1);
    }

    public static il l(Class cls) {
        return new il(cls, 2, 0);
    }

    public ul0 b() {
        return this.a;
    }

    public boolean c() {
        return this.c == 2;
    }

    public boolean d() {
        return this.c == 0;
    }

    public boolean e() {
        return this.b == 1;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof il)) {
            return false;
        }
        il ilVar = (il) obj;
        return this.a.equals(ilVar.a) && this.b == ilVar.b && this.c == ilVar.c;
    }

    public boolean f() {
        return this.b == 2;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ this.c;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Dependency{anInterface=");
        sb.append(this.a);
        sb.append(", type=");
        int i = this.b;
        sb.append(i == 1 ? "required" : i == 0 ? "optional" : "set");
        sb.append(", injection=");
        sb.append(a(this.c));
        sb.append("}");
        return sb.toString();
    }

    public il(ul0 ul0Var, int i, int i2) {
        this.a = (ul0) oj0.c(ul0Var, "Null dependency anInterface.");
        this.b = i;
        this.c = i2;
    }
}
