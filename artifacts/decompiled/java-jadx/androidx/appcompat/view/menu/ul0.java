package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class ul0 {
    public final Class a;
    public final Class b;

    public @interface a {
    }

    public ul0(Class cls, Class cls2) {
        this.a = cls;
        this.b = cls2;
    }

    public static ul0 a(Class cls, Class cls2) {
        return new ul0(cls, cls2);
    }

    public static ul0 b(Class cls) {
        return new ul0(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ul0.class != obj.getClass()) {
            return false;
        }
        ul0 ul0Var = (ul0) obj;
        if (this.b.equals(ul0Var.b)) {
            return this.a.equals(ul0Var.a);
        }
        return false;
    }

    public int hashCode() {
        return (this.b.hashCode() * 31) + this.a.hashCode();
    }

    public String toString() {
        if (this.a == a.class) {
            return this.b.getName();
        }
        return "@" + this.a.getName() + " " + this.b.getName();
    }
}
