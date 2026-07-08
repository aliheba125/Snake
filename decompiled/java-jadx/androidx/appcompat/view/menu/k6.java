package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.a11;

/* loaded from: classes.dex */
public final class k6 extends a11 {
    public final String a;
    public final long b;
    public final a11.b c;

    public static final class b extends a11.a {
        public String a;
        public Long b;
        public a11.b c;

        @Override // androidx.appcompat.view.menu.a11.a
        public a11 a() {
            String str = "";
            if (this.b == null) {
                str = " tokenExpirationTimestamp";
            }
            if (str.isEmpty()) {
                return new k6(this.a, this.b.longValue(), this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.a11.a
        public a11.a b(a11.b bVar) {
            this.c = bVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.a11.a
        public a11.a c(String str) {
            this.a = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.a11.a
        public a11.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.a11
    public a11.b b() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.a11
    public String c() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.a11
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a11)) {
            return false;
        }
        a11 a11Var = (a11) obj;
        String str = this.a;
        if (str != null ? str.equals(a11Var.c()) : a11Var.c() == null) {
            if (this.b == a11Var.d()) {
                a11.b bVar = this.c;
                if (bVar == null) {
                    if (a11Var.b() == null) {
                        return true;
                    }
                } else if (bVar.equals(a11Var.b())) {
                    return true;
                }
            }
        }
        return false;
    }

    public int hashCode() {
        String str = this.a;
        int hashCode = str == null ? 0 : str.hashCode();
        long j = this.b;
        int i = (((hashCode ^ 1000003) * 1000003) ^ ((int) (j ^ (j >>> 32)))) * 1000003;
        a11.b bVar = this.c;
        return i ^ (bVar != null ? bVar.hashCode() : 0);
    }

    public String toString() {
        return "TokenResult{token=" + this.a + ", tokenExpirationTimestamp=" + this.b + ", responseCode=" + this.c + "}";
    }

    public k6(String str, long j, a11.b bVar) {
        this.a = str;
        this.b = j;
        this.c = bVar;
    }
}
