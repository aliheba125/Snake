package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.xk0;

/* loaded from: classes.dex */
public final class b5 {
    public int a;
    public xk0.a b = xk0.a.DEFAULT;

    public static final class a implements xk0 {
        public final int a;
        public final xk0.a b;

        public a(int i, xk0.a aVar) {
            this.a = i;
            this.b = aVar;
        }

        @Override // java.lang.annotation.Annotation
        public Class annotationType() {
            return xk0.class;
        }

        @Override // java.lang.annotation.Annotation
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof xk0)) {
                return false;
            }
            xk0 xk0Var = (xk0) obj;
            return this.a == xk0Var.tag() && this.b.equals(xk0Var.intEncoding());
        }

        @Override // java.lang.annotation.Annotation
        public int hashCode() {
            return (14552422 ^ this.a) + (this.b.hashCode() ^ 2041407134);
        }

        @Override // androidx.appcompat.view.menu.xk0
        public xk0.a intEncoding() {
            return this.b;
        }

        @Override // androidx.appcompat.view.menu.xk0
        public int tag() {
            return this.a;
        }

        @Override // java.lang.annotation.Annotation
        public String toString() {
            return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.a + "intEncoding=" + this.b + ')';
        }
    }

    public static b5 b() {
        return new b5();
    }

    public xk0 a() {
        return new a(this.a, this.b);
    }

    public b5 c(int i) {
        this.a = i;
        return this;
    }
}
