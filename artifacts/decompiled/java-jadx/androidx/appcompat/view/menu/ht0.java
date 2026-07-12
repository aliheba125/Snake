package androidx.appcompat.view.menu;

import java.util.Set;

/* loaded from: classes.dex */
public abstract class ht0 extends gt0 {
    public static Set b() {
        return ho.m;
    }

    public static final Set c(Set set) {
        Set b;
        z50.e(set, "<this>");
        int size = set.size();
        if (size != 0) {
            return size != 1 ? set : gt0.a(set.iterator().next());
        }
        b = b();
        return b;
    }
}
