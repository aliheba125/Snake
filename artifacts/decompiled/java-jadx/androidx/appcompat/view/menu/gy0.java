package androidx.appcompat.view.menu;

import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class gy0 {

    public static class a implements ey0, Serializable {
        public final ey0 m;
        public volatile transient boolean n;
        public transient Object o;

        public a(ey0 ey0Var) {
            this.m = (ey0) nj0.i(ey0Var);
        }

        @Override // androidx.appcompat.view.menu.ey0
        public Object get() {
            if (!this.n) {
                synchronized (this) {
                    try {
                        if (!this.n) {
                            Object obj = this.m.get();
                            this.o = obj;
                            this.n = true;
                            return obj;
                        }
                    } finally {
                    }
                }
            }
            return qf0.a(this.o);
        }

        public String toString() {
            Object obj;
            if (this.n) {
                String valueOf = String.valueOf(this.o);
                StringBuilder sb = new StringBuilder(valueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(valueOf);
                sb.append(">");
                obj = sb.toString();
            } else {
                obj = this.m;
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class b implements ey0 {
        public volatile ey0 m;
        public volatile boolean n;
        public Object o;

        public b(ey0 ey0Var) {
            this.m = (ey0) nj0.i(ey0Var);
        }

        @Override // androidx.appcompat.view.menu.ey0
        public Object get() {
            if (!this.n) {
                synchronized (this) {
                    try {
                        if (!this.n) {
                            ey0 ey0Var = this.m;
                            Objects.requireNonNull(ey0Var);
                            Object obj = ey0Var.get();
                            this.o = obj;
                            this.n = true;
                            this.m = null;
                            return obj;
                        }
                    } finally {
                    }
                }
            }
            return qf0.a(this.o);
        }

        public String toString() {
            Object obj = this.m;
            if (obj == null) {
                String valueOf = String.valueOf(this.o);
                StringBuilder sb = new StringBuilder(valueOf.length() + 25);
                sb.append("<supplier that returned ");
                sb.append(valueOf);
                sb.append(">");
                obj = sb.toString();
            }
            String valueOf2 = String.valueOf(obj);
            StringBuilder sb2 = new StringBuilder(valueOf2.length() + 19);
            sb2.append("Suppliers.memoize(");
            sb2.append(valueOf2);
            sb2.append(")");
            return sb2.toString();
        }
    }

    public static class c implements ey0, Serializable {
        public final Object m;

        public c(Object obj) {
            this.m = obj;
        }

        public boolean equals(Object obj) {
            if (obj instanceof c) {
                return xf0.a(this.m, ((c) obj).m);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.ey0
        public Object get() {
            return this.m;
        }

        public int hashCode() {
            return xf0.b(this.m);
        }

        public String toString() {
            String valueOf = String.valueOf(this.m);
            StringBuilder sb = new StringBuilder(valueOf.length() + 22);
            sb.append("Suppliers.ofInstance(");
            sb.append(valueOf);
            sb.append(")");
            return sb.toString();
        }
    }

    public static ey0 a(ey0 ey0Var) {
        return ((ey0Var instanceof b) || (ey0Var instanceof a)) ? ey0Var : ey0Var instanceof Serializable ? new a(ey0Var) : new b(ey0Var);
    }

    public static ey0 b(Object obj) {
        return new c(obj);
    }
}
