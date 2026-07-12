package androidx.appcompat.view.menu;

import java.util.Map;

/* loaded from: classes.dex */
public final class g6 extends ur0 {
    public final ec a;
    public final Map b;

    public g6(ec ecVar, Map map) {
        if (ecVar == null) {
            throw new NullPointerException("Null clock");
        }
        this.a = ecVar;
        if (map == null) {
            throw new NullPointerException("Null values");
        }
        this.b = map;
    }

    @Override // androidx.appcompat.view.menu.ur0
    public ec e() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ur0)) {
            return false;
        }
        ur0 ur0Var = (ur0) obj;
        return this.a.equals(ur0Var.e()) && this.b.equals(ur0Var.h());
    }

    @Override // androidx.appcompat.view.menu.ur0
    public Map h() {
        return this.b;
    }

    public int hashCode() {
        return ((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.a + ", values=" + this.b + "}";
    }
}
