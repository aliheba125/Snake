package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ai0;
import androidx.appcompat.view.menu.zh0;

/* loaded from: classes.dex */
public final class e6 extends ai0 {
    public final String b;
    public final zh0.a c;
    public final String d;
    public final String e;
    public final long f;
    public final long g;
    public final String h;

    public static final class b extends ai0.a {
        public String a;
        public zh0.a b;
        public String c;
        public String d;
        public Long e;
        public Long f;
        public String g;

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0 a() {
            String str = "";
            if (this.b == null) {
                str = " registrationStatus";
            }
            if (this.e == null) {
                str = str + " expiresInSecs";
            }
            if (this.f == null) {
                str = str + " tokenCreationEpochInSecs";
            }
            if (str.isEmpty()) {
                return new e6(this.a, this.b, this.c, this.d, this.e.longValue(), this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a b(String str) {
            this.c = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a c(long j) {
            this.e = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a d(String str) {
            this.a = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a e(String str) {
            this.g = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a f(String str) {
            this.d = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a g(zh0.a aVar) {
            if (aVar == null) {
                throw new NullPointerException("Null registrationStatus");
            }
            this.b = aVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ai0.a
        public ai0.a h(long j) {
            this.f = Long.valueOf(j);
            return this;
        }

        public b() {
        }

        public b(ai0 ai0Var) {
            this.a = ai0Var.d();
            this.b = ai0Var.g();
            this.c = ai0Var.b();
            this.d = ai0Var.f();
            this.e = Long.valueOf(ai0Var.c());
            this.f = Long.valueOf(ai0Var.h());
            this.g = ai0Var.e();
        }
    }

    @Override // androidx.appcompat.view.menu.ai0
    public String b() {
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public long c() {
        return this.f;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public String d() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public String e() {
        return this.h;
    }

    public boolean equals(Object obj) {
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ai0)) {
            return false;
        }
        ai0 ai0Var = (ai0) obj;
        String str3 = this.b;
        if (str3 != null ? str3.equals(ai0Var.d()) : ai0Var.d() == null) {
            if (this.c.equals(ai0Var.g()) && ((str = this.d) != null ? str.equals(ai0Var.b()) : ai0Var.b() == null) && ((str2 = this.e) != null ? str2.equals(ai0Var.f()) : ai0Var.f() == null) && this.f == ai0Var.c() && this.g == ai0Var.h()) {
                String str4 = this.h;
                if (str4 == null) {
                    if (ai0Var.e() == null) {
                        return true;
                    }
                } else if (str4.equals(ai0Var.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public String f() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public zh0.a g() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.ai0
    public long h() {
        return this.g;
    }

    public int hashCode() {
        String str = this.b;
        int hashCode = ((((str == null ? 0 : str.hashCode()) ^ 1000003) * 1000003) ^ this.c.hashCode()) * 1000003;
        String str2 = this.d;
        int hashCode2 = (hashCode ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.e;
        int hashCode3 = (hashCode2 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003;
        long j = this.f;
        int i = (hashCode3 ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        long j2 = this.g;
        int i2 = (i ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003;
        String str4 = this.h;
        return i2 ^ (str4 != null ? str4.hashCode() : 0);
    }

    @Override // androidx.appcompat.view.menu.ai0
    public ai0.a n() {
        return new b(this);
    }

    public String toString() {
        return "PersistedInstallationEntry{firebaseInstallationId=" + this.b + ", registrationStatus=" + this.c + ", authToken=" + this.d + ", refreshToken=" + this.e + ", expiresInSecs=" + this.f + ", tokenCreationEpochInSecs=" + this.g + ", fisError=" + this.h + "}";
    }

    public e6(String str, zh0.a aVar, String str2, String str3, long j, long j2, String str4) {
        this.b = str;
        this.c = aVar;
        this.d = str2;
        this.e = str3;
        this.f = j;
        this.g = j2;
        this.h = str4;
    }
}
