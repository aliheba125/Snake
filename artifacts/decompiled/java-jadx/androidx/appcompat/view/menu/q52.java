package androidx.appcompat.view.menu;

import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class q52 extends s52 {
    public q52(int i) {
        super(i);
    }

    @Override // androidx.appcompat.view.menu.s52
    public final void f() {
        if (!o()) {
            if (g() > 0) {
                jy0.a(h(0).getKey());
                throw null;
            }
            Iterator it = j().iterator();
            if (it.hasNext()) {
                jy0.a(((Map.Entry) it.next()).getKey());
                throw null;
            }
        }
        super.f();
    }
}
