package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.d21;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class l6 extends d21 {
    public final String a;
    public final byte[] b;
    public final tj0 c;

    public static final class b extends d21.a {
        public String a;
        public byte[] b;
        public tj0 c;

        @Override // androidx.appcompat.view.menu.d21.a
        public d21 a() {
            String str = "";
            if (this.a == null) {
                str = " backendName";
            }
            if (this.c == null) {
                str = str + " priority";
            }
            if (str.isEmpty()) {
                return new l6(this.a, this.b, this.c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // androidx.appcompat.view.menu.d21.a
        public d21.a b(String str) {
            if (str == null) {
                throw new NullPointerException("Null backendName");
            }
            this.a = str;
            return this;
        }

        @Override // androidx.appcompat.view.menu.d21.a
        public d21.a c(byte[] bArr) {
            this.b = bArr;
            return this;
        }

        @Override // androidx.appcompat.view.menu.d21.a
        public d21.a d(tj0 tj0Var) {
            if (tj0Var == null) {
                throw new NullPointerException("Null priority");
            }
            this.c = tj0Var;
            return this;
        }
    }

    @Override // androidx.appcompat.view.menu.d21
    public String b() {
        return this.a;
    }

    @Override // androidx.appcompat.view.menu.d21
    public byte[] c() {
        return this.b;
    }

    @Override // androidx.appcompat.view.menu.d21
    public tj0 d() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d21)) {
            return false;
        }
        d21 d21Var = (d21) obj;
        if (this.a.equals(d21Var.b())) {
            if (Arrays.equals(this.b, d21Var instanceof l6 ? ((l6) d21Var).b : d21Var.c()) && this.c.equals(d21Var.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.b)) * 1000003) ^ this.c.hashCode();
    }

    public l6(String str, byte[] bArr, tj0 tj0Var) {
        this.a = str;
        this.b = bArr;
        this.c = tj0Var;
    }
}
