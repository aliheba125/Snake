package androidx.appcompat.view.menu;

import android.os.Bundle;
import androidx.appcompat.view.menu.lz1;
import java.util.EnumMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class fh1 {
    public static final fh1 f = new fh1((Boolean) null, 100);
    public final int a;
    public final String b;
    public final Boolean c;
    public final String d;
    public final EnumMap e;

    public fh1(Boolean bool, int i) {
        this(bool, i, (Boolean) null, (String) null);
    }

    public static fh1 b(Bundle bundle, int i) {
        if (bundle == null) {
            return new fh1((Boolean) null, i);
        }
        EnumMap enumMap = new EnumMap(lz1.a.class);
        for (lz1.a aVar : kz1.DMA.c()) {
            enumMap.put((EnumMap) aVar, (lz1.a) lz1.q(bundle.getString(aVar.m)));
        }
        return new fh1(enumMap, i, bundle.containsKey("is_dma_region") ? Boolean.valueOf(bundle.getString("is_dma_region")) : null, bundle.getString("cps_display_str"));
    }

    public static fh1 c(String str) {
        if (str == null || str.length() <= 0) {
            return f;
        }
        String[] split = str.split(":");
        int parseInt = Integer.parseInt(split[0]);
        EnumMap enumMap = new EnumMap(lz1.a.class);
        lz1.a[] c = kz1.DMA.c();
        int length = c.length;
        int i = 1;
        int i2 = 0;
        while (i2 < length) {
            enumMap.put((EnumMap) c[i2], (lz1.a) lz1.g(split[i].charAt(0)));
            i2++;
            i++;
        }
        return new fh1(enumMap, parseInt);
    }

    public static Boolean d(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        return lz1.q(bundle.getString("ad_personalization"));
    }

    public final int a() {
        return this.a;
    }

    public final Bundle e() {
        Bundle bundle = new Bundle();
        for (Map.Entry entry : this.e.entrySet()) {
            Boolean bool = (Boolean) entry.getValue();
            if (bool != null) {
                bundle.putString(((lz1.a) entry.getKey()).m, lz1.j(bool.booleanValue()));
            }
        }
        Boolean bool2 = this.c;
        if (bool2 != null) {
            bundle.putString("is_dma_region", bool2.toString());
        }
        String str = this.d;
        if (str != null) {
            bundle.putString("cps_display_str", str);
        }
        return bundle;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof fh1)) {
            return false;
        }
        fh1 fh1Var = (fh1) obj;
        if (this.b.equalsIgnoreCase(fh1Var.b) && dh1.a(this.c, fh1Var.c)) {
            return dh1.a(this.d, fh1Var.d);
        }
        return false;
    }

    public final Boolean f() {
        return (Boolean) this.e.get(lz1.a.AD_USER_DATA);
    }

    public final Boolean g() {
        return this.c;
    }

    public final String h() {
        return this.d;
    }

    public final int hashCode() {
        Boolean bool = this.c;
        int i = bool == null ? 3 : bool == Boolean.TRUE ? 7 : 13;
        String str = this.d;
        return this.b.hashCode() + (i * 29) + ((str == null ? 17 : str.hashCode()) * 137);
    }

    public final String i() {
        return this.b;
    }

    public final boolean j() {
        Iterator it = this.e.values().iterator();
        while (it.hasNext()) {
            if (((Boolean) it.next()) != null) {
                return true;
            }
        }
        return false;
    }

    public final String k() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.a);
        for (lz1.a aVar : kz1.DMA.c()) {
            sb.append(":");
            sb.append(lz1.a((Boolean) this.e.get(aVar)));
        }
        return sb.toString();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("source=");
        sb.append(lz1.h(this.a));
        for (lz1.a aVar : kz1.DMA.c()) {
            sb.append(",");
            sb.append(aVar.m);
            sb.append("=");
            Boolean bool = (Boolean) this.e.get(aVar);
            if (bool == null) {
                sb.append("uninitialized");
            } else {
                sb.append(bool.booleanValue() ? "granted" : "denied");
            }
        }
        if (this.c != null) {
            sb.append(",isDmaRegion=");
            sb.append(this.c);
        }
        if (this.d != null) {
            sb.append(",cpsDisplayStr=");
            sb.append(this.d);
        }
        return sb.toString();
    }

    public fh1(EnumMap enumMap, int i) {
        this(enumMap, i, (Boolean) null, (String) null);
    }

    public fh1(Boolean bool, int i, Boolean bool2, String str) {
        EnumMap enumMap = new EnumMap(lz1.a.class);
        this.e = enumMap;
        enumMap.put((EnumMap) lz1.a.AD_USER_DATA, (lz1.a) bool);
        this.a = i;
        this.b = k();
        this.c = bool2;
        this.d = str;
    }

    public fh1(EnumMap enumMap, int i, Boolean bool, String str) {
        EnumMap enumMap2 = new EnumMap(lz1.a.class);
        this.e = enumMap2;
        enumMap2.putAll(enumMap);
        this.a = i;
        this.b = k();
        this.c = bool;
        this.d = str;
    }
}
