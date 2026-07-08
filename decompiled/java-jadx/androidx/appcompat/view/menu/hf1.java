package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class hf1 {
    public static final o40 d = o40.w("_syn", "_err", "_el");
    public String a;
    public long b;
    public Map c;

    public hf1(String str, long j, Map map) {
        this.a = str;
        this.b = j;
        HashMap hashMap = new HashMap();
        this.c = hashMap;
        if (map != null) {
            hashMap.putAll(map);
        }
    }

    public static Object c(String str, Object obj, Object obj2) {
        return (d.contains(str) && (obj2 instanceof Double)) ? Long.valueOf(Math.round(((Double) obj2).doubleValue())) : str.startsWith("_") ? ((obj instanceof String) || obj == null) ? obj2 : obj : obj instanceof Double ? obj2 : obj instanceof Long ? Long.valueOf(Math.round(((Double) obj2).doubleValue())) : obj instanceof String ? obj2.toString() : obj2;
    }

    public final long a() {
        return this.b;
    }

    public final Object b(String str) {
        if (this.c.containsKey(str)) {
            return this.c.get(str);
        }
        return null;
    }

    public final /* synthetic */ Object clone() {
        return new hf1(this.a, this.b, new HashMap(this.c));
    }

    public final void d(String str, Object obj) {
        if (obj == null) {
            this.c.remove(str);
        } else {
            this.c.put(str, c(str, this.c.get(str), obj));
        }
    }

    public final String e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof hf1)) {
            return false;
        }
        hf1 hf1Var = (hf1) obj;
        if (this.b == hf1Var.b && this.a.equals(hf1Var.a)) {
            return this.c.equals(hf1Var.c);
        }
        return false;
    }

    public final void f(String str) {
        this.a = str;
    }

    public final Map g() {
        return this.c;
    }

    public final int hashCode() {
        int hashCode = this.a.hashCode() * 31;
        long j = this.b;
        return ((hashCode + ((int) (j ^ (j >>> 32)))) * 31) + this.c.hashCode();
    }

    public final String toString() {
        return "Event{name='" + this.a + "', timestamp=" + this.b + ", params=" + String.valueOf(this.c) + "}";
    }
}
