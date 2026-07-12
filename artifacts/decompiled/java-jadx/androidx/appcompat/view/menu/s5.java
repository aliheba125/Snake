package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public final class s5 extends wo {
    public final Integer a;
    public final Object b;
    public final tj0 c;
    public final hk0 d;

    public s5(Integer num, Object obj, tj0 tj0Var, hk0 hk0Var) {
        this.a = num;
        if (obj == null) {
            throw new NullPointerException("Null payload");
        }
        this.b = obj;
        if (tj0Var == null) {
            throw new NullPointerException("Null priority");
        }
        this.c = tj0Var;
        this.d = hk0Var;
    }

    @Override // androidx.appcompat.view.menu.wo
    public Integer a() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.wo
    public Object b() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.wo
    public tj0 c() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.wo
    public hk0 d() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof wo)) {
            return false;
        }
        wo woVar = (wo) obj;
        Integer num = this.a;
        if (num != null ? num.equals(woVar.a()) : woVar.a() == null) {
            if (this.b.equals(woVar.b()) && this.c.equals(woVar.c())) {
                hk0 hk0Var = this.d;
                if (hk0Var == null) {
                    if (woVar.d() == null) {
                        return true;
                    }
                } else if (hk0Var.equals(woVar.d())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        Integer num = this.a;
        int hashCode = ((((((num == null ? 0 : num.hashCode()) ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003;
        hk0 hk0Var = this.d;
        return hashCode ^ (hk0Var != null ? hk0Var.hashCode() : 0);
    }

    public String toString() {
        return "Event{code=" + this.a + ", payload=" + this.b + ", priority=" + this.c + ", productData=" + this.d + "}";
    }
}
