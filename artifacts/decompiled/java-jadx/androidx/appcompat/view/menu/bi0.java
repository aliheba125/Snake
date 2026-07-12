package androidx.appcompat.view.menu;

import java.util.LinkedHashSet;

/* loaded from: classes.dex */
public abstract class bi0 extends av {
    public final LinkedHashSet b0 = new LinkedHashSet();

    public boolean f1(lg0 lg0Var) {
        return this.b0.add(lg0Var);
    }

    public void g1() {
        this.b0.clear();
    }
}
