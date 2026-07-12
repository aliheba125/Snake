package androidx.appcompat.view.menu;

import androidx.appcompat.view.menu.lz1;
import java.util.EnumMap;

/* loaded from: classes.dex */
public final class dg1 {
    public final EnumMap a;

    public dg1() {
        this.a = new EnumMap(lz1.a.class);
    }

    public static dg1 b(String str) {
        EnumMap enumMap = new EnumMap(lz1.a.class);
        if (str.length() >= lz1.a.values().length) {
            int i = 0;
            if (str.charAt(0) == '1') {
                lz1.a[] values = lz1.a.values();
                int length = values.length;
                int i2 = 1;
                while (i < length) {
                    enumMap.put((EnumMap) values[i], (lz1.a) bg1.e(str.charAt(i2)));
                    i++;
                    i2++;
                }
                return new dg1(enumMap);
            }
        }
        return new dg1();
    }

    public final bg1 a(lz1.a aVar) {
        bg1 bg1Var = (bg1) this.a.get(aVar);
        return bg1Var == null ? bg1.UNSET : bg1Var;
    }

    public final void c(lz1.a aVar, int i) {
        bg1 bg1Var = bg1.UNSET;
        if (i != -20) {
            if (i == -10) {
                bg1Var = bg1.MANIFEST;
            } else if (i != 0) {
                if (i == 30) {
                    bg1Var = bg1.INITIALIZATION;
                }
            }
            this.a.put((EnumMap) aVar, (lz1.a) bg1Var);
        }
        bg1Var = bg1.API;
        this.a.put((EnumMap) aVar, (lz1.a) bg1Var);
    }

    public final void d(lz1.a aVar, bg1 bg1Var) {
        this.a.put((EnumMap) aVar, (lz1.a) bg1Var);
    }

    public final String toString() {
        char c;
        StringBuilder sb = new StringBuilder("1");
        for (lz1.a aVar : lz1.a.values()) {
            bg1 bg1Var = (bg1) this.a.get(aVar);
            if (bg1Var == null) {
                bg1Var = bg1.UNSET;
            }
            c = bg1Var.m;
            sb.append(c);
        }
        return sb.toString();
    }

    public dg1(EnumMap enumMap) {
        EnumMap enumMap2 = new EnumMap(lz1.a.class);
        this.a = enumMap2;
        enumMap2.putAll(enumMap);
    }
}
