package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class e80 implements Comparable {
    public static final a q = new a(null);
    public static final e80 r = f80.a();
    public final int m;
    public final int n;
    public final int o;
    public final int p;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }
    }

    public e80(int i, int i2, int i3) {
        this.m = i;
        this.n = i2;
        this.o = i3;
        this.p = e(i, i2, i3);
    }

    @Override // java.lang.Comparable
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public int compareTo(e80 e80Var) {
        z50.e(e80Var, "other");
        return this.p - e80Var.p;
    }

    public final int e(int i, int i2, int i3) {
        if (new t50(0, 255).i(i) && new t50(0, 255).i(i2) && new t50(0, 255).i(i3)) {
            return (i << 16) + (i2 << 8) + i3;
        }
        throw new IllegalArgumentException(("Version components are out of range: " + i + '.' + i2 + '.' + i3).toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        e80 e80Var = obj instanceof e80 ? (e80) obj : null;
        return e80Var != null && this.p == e80Var.p;
    }

    public int hashCode() {
        return this.p;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.m);
        sb.append('.');
        sb.append(this.n);
        sb.append('.');
        sb.append(this.o);
        return sb.toString();
    }
}
