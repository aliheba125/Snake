package androidx.appcompat.view.menu;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zb {
    public static final zb e = new a().b();
    public final u01 a;
    public final List b;
    public final ox c;
    public final String d;

    public static final class a {
        public u01 a = null;
        public List b = new ArrayList();
        public ox c = null;
        public String d = "";

        public a a(ja0 ja0Var) {
            this.b.add(ja0Var);
            return this;
        }

        public zb b() {
            return new zb(this.a, Collections.unmodifiableList(this.b), this.c, this.d);
        }

        public a c(String str) {
            this.d = str;
            return this;
        }

        public a d(ox oxVar) {
            this.c = oxVar;
            return this;
        }

        public a e(u01 u01Var) {
            this.a = u01Var;
            return this;
        }
    }

    public zb(u01 u01Var, List list, ox oxVar, String str) {
        this.a = u01Var;
        this.b = list;
        this.c = oxVar;
        this.d = str;
    }

    public static a e() {
        return new a();
    }

    public String a() {
        return this.d;
    }

    public ox b() {
        return this.c;
    }

    public List c() {
        return this.b;
    }

    public u01 d() {
        return this.a;
    }

    public byte[] f() {
        return vk0.a(this);
    }
}
