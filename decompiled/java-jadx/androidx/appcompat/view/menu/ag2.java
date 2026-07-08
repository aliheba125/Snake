package androidx.appcompat.view.menu;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class ag2 extends gg1 {
    public final c52 o;
    public final Map p;

    public ag2(c52 c52Var) {
        super("require");
        this.p = new HashMap();
        this.o = c52Var;
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        iu1.g("require", 1, list);
        String g = pw1Var.b((qg1) list.get(0)).g();
        if (this.p.containsKey(g)) {
            return (qg1) this.p.get(g);
        }
        qg1 a = this.o.a(g);
        if (a instanceof gg1) {
            this.p.put(g, (gg1) a);
        }
        return a;
    }
}
