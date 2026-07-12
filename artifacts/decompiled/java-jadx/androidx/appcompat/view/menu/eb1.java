package androidx.appcompat.view.menu;

import java.util.Map;

/* loaded from: classes.dex */
public final class eb1 implements gg0 {
    public final /* synthetic */ bz0 a;
    public final /* synthetic */ gb1 b;

    public eb1(gb1 gb1Var, bz0 bz0Var) {
        this.b = gb1Var;
        this.a = bz0Var;
    }

    @Override // androidx.appcompat.view.menu.gg0
    public final void a(zy0 zy0Var) {
        Map map;
        map = this.b.b;
        map.remove(this.a);
    }
}
