package androidx.appcompat.view.menu;

import android.graphics.Rect;
import androidx.appcompat.view.menu.pu;

/* loaded from: classes.dex */
public final class sy implements pu {
    public static final a d = new a(null);
    public final q8 a;
    public final b b;
    public final pu.b c;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final void a(q8 q8Var) {
            z50.e(q8Var, "bounds");
            if (q8Var.d() == 0 && q8Var.a() == 0) {
                throw new IllegalArgumentException("Bounds must be non zero".toString());
            }
            if (q8Var.b() != 0 && q8Var.c() != 0) {
                throw new IllegalArgumentException("Bounding rectangle must start at the top or left window edge for folding features".toString());
            }
        }
    }

    public static final class b {
        public static final a b = new a(null);
        public static final b c = new b("FOLD");
        public static final b d = new b("HINGE");
        public final String a;

        public static final class a {
            public a() {
            }

            public /* synthetic */ a(lj ljVar) {
                this();
            }

            public final b a() {
                return b.c;
            }

            public final b b() {
                return b.d;
            }
        }

        public b(String str) {
            this.a = str;
        }

        public String toString() {
            return this.a;
        }
    }

    public sy(q8 q8Var, b bVar, pu.b bVar2) {
        z50.e(q8Var, "featureBounds");
        z50.e(bVar, "type");
        z50.e(bVar2, "state");
        this.a = q8Var;
        this.b = bVar;
        this.c = bVar2;
        d.a(q8Var);
    }

    @Override // androidx.appcompat.view.menu.jm
    public Rect a() {
        return this.a.f();
    }

    @Override // androidx.appcompat.view.menu.pu
    public pu.a b() {
        return (this.a.d() == 0 || this.a.a() == 0) ? pu.a.c : pu.a.d;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!z50.a(sy.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        z50.c(obj, "null cannot be cast to non-null type androidx.window.layout.HardwareFoldingFeature");
        sy syVar = (sy) obj;
        return z50.a(this.a, syVar.a) && z50.a(this.b, syVar.b) && z50.a(getState(), syVar.getState());
    }

    @Override // androidx.appcompat.view.menu.pu
    public pu.b getState() {
        return this.c;
    }

    public int hashCode() {
        return (((this.a.hashCode() * 31) + this.b.hashCode()) * 31) + getState().hashCode();
    }

    public String toString() {
        return sy.class.getSimpleName() + " { " + this.a + ", type=" + this.b + ", state=" + getState() + " }";
    }
}
