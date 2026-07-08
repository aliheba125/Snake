package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.m50;

/* loaded from: classes.dex */
public final class x5 extends m50 {
    public final String a;
    public final long b;
    public final long c;

    public static final class b extends m50.a {
        public String a;
        public Long b;
        public Long c;

        @Override // androidx.appcompat.view.menu.m50.a
        public m50 a() {
            String str = "";
            if (this.a == null) {
                str = " token";
            }
            if (this.b == null) {
                str = str + " tokenExpirationTimestamp";
            }
            if (this.c == null) {
                str = str + " tokenCreationTimestamp";
            }
            if (str.isEmpty()) {
                return new x5(this.a, this.b.longValue(), this.c.longValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.m50.a
        public m50.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null token");
            }
            this.a = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.m50.a
        public m50.a c(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.m50.a
        public m50.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.m50
    public String b() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.m50
    public long c() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.m50
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m50)) {
            return false;
        }
        m50 m50Var = (m50) obj;
        return this.a.equals(m50Var.b()) && this.b == m50Var.d() && this.c == m50Var.c();
    }

    public int hashCode() {
        int hashCode = (this.a.hashCode() ^ 1000003) * 1000003;
        long j = this.b;
        long j2 = this.c;
        return ((hashCode ^ ((int) (j ^ (j >>> 32)))) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)));
    }

    public String toString() {
        return "InstallationTokenResult{token=" + this.a + ", tokenExpirationTimestamp=" + this.b + ", tokenCreationTimestamp=" + this.c + "}";
    }

    public x5(String str, long j, long j2) {
        this.a = str;
        this.b = j;
        this.c = j2;
    }
}
