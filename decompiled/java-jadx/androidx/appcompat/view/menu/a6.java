package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.ha0;
import java.util.List;

/* loaded from: classes.dex */
public final class a6 extends ha0 {
    public final long a;
    public final long b;
    public final yb c;
    public final Integer d;
    public final String e;
    public final List f;
    public final tl0 g;

    public static final class b extends ha0.a {
        public Long a;
        public Long b;
        public yb c;
        public Integer d;
        public String e;
        public List f;
        public tl0 g;

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0 a() {
            String str = "";
            if (this.a == null) {
                str = " requestTimeMs";
            }
            if (this.b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new a6(this.a.longValue(), this.b.longValue(), this.c, this.d, this.e, this.f, this.g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a b(yb ybVar) {
            this.c = ybVar;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a c(List list) {
            this.f = list;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a d(Integer num) {
            this.d = num;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a e(String str) {
            this.e = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a f(tl0 tl0Var) {
            this.g = tl0Var;
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a g(long j) {
            this.a = Long.valueOf(j);
            return this;
        }

        @Override // androidx.appcompat.view.menu.ha0.a
        public ha0.a h(long j) {
            this.b = Long.valueOf(j);
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.ha0
    public yb b() {
        return this.c;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public List c() {
        return this.f;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public Integer d() {
        return this.d;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public String e() {
        return this.e;
    }

    public boolean equals(Object obj) {
        yb ybVar;
        Integer num;
        String str;
        List list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof ha0)) {
            return false;
        }
        ha0 ha0Var = (ha0) obj;
        if (this.a == ha0Var.g() && this.b == ha0Var.h() && ((ybVar = this.c) != null ? ybVar.equals(ha0Var.b()) : ha0Var.b() == null) && ((num = this.d) != null ? num.equals(ha0Var.d()) : ha0Var.d() == null) && ((str = this.e) != null ? str.equals(ha0Var.e()) : ha0Var.e() == null) && ((list = this.f) != null ? list.equals(ha0Var.c()) : ha0Var.c() == null)) {
            tl0 tl0Var = this.g;
            if (tl0Var == null) {
                if (ha0Var.f() == null) {
                    return true;
                }
            } else if (tl0Var.equals(ha0Var.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public tl0 f() {
        return this.g;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public long g() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.ha0
    public long h() {
        return this.b;
    }

    public int hashCode() {
        long j = this.a;
        long j2 = this.b;
        int i = (((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003) ^ ((int) ((j2 >>> 32) ^ j2))) * 1000003;
        yb ybVar = this.c;
        int hashCode = (i ^ (ybVar == null ? 0 : ybVar.hashCode())) * 1000003;
        Integer num = this.d;
        int hashCode2 = (hashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.e;
        int hashCode3 = (hashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List list = this.f;
        int hashCode4 = (hashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        tl0 tl0Var = this.g;
        return hashCode4 ^ (tl0Var != null ? tl0Var.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.a + ", requestUptimeMs=" + this.b + ", clientInfo=" + this.c + ", logSource=" + this.d + ", logSourceName=" + this.e + ", logEvents=" + this.f + ", qosTier=" + this.g + "}";
    }

    public a6(long j, long j2, yb ybVar, Integer num, String str, List list, tl0 tl0Var) {
        this.a = j;
        this.b = j2;
        this.c = ybVar;
        this.d = num;
        this.e = str;
        this.f = list;
        this.g = tl0Var;
    }
}
