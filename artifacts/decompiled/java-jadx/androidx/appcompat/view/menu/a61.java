package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class a61 {
    public final Map a = new LinkedHashMap();

    public final void a() {
        Iterator it = this.a.values().iterator();
        while (it.hasNext()) {
            ((y51) it.next()).a();
        }
        this.a.clear();
    }

    public final y51 b(String str) {
        z50.e(str, "key");
        return (y51) this.a.get(str);
    }

    public final void c(String str, y51 y51Var) {
        z50.e(str, "key");
        z50.e(y51Var, "viewModel");
        y51 y51Var2 = (y51) this.a.put(str, y51Var);
        if (y51Var2 != null) {
            y51Var2.c();
        }
    }
}
