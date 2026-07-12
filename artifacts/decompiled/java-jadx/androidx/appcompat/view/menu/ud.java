package androidx.appcompat.view.menu;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class ud {
    public final String a;
    public final Set b;
    public final Set c;
    public final int d;
    public final int e;
    public final de f;
    public final Set g;

    public static b c(ul0 ul0Var) {
        return new b(ul0Var, new ul0[0]);
    }

    public static b d(ul0 ul0Var, ul0... ul0VarArr) {
        return new b(ul0Var, ul0VarArr);
    }

    public static b e(Class cls) {
        return new b(cls, new Class[0]);
    }

    public static b f(Class cls, Class... clsArr) {
        return new b(cls, clsArr);
    }

    public static ud l(final Object obj, Class cls) {
        return m(cls).f(new de() { // from class: androidx.appcompat.view.menu.sd
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                Object q;
                q = ud.q(obj, xdVar);
                return q;
            }
        }).d();
    }

    public static b m(Class cls) {
        return e(cls).g();
    }

    public static /* synthetic */ Object q(Object obj, xd xdVar) {
        return obj;
    }

    public static /* synthetic */ Object r(Object obj, xd xdVar) {
        return obj;
    }

    public static ud s(final Object obj, Class cls, Class... clsArr) {
        return f(cls, clsArr).f(new de() { // from class: androidx.appcompat.view.menu.td
            @Override // androidx.appcompat.view.menu.de
            public final Object a(xd xdVar) {
                Object r;
                r = ud.r(obj, xdVar);
                return r;
            }
        }).d();
    }

    public Set g() {
        return this.c;
    }

    public de h() {
        return this.f;
    }

    public String i() {
        return this.a;
    }

    public Set j() {
        return this.b;
    }

    public Set k() {
        return this.g;
    }

    public boolean n() {
        return this.d == 1;
    }

    public boolean o() {
        return this.d == 2;
    }

    public boolean p() {
        return this.e == 0;
    }

    public ud t(de deVar) {
        return new ud(this.a, this.b, this.c, this.d, this.e, deVar, this.g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.b.toArray()) + ">{" + this.d + ", type=" + this.e + ", deps=" + Arrays.toString(this.c.toArray()) + "}";
    }

    public static class b {
        public String a;
        public final Set b;
        public final Set c;
        public int d;
        public int e;
        public de f;
        public final Set g;

        public b b(il ilVar) {
            oj0.c(ilVar, "Null dependency");
            j(ilVar.b());
            this.c.add(ilVar);
            return this;
        }

        public b c() {
            return i(1);
        }

        public ud d() {
            oj0.d(this.f != null, "Missing required property: factory.");
            return new ud(this.a, new HashSet(this.b), new HashSet(this.c), this.d, this.e, this.f, this.g);
        }

        public b e() {
            return i(2);
        }

        public b f(de deVar) {
            this.f = (de) oj0.c(deVar, "Null factory");
            return this;
        }

        public final b g() {
            this.e = 1;
            return this;
        }

        public b h(String str) {
            this.a = str;
            return this;
        }

        public final b i(int i) {
            oj0.d(this.d == 0, "Instantiation type has already been set.");
            this.d = i;
            return this;
        }

        public final void j(ul0 ul0Var) {
            oj0.a(!this.b.contains(ul0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b(Class cls, Class... clsArr) {
            this.a = null;
            HashSet hashSet = new HashSet();
            this.b = hashSet;
            this.c = new HashSet();
            this.d = 0;
            this.e = 0;
            this.g = new HashSet();
            oj0.c(cls, "Null interface");
            hashSet.add(ul0.b(cls));
            for (Class cls2 : clsArr) {
                oj0.c(cls2, "Null interface");
                this.b.add(ul0.b(cls2));
            }
        }

        public b(ul0 ul0Var, ul0... ul0VarArr) {
            this.a = null;
            HashSet hashSet = new HashSet();
            this.b = hashSet;
            this.c = new HashSet();
            this.d = 0;
            this.e = 0;
            this.g = new HashSet();
            oj0.c(ul0Var, "Null interface");
            hashSet.add(ul0Var);
            for (ul0 ul0Var2 : ul0VarArr) {
                oj0.c(ul0Var2, "Null interface");
            }
            Collections.addAll(this.b, ul0VarArr);
        }
    }

    public ud(String str, Set set, Set set2, int i, int i2, de deVar, Set set3) {
        this.a = str;
        this.b = Collections.unmodifiableSet(set);
        this.c = Collections.unmodifiableSet(set2);
        this.d = i;
        this.e = i2;
        this.f = deVar;
        this.g = Collections.unmodifiableSet(set3);
    }
}
