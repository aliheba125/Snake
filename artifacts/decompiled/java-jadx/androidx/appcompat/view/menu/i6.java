package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ns0;

/* loaded from: classes.dex */
public final class i6 extends ns0 {
    public final d21 a;
    public final String b;
    public final wo c;
    public final r11 d;
    public final lo e;

    public static final class b extends ns0.a {
        public d21 a;
        public String b;
        public wo c;
        public r11 d;
        public lo e;

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0 a() {
            String str = "";
            if (this.a == null) {
                str = " transportContext";
            }
            if (this.b == null) {
                str = str + " transportName";
            }
            if (this.c == null) {
                str = str + " event";
            }
            if (this.d == null) {
                str = str + " transformer";
            }
            if (this.e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new i6(this.a, this.b, this.c, this.d, this.e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0.a b(lo loVar) {
            if (loVar == null) {
                throw new NullPointerException("Null encoding");
            }
            this.e = loVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0.a c(wo woVar) {
            if (woVar == null) {
                throw new NullPointerException("Null event");
            }
            this.c = woVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0.a d(r11 r11Var) {
            if (r11Var == null) {
                throw new NullPointerException("Null transformer");
            }
            this.d = r11Var;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0.a e(d21 d21Var) {
            if (d21Var == null) {
                throw new NullPointerException("Null transportContext");
            }
            this.a = d21Var;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ns0.a
        public ns0.a f(String str) {
            if (str == null) {
                throw new NullPointerException("Null transportName");
            }
            this.b = str;
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.ns0
    public lo b() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.ns0
    public wo c() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.ns0
    public r11 e() {
        return this.d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ns0)) {
            return false;
        }
        ns0 ns0Var = (ns0) obj;
        return this.a.equals(ns0Var.f()) && this.b.equals(ns0Var.g()) && this.c.equals(ns0Var.c()) && this.d.equals(ns0Var.e()) && this.e.equals(ns0Var.b());
    }

    @Override // androidx.appcompat.view.menu.ns0
    public d21 f() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.ns0
    public String g() {
        return this.b;
    }

    public int hashCode() {
        return ((((((((this.a.hashCode() ^ 1000003) * 1000003) ^ this.b.hashCode()) * 1000003) ^ this.c.hashCode()) * 1000003) ^ this.d.hashCode()) * 1000003) ^ this.e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.a + ", transportName=" + this.b + ", event=" + this.c + ", transformer=" + this.d + ", encoding=" + this.e + "}";
    }

    public i6(d21 d21Var, String str, wo woVar, r11 r11Var, lo loVar) {
        this.a = d21Var;
        this.b = str;
        this.c = woVar;
        this.d = r11Var;
        this.e = loVar;
    }
}
