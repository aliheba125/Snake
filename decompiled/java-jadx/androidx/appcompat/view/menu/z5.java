package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.fa0;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class z5 extends fa0 {
    public final long a;
    public final Integer b;
    public final long c;
    public final byte[] d;
    public final String e;
    public final long f;
    public final ve0 g;

    public static final class b extends fa0.a {
        public Long a;
        public Integer b;
        public Long c;
        public byte[] d;
        public String e;
        public Long f;
        public ve0 g;

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0 a() {
            String str = "";
            if (this.a == null) {
                str = " eventTimeMs";
            }
            if (this.c == null) {
                str = str + " eventUptimeMs";
            }
            if (this.f == null) {
                str = str + " timezoneOffsetSeconds";
            }
            if (str.isEmpty()) {
                return new z5(this.a.longValue(), this.b, this.c.longValue(), this.d, this.e, this.f.longValue(), this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a b(Integer num) {
            this.b = num;
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a c(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a d(long j) {
            this.c = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a e(ve0 ve0Var) {
            this.g = ve0Var;
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a f(byte[] bArr) {
            this.d = bArr;
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a g(String str) {
            this.e = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.fa0.a
        public fa0.a h(long j) {
            this.f = Long.valueOf(j);
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.fa0
    public Integer b() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public long c() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public long d() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public ve0 e() {
        return this.g;
    }

    public boolean equals(Object obj) {
        Integer num;
        String str;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof fa0)) {
            return false;
        }
        fa0 fa0Var = (fa0) obj;
        if (this.a == fa0Var.c() && ((num = this.b) != null ? num.equals(fa0Var.b()) : fa0Var.b() == null) && this.c == fa0Var.d()) {
            if (Arrays.equals(this.d, fa0Var instanceof z5 ? ((z5) fa0Var).d : fa0Var.f()) && ((str = this.e) != null ? str.equals(fa0Var.g()) : fa0Var.g() == null) && this.f == fa0Var.h()) {
                ve0 ve0Var = this.g;
                if (ve0Var == null) {
                    if (fa0Var.e() == null) {
                        return true;
                    }
                } else if (ve0Var.equals(fa0Var.e())) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public byte[] f() {
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public String g() {
        return this.e;
    }

    @Override // androidx.appcompat.view.menu.fa0
    public long h() {
        return this.f;
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        Integer num = this.b;
        int hashCode = num == null ? 0 : num.hashCode();
        long j2 = this.c;
        int hashCode2 = (((((i ^ hashCode) * 1000003) ^ ((int) (j2 ^ (j2 >>> 32)))) * 1000003) ^ Arrays.hashCode(this.d)) * 1000003;
        String str = this.e;
        int hashCode3 = str == null ? 0 : str.hashCode();
        long j3 = this.f;
        int i2 = (((hashCode2 ^ hashCode3) * 1000003) ^ ((int) ((j3 >>> 32) ^ j3))) * 1000003;
        ve0 ve0Var = this.g;
        return i2 ^ (ve0Var != null ? ve0Var.hashCode() : 0);
    }

    public String toString() {
        return "LogEvent{eventTimeMs=" + this.a + ", eventCode=" + this.b + ", eventUptimeMs=" + this.c + ", sourceExtension=" + Arrays.toString(this.d) + ", sourceExtensionJsonProto3=" + this.e + ", timezoneOffsetSeconds=" + this.f + ", networkConnectionInfo=" + this.g + "}";
    }

    public z5(long j, Integer num, long j2, byte[] bArr, String str, long j3, ve0 ve0Var) {
        this.a = j;
        this.b = num;
        this.c = j2;
        this.d = bArr;
        this.e = str;
        this.f = j3;
        this.g = ve0Var;
    }
}
