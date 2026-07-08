package androidx.appcompat.view.menu;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class pb implements k70, nb {
    public static final a b = new a(null);
    public static final Map c;
    public static final HashMap d;
    public static final HashMap e;
    public static final HashMap f;
    public static final Map g;
    public final Class a;

    public static final class a {
        public a() {
        }

        public /* synthetic */ a(lj ljVar) {
            this();
        }

        public final String a(Class cls) {
            String str;
            z50.e(cls, "jClass");
            String str2 = null;
            if (cls.isAnonymousClass() || cls.isLocalClass()) {
                return null;
            }
            if (!cls.isArray()) {
                String str3 = (String) pb.f.get(cls.getName());
                return str3 == null ? cls.getCanonicalName() : str3;
            }
            Class<?> componentType = cls.getComponentType();
            if (componentType.isPrimitive() && (str = (String) pb.f.get(componentType.getName())) != null) {
                str2 = str + "Array";
            }
            return str2 == null ? "kotlin.Array" : str2;
        }

        /* JADX WARN: Code restructure failed: missing block: B:8:0x003d, code lost:
        
            if (r2 == null) goto L13;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final String b(Class cls) {
            String str;
            String str2;
            String y;
            String z;
            z50.e(cls, "jClass");
            String str3 = null;
            if (cls.isAnonymousClass()) {
                return null;
            }
            if (cls.isLocalClass()) {
                String simpleName = cls.getSimpleName();
                Method enclosingMethod = cls.getEnclosingMethod();
                if (enclosingMethod != null) {
                    z50.d(simpleName, "name");
                    str = xx0.z(simpleName, enclosingMethod.getName() + '$', null, 2, null);
                }
                Constructor<?> enclosingConstructor = cls.getEnclosingConstructor();
                if (enclosingConstructor == null) {
                    z50.d(simpleName, "name");
                    y = xx0.y(simpleName, '$', null, 2, null);
                    return y;
                }
                z50.d(simpleName, "name");
                z = xx0.z(simpleName, enclosingConstructor.getName() + '$', null, 2, null);
                return z;
            }
            if (!cls.isArray()) {
                String str4 = (String) pb.g.get(cls.getName());
                return str4 == null ? cls.getSimpleName() : str4;
            }
            Class<?> componentType = cls.getComponentType();
            str = "Array";
            if (componentType.isPrimitive() && (str2 = (String) pb.g.get(componentType.getName())) != null) {
                str3 = str2 + "Array";
            }
            if (str3 != null) {
                return str3;
            }
            return str;
        }

        public final boolean c(Object obj, Class cls) {
            z50.e(cls, "jClass");
            Map map = pb.c;
            z50.c(map, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.get, V of kotlin.collections.MapsKt__MapsKt.get>");
            Integer num = (Integer) map.get(cls);
            if (num != null) {
                return q21.c(obj, num.intValue());
            }
            if (cls.isPrimitive()) {
                cls = i70.b(i70.c(cls));
            }
            return cls.isInstance(obj);
        }
    }

    static {
        List g2;
        int j;
        Map g3;
        int a2;
        String B;
        String B2;
        int i = 0;
        g2 = sc.g(dw.class, fw.class, tw.class, vw.class, ww.class, xw.class, yw.class, zw.class, ax.class, bx.class, ew.class, gw.class, hw.class, iw.class, jw.class, kw.class, lw.class, mw.class, nw.class, ow.class, qw.class, rw.class, sw.class);
        List list = g2;
        j = tc.j(list, 10);
        ArrayList arrayList = new ArrayList(j);
        for (Object obj : list) {
            int i2 = i + 1;
            if (i < 0) {
                sc.i();
            }
            arrayList.add(p21.a((Class) obj, Integer.valueOf(i)));
            i = i2;
        }
        g3 = cb0.g(arrayList);
        c = g3;
        HashMap hashMap = new HashMap();
        hashMap.put("boolean", "kotlin.Boolean");
        hashMap.put("char", "kotlin.Char");
        hashMap.put("byte", "kotlin.Byte");
        hashMap.put("short", "kotlin.Short");
        hashMap.put("int", "kotlin.Int");
        hashMap.put("float", "kotlin.Float");
        hashMap.put("long", "kotlin.Long");
        hashMap.put("double", "kotlin.Double");
        d = hashMap;
        HashMap hashMap2 = new HashMap();
        hashMap2.put("java.lang.Boolean", "kotlin.Boolean");
        hashMap2.put("java.lang.Character", "kotlin.Char");
        hashMap2.put("java.lang.Byte", "kotlin.Byte");
        hashMap2.put("java.lang.Short", "kotlin.Short");
        hashMap2.put("java.lang.Integer", "kotlin.Int");
        hashMap2.put("java.lang.Float", "kotlin.Float");
        hashMap2.put("java.lang.Long", "kotlin.Long");
        hashMap2.put("java.lang.Double", "kotlin.Double");
        e = hashMap2;
        HashMap hashMap3 = new HashMap();
        hashMap3.put("java.lang.Object", "kotlin.Any");
        hashMap3.put("java.lang.String", "kotlin.String");
        hashMap3.put("java.lang.CharSequence", "kotlin.CharSequence");
        hashMap3.put("java.lang.Throwable", "kotlin.Throwable");
        hashMap3.put("java.lang.Cloneable", "kotlin.Cloneable");
        hashMap3.put("java.lang.Number", "kotlin.Number");
        hashMap3.put("java.lang.Comparable", "kotlin.Comparable");
        hashMap3.put("java.lang.Enum", "kotlin.Enum");
        hashMap3.put("java.lang.annotation.Annotation", "kotlin.Annotation");
        hashMap3.put("java.lang.Iterable", "kotlin.collections.Iterable");
        hashMap3.put("java.util.Iterator", "kotlin.collections.Iterator");
        hashMap3.put("java.util.Collection", "kotlin.collections.Collection");
        hashMap3.put("java.util.List", "kotlin.collections.List");
        hashMap3.put("java.util.Set", "kotlin.collections.Set");
        hashMap3.put("java.util.ListIterator", "kotlin.collections.ListIterator");
        hashMap3.put("java.util.Map", "kotlin.collections.Map");
        hashMap3.put("java.util.Map$Entry", "kotlin.collections.Map.Entry");
        hashMap3.put("kotlin.jvm.internal.StringCompanionObject", "kotlin.String.Companion");
        hashMap3.put("kotlin.jvm.internal.EnumCompanionObject", "kotlin.Enum.Companion");
        hashMap3.putAll(hashMap);
        hashMap3.putAll(hashMap2);
        Collection<String> values = hashMap.values();
        z50.d(values, "primitiveFqNames.values");
        for (String str : values) {
            StringBuilder sb = new StringBuilder();
            sb.append("kotlin.jvm.internal.");
            z50.d(str, "kotlinName");
            B2 = xx0.B(str, '.', null, 2, null);
            sb.append(B2);
            sb.append("CompanionObject");
            lh0 a3 = p21.a(sb.toString(), str + ".Companion");
            hashMap3.put(a3.c(), a3.d());
        }
        for (Map.Entry entry : c.entrySet()) {
            hashMap3.put(((Class) entry.getKey()).getName(), "kotlin.Function" + ((Number) entry.getValue()).intValue());
        }
        f = hashMap3;
        a2 = bb0.a(hashMap3.size());
        LinkedHashMap linkedHashMap = new LinkedHashMap(a2);
        for (Map.Entry entry2 : hashMap3.entrySet()) {
            Object key = entry2.getKey();
            B = xx0.B((String) entry2.getValue(), '.', null, 2, null);
            linkedHashMap.put(key, B);
        }
        g = linkedHashMap;
    }

    public pb(Class cls) {
        z50.e(cls, "jClass");
        this.a = cls;
    }

    @Override // androidx.appcompat.view.menu.k70
    public String a() {
        return b.a(d());
    }

    @Override // androidx.appcompat.view.menu.k70
    public boolean b(Object obj) {
        return b.c(obj, d());
    }

    @Override // androidx.appcompat.view.menu.k70
    public String c() {
        return b.b(d());
    }

    @Override // androidx.appcompat.view.menu.nb
    public Class d() {
        return this.a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof pb) && z50.a(i70.b(this), i70.b((k70) obj));
    }

    public int hashCode() {
        return i70.b(this).hashCode();
    }

    public String toString() {
        return d().toString() + " (Kotlin reflection is not available)";
    }
}
