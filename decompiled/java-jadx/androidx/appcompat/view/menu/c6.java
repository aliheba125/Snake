package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ve0;

/* loaded from: classes.dex */
public final class c6 extends ve0 {
    public final ve0.c a;
    public final ve0.b b;

    public static final class b extends ve0.a {
        public ve0.c a;
        public ve0.b b;

        @Override // androidx.appcompat.view.menu.ve0.a
        public ve0 a() {
            return new c6(this.a, this.b);
        }

        @Override // androidx.appcompat.view.menu.ve0.a
        public ve0.a b(ve0.b bVar) {
            this.b = bVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ve0.a
        public ve0.a c(ve0.c cVar) {
            this.a = cVar;
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.ve0
    public ve0.b b() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.ve0
    public ve0.c c() {
        return this.a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ve0)) {
            return false;
        }
        ve0 ve0Var = (ve0) obj;
        ve0.c cVar = this.a;
        if (cVar != null ? cVar.equals(ve0Var.c()) : ve0Var.c() == null) {
            ve0.b bVar = this.b;
            if (bVar == null) {
                if (ve0Var.b() == null) {
                    return true;
                }
            } else if (bVar.equals(ve0Var.b())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        ve0.c cVar = this.a;
        int hashCode = ((cVar == null ? 0 : cVar.hashCode()) ^ 1000003) * 1000003;
        ve0.b bVar = this.b;
        return hashCode ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "NetworkConnectionInfo{networkType=" + this.a + ", mobileSubtype=" + this.b + "}";
    }

    public c6(ve0.c cVar, ve0.b bVar) {
        this.a = cVar;
        this.b = bVar;
    }
}
