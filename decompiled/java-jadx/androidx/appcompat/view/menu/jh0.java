package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class jh0 implements nb {
    public final Class a;
    public final String b;

    public jh0(Class cls, String str) {
        z50.e(cls, "jClass");
        z50.e(str, "moduleName");
        this.a = cls;
        this.b = str;
    }

    @Override // androidx.appcompat.view.menu.nb
    public Class d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof jh0) && z50.a(d(), ((jh0) obj).d());
    }

    public int hashCode() {
        return d().hashCode();
    }

    public String toString() {
        return d().toString() + " (Kotlin reflection is not available)";
    }
}
