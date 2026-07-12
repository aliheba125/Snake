package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.l50;

/* loaded from: classes.dex */
public final class w5 extends l50 {
    public final String a;
    public final String b;
    public final String c;
    public final a11 d;
    public final l50.b e;

    public static final class b extends l50.a {
        public String a;
        public String b;
        public String c;
        public a11 d;
        public l50.b e;

        @Override // androidx.appcompat.view.menu.l50.a
        public l50 a() {
            return new w5(this.a, this.b, this.c, this.d, this.e);
        }

        @Override // androidx.appcompat.view.menu.l50.a
        public l50.a b(a11 a11Var) {
            this.d = a11Var;
            return this;
        }

        @Override // androidx.appcompat.view.menu.l50.a
        public l50.a c(String str) {
            this.b = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.l50.a
        public l50.a d(String str) {
            this.c = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.l50.a
        public l50.a e(l50.b bVar) {
            this.e = bVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.l50.a
        public l50.a f(String str) {
            this.a = str;
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.l50
    public a11 b() {
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.l50
    public String c() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.l50
    public String d() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.l50
    public l50.b e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof l50)) {
            return false;
        }
        l50 l50Var = (l50) obj;
        String str = this.a;
        if (str != null ? str.equals(l50Var.f()) : l50Var.f() == null) {
            String str2 = this.b;
            if (str2 != null ? str2.equals(l50Var.c()) : l50Var.c() == null) {
                String str3 = this.c;
                if (str3 != null ? str3.equals(l50Var.d()) : l50Var.d() == null) {
                    a11 a11Var = this.d;
                    if (a11Var != null ? a11Var.equals(l50Var.b()) : l50Var.b() == null) {
                        l50.b bVar = this.e;
                        if (bVar == null) {
                            if (l50Var.e() == null) {
                                return true;
                            }
                        } else if (bVar.equals(l50Var.e())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.l50
    public String f() {
        return this.a;
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = ((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003;
        String str2 = this.b;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.c;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        a11 a11Var = this.d;
        int hashCode4 = (hashCode3 ^ (a11Var == null ? 0 : a11Var.hashCode())) * 1000003;
        l50.b bVar = this.e;
        return hashCode4 ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "InstallationResponse{uri=" + this.a + ", fid=" + this.b + ", refreshToken=" + this.c + ", authToken=" + this.d + ", responseCode=" + this.e + "}";
    }

    public w5(String str, String str2, String str3, a11 a11Var, l50.b bVar) {
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = a11Var;
        this.e = bVar;
    }
}
