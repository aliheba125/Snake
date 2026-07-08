package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class t50 extends r50 {
    public static final a q = new a(null);
    public static final t50 r = new t50(1, 0);

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }
    }

    public t50(int i, int i2) {
        super(i, i2, 1);
    }

    @Override // androidx.appcompat.view.menu.r50
    public boolean equals(Object obj) {
        if (obj instanceof t50) {
            if (!isEmpty() || !((t50) obj).isEmpty()) {
                t50 t50Var = (t50) obj;
                if (d() != t50Var.d() || f() != t50Var.f()) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.r50
    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (d() * 31) + f();
    }

    public boolean i(int i) {
        return d() <= i && i <= f();
    }

    @Override // androidx.appcompat.view.menu.r50
    public boolean isEmpty() {
        return d() > f();
    }

    @Override // androidx.appcompat.view.menu.r50
    public String toString() {
        return d() + ".." + f();
    }
}
