package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class r50 implements Iterable {
    public static final a p = new a(null);
    public final int m;
    public final int n;
    public final int o;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final r50 a(int i, int i2, int i3) {
            return new r50(i, i2, i3);
        }
    }

    public r50(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        }
        if (i3 == Integer.MIN_VALUE) {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
        this.m = i;
        this.n = pk0.b(i, i2, i3);
        this.o = i3;
    }

    public final int d() {
        return this.m;
    }

    public boolean equals(Object obj) {
        if (obj instanceof r50) {
            if (!isEmpty() || !((r50) obj).isEmpty()) {
                r50 r50Var = (r50) obj;
                if (this.m != r50Var.m || this.n != r50Var.n || this.o != r50Var.o) {
                }
            }
            return true;
        }
        return false;
    }

    public final int f() {
        return this.n;
    }

    public final int g() {
        return this.o;
    }

    @Override // java.lang.Iterable
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public q50 iterator() {
        return new s50(this.m, this.n, this.o);
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.m * 31) + this.n) * 31) + this.o;
    }

    public boolean isEmpty() {
        if (this.o > 0) {
            if (this.m <= this.n) {
                return false;
            }
        } else if (this.m >= this.n) {
            return false;
        }
        return true;
    }

    public String toString() {
        StringBuilder sb;
        int i;
        if (this.o > 0) {
            sb = new StringBuilder();
            sb.append(this.m);
            sb.append("..");
            sb.append(this.n);
            sb.append(" step ");
            i = this.o;
        } else {
            sb = new StringBuilder();
            sb.append(this.m);
            sb.append(" downTo ");
            sb.append(this.n);
            sb.append(" step ");
            i = -this.o;
        }
        sb.append(i);
        return sb.toString();
    }
}
