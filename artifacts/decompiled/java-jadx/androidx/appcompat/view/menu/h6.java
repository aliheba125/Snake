package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ur0;
import java.util.Set;

/* loaded from: classes.dex */
public final class h6 extends ur0.b {
    public final long a;
    public final long b;
    public final Set c;

    public static final class b extends ur0.b.a {
        public Long a;
        public Long b;
        public Set c;

        @Override // androidx.appcompat.view.menu.ur0.b.a
        public ur0.b a() {
            String str = "";
            if (this.a == null) {
                str = " delta";
            }
            if (this.b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new h6(this.a.longValue(), this.b.longValue(), this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.ur0.b.a
        public ur0.b.a b(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.ur0.b.a
        public ur0.b.a c(Set set) {
            if (set == null) {
                throw new NullPointerException("Null flags");
            }
            this.c = set;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ur0.b.a
        public ur0.b.a d(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.ur0.b
    public long b() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.ur0.b
    public Set c() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.ur0.b
    public long d() {
        return this.b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ur0.b)) {
            return false;
        }
        ur0.b bVar = (ur0.b) obj;
        return this.a == bVar.b() && this.b == bVar.d() && this.c.equals(bVar.c());
    }

    public int hashCode() {
        long j = this.a;
        int i = (((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003;
        long j2 = this.b;
        return ((i ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003) ^ this.c.hashCode();
    }

    public String toString() {
        return "ConfigValue{delta=" + this.a + ", maxAllowedDelay=" + this.b + ", flags=" + this.c + "}";
    }

    public h6(long j, long j2, Set set) {
        this.a = j;
        this.b = j2;
        this.c = set;
    }
}
