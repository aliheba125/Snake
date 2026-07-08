package androidx.appcompat.view.menu;

import java.util.List;

/* loaded from: classes.dex */
public final class ke2 extends gg1 {
    public final hf2 o;

    public ke2(hf2 hf2Var) {
        super("internal.logger");
        this.o = hf2Var;
        this.n.put("log", new bf2(this, false, true));
        this.n.put("silent", new pd2(this, "silent"));
        ((gg1) this.n.get("silent")).n("log", new bf2(this, true, true));
        this.n.put("unmonitored", new ve2(this, "unmonitored"));
        ((gg1) this.n.get("unmonitored")).n("log", new bf2(this, false, false));
    }

    @Override // androidx.appcompat.view.menu.gg1
    public final qg1 a(pw1 pw1Var, List list) {
        return qg1.e;
    }
}
