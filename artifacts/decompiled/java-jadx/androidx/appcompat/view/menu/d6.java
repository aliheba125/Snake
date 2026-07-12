package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class d6 extends yh0 {
    public final long a;
    public final d21 b;
    public final ap c;

    public d6(long j, d21 d21Var, ap apVar) {
        this.a = j;
        if (d21Var == null) {
            throw new NullPointerException("Null transportContext");
        }
        this.b = d21Var;
        if (apVar == null) {
            throw new NullPointerException("Null event");
        }
        this.c = apVar;
    }

    @Override // androidx.appcompat.view.menu.yh0
    public ap b() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.yh0
    public long c() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.yh0
    public d21 d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof yh0)) {
            return false;
        }
        yh0 yh0Var = (yh0) obj;
        return this.a == yh0Var.c() && this.b.equals(yh0Var.d()) && this.c.equals(yh0Var.b());
    }

    public int hashCode() {
        long j = this.a;
        return ((((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode();
    }

    public String toString() {
        return "PersistedEvent{id=" + this.a + ", transportContext=" + this.b + ", event=" + this.c + "}";
    }
}
