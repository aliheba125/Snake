package androidx.appcompat.view.menu;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ir {
    public final String a;
    public final Map b;

    public static final class b {
        public final String a;
        public Map b = null;

        public b(String str) {
            this.a = str;
        }

        public ir a() {
            return new ir(this.a, this.b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.b)));
        }

        public b b(Annotation annotation) {
            if (this.b == null) {
                this.b = new HashMap();
            }
            this.b.put(annotation.annotationType(), annotation);
            return this;
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public static ir d(String str) {
        return new ir(str, Collections.emptyMap());
    }

    public String b() {
        return this.a;
    }

    public Annotation c(Class cls) {
        return (Annotation) this.b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ir)) {
            return false;
        }
        ir irVar = (ir) obj;
        return this.a.equals(irVar.a) && this.b.equals(irVar.b);
    }

    public int hashCode() {
        return (this.a.hashCode() * 31) + this.b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.a + ", properties=" + this.b.values() + "}";
    }

    public ir(String str, Map map) {
        this.a = str;
        this.b = map;
    }
}
