package androidx.appcompat.view.menu;

import java.util.Map;

/* loaded from: classes.dex */
public final class hw1 implements bb2 {
    public final /* synthetic */ String a;
    public final /* synthetic */ rv1 b;

    public hw1(rv1 rv1Var, String str) {
        this.b = rv1Var;
        this.a = str;
    }

    @Override // androidx.appcompat.view.menu.bb2
    public final String h(String str) {
        Map map;
        map = this.b.d;
        Map map2 = (Map) map.get(this.a);
        if (map2 == null || !map2.containsKey(str)) {
            return null;
        }
        return (String) map2.get(str);
    }
}
