package androidx.appcompat.view.menu;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class bb0 extends ab0 {
    public static int a(int i) {
        if (i < 0) {
            return i;
        }
        if (i < 3) {
            return i + 1;
        }
        if (i < 1073741824) {
            return (int) ((i / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static final Map b(lh0 lh0Var) {
        z50.e(lh0Var, "pair");
        Map singletonMap = Collections.singletonMap(lh0Var.c(), lh0Var.d());
        z50.d(singletonMap, "singletonMap(pair.first, pair.second)");
        return singletonMap;
    }

    public static final Map c(Map map) {
        z50.e(map, "<this>");
        Map.Entry entry = (Map.Entry) map.entrySet().iterator().next();
        Map singletonMap = Collections.singletonMap(entry.getKey(), entry.getValue());
        z50.d(singletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return singletonMap;
    }
}
