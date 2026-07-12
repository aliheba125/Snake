package androidx.appcompat.view.menu;

import android.os.Bundle;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class lz1 {
    public static final lz1 c = new lz1(null, null, 100);
    public final EnumMap a;
    public final int b;

    public enum a {
        AD_STORAGE("ad_storage"),
        ANALYTICS_STORAGE("analytics_storage"),
        AD_USER_DATA("ad_user_data"),
        AD_PERSONALIZATION("ad_personalization");

        public final String m;

        a(String str) {
            this.m = str;
        }
    }

    public lz1(EnumMap enumMap, int i) {
        EnumMap enumMap2 = new EnumMap(a.class);
        this.a = enumMap2;
        enumMap2.putAll(enumMap);
        this.b = i;
    }

    public static char a(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    public static lz1 c(Bundle bundle, int i) {
        a[] aVarArr;
        if (bundle == null) {
            return new lz1(null, null, i);
        }
        EnumMap enumMap = new EnumMap(a.class);
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            enumMap.put((EnumMap) aVar, (a) q(bundle.getString(aVar.m)));
        }
        return new lz1(enumMap, i);
    }

    public static lz1 e(String str) {
        return f(str, 100);
    }

    public static lz1 f(String str, int i) {
        EnumMap enumMap = new EnumMap(a.class);
        if (str != null) {
            a[] c2 = kz1.STORAGE.c();
            for (int i2 = 0; i2 < c2.length; i2++) {
                a aVar = c2[i2];
                int i3 = i2 + 2;
                if (i3 < str.length()) {
                    enumMap.put((EnumMap) aVar, (a) g(str.charAt(i3)));
                }
            }
        }
        return new lz1(enumMap, i);
    }

    public static Boolean g(char c2) {
        if (c2 == '0') {
            return Boolean.FALSE;
        }
        if (c2 != '1') {
            return null;
        }
        return Boolean.TRUE;
    }

    public static String h(int i) {
        return i != -20 ? i != -10 ? i != 0 ? i != 30 ? i != 90 ? i != 100 ? "OTHER" : "UNKNOWN" : "REMOTE_CONFIG" : "1P_INIT" : "1P_API" : "MANIFEST" : "API";
    }

    public static String i(Bundle bundle) {
        a[] aVarArr;
        String string;
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            if (bundle.containsKey(aVar.m) && (string = bundle.getString(aVar.m)) != null && q(string) == null) {
                return string;
            }
        }
        return null;
    }

    public static String j(boolean z) {
        return z ? "granted" : "denied";
    }

    public static boolean k(int i, int i2) {
        return i <= i2;
    }

    public static int n(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    public static Boolean q(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (str.equals("denied")) {
            return Boolean.FALSE;
        }
        return null;
    }

    public final int b() {
        return this.b;
    }

    public final lz1 d(lz1 lz1Var) {
        a[] aVarArr;
        EnumMap enumMap = new EnumMap(a.class);
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            Boolean bool = (Boolean) this.a.get(aVar);
            Boolean bool2 = (Boolean) lz1Var.a.get(aVar);
            if (bool == null) {
                bool = bool2;
            } else if (bool2 != null) {
                bool = Boolean.valueOf(bool.booleanValue() && bool2.booleanValue());
            }
            enumMap.put((EnumMap) aVar, (a) bool);
        }
        return new lz1(enumMap, 100);
    }

    public final boolean equals(Object obj) {
        a[] aVarArr;
        if (!(obj instanceof lz1)) {
            return false;
        }
        lz1 lz1Var = (lz1) obj;
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            if (n((Boolean) this.a.get(aVar)) != n((Boolean) lz1Var.a.get(aVar))) {
                return false;
            }
        }
        return this.b == lz1Var.b;
    }

    public final int hashCode() {
        int i = this.b * 17;
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            i = (i * 31) + n((Boolean) it.next());
        }
        return i;
    }

    public final boolean l(a aVar) {
        Boolean bool = (Boolean) this.a.get(aVar);
        return bool == null || bool.booleanValue();
    }

    public final boolean m(lz1 lz1Var, a... aVarArr) {
        for (a aVar : aVarArr) {
            if (!lz1Var.l(aVar) && l(aVar)) {
                return true;
            }
        }
        return false;
    }

    public final Bundle o() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.a.entrySet()) {
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null) {
                bundle.putString(((a) entry.getKey()).m, j(bool.booleanValue()));
            }
        }
        return bundle;
    }

    public final lz1 p(lz1 lz1Var) {
        a[] aVarArr;
        EnumMap enumMap = new EnumMap(a.class);
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            Boolean bool = (Boolean) this.a.get(aVar);
            if (bool == null) {
                bool = (Boolean) lz1Var.a.get(aVar);
            }
            enumMap.put((EnumMap) aVar, (a) bool);
        }
        return new lz1(enumMap, this.b);
    }

    public final boolean r(lz1 lz1Var, a... aVarArr) {
        for (a aVar : aVarArr) {
            Boolean bool = (Boolean) this.a.get(aVar);
            Boolean bool2 = (Boolean) lz1Var.a.get(aVar);
            Boolean bool3 = Boolean.FALSE;
            if (bool == bool3 && bool2 != bool3) {
                return true;
            }
        }
        return false;
    }

    public final Boolean s() {
        return (Boolean) this.a.get(a.AD_STORAGE);
    }

    public final boolean t(lz1 lz1Var) {
        return r(lz1Var, (a[]) this.a.keySet().toArray(new a[0]));
    }

    public final String toString() {
        a[] aVarArr;
        StringBuilder sb = new StringBuilder("source=");
        sb.append(h(this.b));
        aVarArr = kz1.STORAGE.m;
        for (a aVar : aVarArr) {
            sb.append(",");
            sb.append(aVar.m);
            sb.append("=");
            Boolean bool = (Boolean) this.a.get(aVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(bool.booleanValue() ? "granted" : "denied");
            }
        }
        return sb.toString();
    }

    public final Boolean u() {
        return (Boolean) this.a.get(a.ANALYTICS_STORAGE);
    }

    public final String v() {
        StringBuilder sb = new StringBuilder("G1");
        for (a aVar : kz1.STORAGE.c()) {
            sb.append(a((Boolean) this.a.get(aVar)));
        }
        return sb.toString();
    }

    public final String w() {
        StringBuilder sb = new StringBuilder("G2");
        for (a aVar : kz1.STORAGE.c()) {
            Boolean bool = (Boolean) this.a.get(aVar);
            sb.append(bool == null ? 'g' : bool.booleanValue() ? 'G' : 'D');
        }
        return sb.toString();
    }

    public final boolean x() {
        return l(a.AD_STORAGE);
    }

    public final boolean y() {
        return l(a.ANALYTICS_STORAGE);
    }

    public final boolean z() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            if (((Boolean) it.next()) != null) {
                return true;
            }
        }
        return false;
    }

    public lz1(Boolean bool, Boolean bool2, int i) {
        EnumMap enumMap = new EnumMap(a.class);
        this.a = enumMap;
        enumMap.put((EnumMap) a.AD_STORAGE, (a) bool);
        enumMap.put((EnumMap) a.ANALYTICS_STORAGE, (a) bool2);
        this.b = i;
    }
}
